// lib/network/api_config.dart
import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
// import 'package:dio/dio.dart' as  dio;
import 'package:edutec_hub/config/environment.dart';
import 'package:edutec_hub/data/models/Announcement.dart';
import 'package:edutec_hub/data/models/api_models.dart';
import 'package:edutec_hub/utils/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/retrofit.dart' hide Headers;
import 'package:shared_preferences/shared_preferences.dart';

part 'api_service.g.dart';

class ApiConfig {
  static const Duration connectTimeout = Duration(seconds: 10);
  static const Duration receiveTimeout = Duration(seconds: 10);

  static const String baseUrl = LunchEnvironment.baseUrl;
  static const String apiUrl = '$baseUrl/api/';
  static const String databaseUrl = '$baseUrl/database/';
}

class AuthConfig {
  static final List<String> publicPaths = [
    '/api/Login',
    '/login',
    '/api/School', // 加入不需要認證的路徑
    // 可以繼續添加其他不需要認證的路徑
  ];

  static bool isPublicPath(String path) {
    return publicPaths.any((publicPath) => path.endsWith(publicPath));
  }
}

// API 異常處理
class ApiException implements Exception {
  final String message;
  final String? errorCode;
  final dynamic errorDetails;

  ApiException(
    this.message, {
    this.errorCode,
    this.errorDetails,
  });

  @override
  String toString() =>
      ' $message${errorCode != null ? ' (Code: $errorCode)' : ''}';
}

extension DioErrorHandler on DioException {
  ApiException toApiException() {
    if (kDebugMode) {
      log("$error");
      log("${response}}");
    }
    final responseData = response?.data;
    final message = responseData is Map ? responseData['message'] : '未知錯誤';
    return ApiException(message);
  }
}

// Token 管理
class TokenManager {
  static const String _tokenKey = 'jwt_token';
  static const String _refreshTokenKey = 'refresh_token';

  static Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_tokenKey, token);
  }

  static Future<void> saveRefreshToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_refreshTokenKey, token);
  }

  static Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_tokenKey);
  }

  static Future<String?> getRefreshToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_refreshTokenKey);
  }

  static Future<void> clearToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_tokenKey);
  }

  static Future<void> clearRefreshToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_refreshTokenKey);
  }
}

// Dio 客戶端
class DioClient {
  static final DioClient _instance = DioClient._internal();
  factory DioClient() => _instance;

  late final Dio _dio;
  late final AuthInterceptor _authInterceptor;

  DioClient._internal() {
    _dio = Dio(BaseOptions(
      baseUrl: ApiConfig.baseUrl,
      connectTimeout: ApiConfig.connectTimeout,
      receiveTimeout: ApiConfig.receiveTimeout,
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
      // validateStatus: (status) {
      //   return status != null && status < 500; // 添加状态码验证
      // },
    ));

    _authInterceptor = AuthInterceptor(_dio);
    _initializeInterceptors();
  }

  void _initializeInterceptors() {
    _dio.interceptors.addAll([
      _authInterceptor,
      ErrorInterceptor(),
      if (kDebugMode)
        LogInterceptor(
          request: true,
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          responseBody: true,
          error: true,
        ),
    ]);
  }

  Dio get dio => _dio;
}

// 認證攔截器
class AuthInterceptor extends QueuedInterceptor {
  final Dio dio;
  String? _accessToken;
  bool _isRefreshing = false;
  final _queue = <Map<String, dynamic>>[];

  AuthInterceptor(this.dio);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    bool isPublicPath = AuthConfig.isPublicPath(options.path);

    // 設置通用 headers
    options.headers['Content-Type'] = 'application/json';
    if (!isPublicPath) {
      if (_accessToken == null) {
        _accessToken = await TokenManager.getToken();
      }

      if (_accessToken != null) {
        options.headers['Authorization'] = 'Bearer $_accessToken';
      }
    } else {
      // 確保公開路徑不帶 Authorization header
      options.headers.remove('Authorization');
    }
    // options.headers['Accept'] = 'application/json';
    options.headers['Content-Type'] = 'application/json';
    return handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401) {
      final options = err.requestOptions;

      if (_isRefreshing) {
        await _enqueueRequest(options, handler);
        return;
      }

      _isRefreshing = true;

      try {
        final newToken = await _refreshToken();
        if (newToken != null) {
          await TokenManager.saveToken(newToken);
          _accessToken = newToken;

          final response = await _retry(options);
          handler.resolve(response);

          await _processQueue();
        } else {
          await _handleRefreshFailure(handler, err);
        }
      } catch (e) {
        await _handleRefreshFailure(handler, err);
      } finally {
        _isRefreshing = false;
      }
    } else {
      return handler.next(err);
    }
  }

  Future<void> _enqueueRequest(
    RequestOptions options,
    ErrorInterceptorHandler handler,
  ) {
    final completer = Completer<void>();

    _queue.add({
      'options': options,
      'handler': handler,
      'completer': completer,
    });

    return completer.future;
  }

  Future<void> _processQueue() async {
    for (final request in _queue) {
      try {
        final response = await _retry(request['options'] as RequestOptions);
        (request['handler'] as ErrorInterceptorHandler).resolve(response);
      } catch (e) {
        (request['handler'] as ErrorInterceptorHandler).reject(
          DioException(
            requestOptions: request['options'] as RequestOptions,
            error: e,
          ),
        );
      } finally {
        (request['completer'] as Completer).complete();
      }
    }
    _queue.clear();
  }

  Future<Response<dynamic>> _retry(RequestOptions options) async {
    final clonedRequest = await dio.request(
      options.path,
      data: options.data,
      queryParameters: options.queryParameters,
      options: Options(
        method: options.method,
        headers: {
          ...options.headers,
          'Authorization': 'Bearer $_accessToken',
        },
      ),
    );

    return clonedRequest;
  }

  Future<String?> _refreshToken() async {
    try {
      final refreshToken = await TokenManager.getRefreshToken();
      if (refreshToken == null) return null;

      final response = await dio.post(
        '/refresh-token',
        data: {'refresh_token': refreshToken},
      );

      return response.data['token'];
    } catch (e) {
      return null;
    }
  }

  Future<void> _handleRefreshFailure(
    ErrorInterceptorHandler handler,
    DioException originalError,
  ) async {
    await TokenManager.clearToken();
    await TokenManager.clearRefreshToken();
    _accessToken = null;

    for (final request in _queue) {
      (request['handler'] as ErrorInterceptorHandler).reject(originalError);
      (request['completer'] as Completer).complete();
    }
    _queue.clear();

    handler.reject(originalError);
  }
}

// 錯誤攔截器
class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // 開發時看到完整錯誤信息
    if (kDebugMode) {
      log("=== API Error Details ===");
      log("URL: ${err.requestOptions.uri}");
      log("Method: ${err.requestOptions.method}");
      log("Headers: ${err.requestOptions.headers}");
      log("Error Type: ${err.type}");
      log("Status Code: ${err.response?.statusCode}");
      log("Response Data: ${err.response?.data}");
      log("Error Message: ${err.message}");
      log("=====================");
    }

    // 從回應中取得 message
    final responseData = err.response?.data;
    String errorMessage;
    try {
      final responseData = err.response?.data;
      if (responseData != null && responseData is Map) {
        errorMessage = responseData['message'] ?? '未知錯誤';
      } else if (err.type == DioExceptionType.connectionTimeout) {
        errorMessage = '連接超時';
      } else if (err.type == DioExceptionType.connectionError) {
        errorMessage = '無法連接到伺服器';
      } else {
        errorMessage = '發生錯誤: ${err.message}';
      }
    } catch (e) {
      errorMessage = '處理錯誤時發生異常';
    }

    // 用 reject 直接拋出新的 DioException
    handler.next(DioException(
      requestOptions: err.requestOptions,
      error: ApiException(errorMessage),
      type: err.type,
      response: err.response,
    ));
  }
}

// API 定義
@RestApi()
abstract class StudentApi {
  factory StudentApi(Dio dio, {String baseUrl}) = _StudentApi;

  @POST('/api/Login')
  Future<LoginResponse> login(@Body() LoginRequest request);

  // @GET('/student/get-profile-data')
  // Future<BaseResponse<ProfileData>> getProfile();

  // @GET('/student/subjects')
  // Future<BaseResponse<List<Subject>>> getSubjects();

  // @GET('/student/dashboard')
  // Future<BaseResponse<Dashboard>> getDashboard();

  // @GET('/student/timetable')
  // Future<BaseResponse<Timetable>> getTimetable();

  // @GET('/student/get-exam-list')
  // Future<BaseResponse<List<Exam>>> getExamList();

  // @POST('/student/submit-assignment')
  // @MultiPart()
  // Future<BaseResponse<void>> submitAssignment({
  //   @Part() required String assignmentId,
  //   @Part() required File file,
  //   @Part() String? description,
  // });

  // @GET('/student/lessons')
  // Future<BaseResponse<List<Lesson>>> getLessons(
  //     @Query('subject_id') String subjectId);
}

@RestApi()
abstract class ParentApi {
  factory ParentApi(Dio dio, {String baseUrl}) = _ParentApi;

  @POST('/parent/login')
  Future<BaseResponse<LoginResponse>> login(@Body() LoginRequest request);

  @GET('/parent/get-profile-data')
  Future<BaseResponse<ProfileData>> getProfile();
}

// Repository 實現
class StudentRepository {
  final StudentApi _api;

  StudentRepository() : _api = StudentApi(DioClient().dio);

  Future<LoginResponse> login(String email, String password) async {
    try {
      final response = await _api.login(LoginRequest(
        name: email,
        password: password,
      ));

      // if (response.error) {
      //   throw ApiException(
      //     response.message,
      //     errorCode: response.errorCode,
      //   );
      // }

      await TokenManager.saveToken(response.token);
      return response;
    } on DioException catch (e) {
      throw e.error as ApiException;
    }
  }

  // Future<ProfileData> getProfile() async {
  //   try {
  //     final response = await _api.getProfile();

  //     if (response.error) {
  //       throw ApiException(
  //         response.message,
  //         errorCode: response.errorCode,
  //       );
  //     }

  //     return response.data!;
  //   } on DioException catch (e) {
  //     throw e.error as ApiException;
  //   }
  // }
}

class DownloadRepository {
  final Dio _dio;

  DownloadRepository() : _dio = DioClient().dio;

  Future<void> downloadFile({
    required String url,
    required String savePath,
    required Function(double) onProgress,
    CancelToken? cancelToken,
  }) async {
    try {
      await _dio.download(
        url,
        savePath,
        cancelToken: cancelToken,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            final percentage = (received / total) * 100;
            onProgress(percentage < 0.0 ? 99.0 : percentage);
          }
        },
      );
    } catch (e) {
      throw ApiException(
        'Download failed',
        errorCode: 'DOWNLOAD_ERROR',
      );
    }
  }
}

@RestApi()
abstract class AnnouncementApi {
  factory AnnouncementApi(Dio dio, {String baseUrl}) = _AnnouncementApi;

  @GET('/api/School')
  Future<List<Announcement>> getAnnouncements();

  @GET('/api/School')
  Future<List<Announcement>> searchAnnouncements(
    @Query('keyword') String keyword,
  );
}
