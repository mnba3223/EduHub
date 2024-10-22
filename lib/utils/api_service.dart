// import 'dart:io';

// import 'package:dio/dio.dart';
// import 'package:edutec_hub/utils/constants.dart';
// import 'package:edutec_hub/utils/errorMessageKeysAndCodes.dart';

// import 'package:flutter/foundation.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// // import 'package:hive_flutter/hive_flutter.dart';

// class ApiException implements Exception {
//   String errorMessage;
//   final String? errorCode;
//   final dynamic errorDetails;
//   ApiException(this.errorMessage, {this.errorCode, this.errorDetails});

//   @override
//   // String toString() {
//   //   return errorMessage;
//   // }
//   String toString() {
//     return 'ApiException: $errorMessage${errorCode != null ? ' (Code: $errorCode)' : ''}';
//   }
// }

// // ignore: avoid_classes_with_only_static_members
// class Api {
//   static const String _tokenKey = 'jwt_token';
//   static final Dio _dio = Dio(BaseOptions(
//     baseUrl: baseUrl,
//     // connectTimeout: Duration(seconds: 10),
//     // receiveTimeout: Duration(seconds: 10),
//     contentType: Headers.jsonContentType,
//     responseType: ResponseType.json,
//     followRedirects: true,
//   ));
//   static Future<Map<String, dynamic>> headers() async {
//     final String jwtToken = await getToken() ?? "";
//     if (kDebugMode) {
//       print("token is: $jwtToken");
//     }
//     return {"Authorization": "Bearer $jwtToken"};
//   }

//   static String login = "${apiUrl}Login";
//   //Student app apis
//   //

//   static String studentLogin = "${databaseUrl}student/login";
//   static String studentProfile = "${databaseUrl}student/get-profile-data";
//   static String studentSubjects = "${databaseUrl}student/subjects";
//   static String studentDashboard = "${databaseUrl}student/dashboard";

//   //get subjects of given class
//   static String classSubjects = "${databaseUrl}student/class-subjects";
//   static String studentTimeTable = "${databaseUrl}student/timetable";
//   static String studentExamList = "${databaseUrl}student/get-exam-list";

//   static String studentExamDetails = "${databaseUrl}student/get-exam-details";
//   static String selectStudentElectiveSubjects =
//       "${databaseUrl}student/select-subjects";
//   static String getLessonsOfSubject = "${databaseUrl}student/lessons";
//   static String getstudyMaterialsOfTopic =
//       "${databaseUrl}student/lesson-topics";
//   static String getStudentAttendance = "${databaseUrl}student/attendance";
//   static String getAssignments = "${databaseUrl}student/assignments";
//   static String submitAssignment = "${databaseUrl}student/submit-assignment";
//   static String generalAnnouncements = "${databaseUrl}student/announcements";
//   static String parentDetailsOfStudent = "${databaseUrl}student/parent-details";
//   static String deleteAssignment =
//       "${databaseUrl}student/delete-assignment-submission";

//   static String studentResults = "${databaseUrl}student/exam-marks";
//   static String requestResetPassword = "${databaseUrl}student/forgot-password";

//   static String studentExamOnlineList =
//       "${databaseUrl}student/get-online-exam-list";
//   static String studentExamOnlineQuestions =
//       "${databaseUrl}student/get-online-exam-questions";
//   static String studentSubmitOnlineExamAnswers =
//       "${databaseUrl}student/submit-online-exam-answers";

//   static String studentOnlineExamResultList =
//       "${databaseUrl}student/get-online-exam-result-list";

//   static String studentOnlineExamResult =
//       "${databaseUrl}student/get-online-exam-result";

//   static String studentOnlineExamReport =
//       "${databaseUrl}student/get-online-exam-report";
//   static String studentAssignmentReport =
//       "${databaseUrl}student/get-assignments-report";

//   //
//   //Apis that will be use in both student and parent app
//   //
//   static String getSliders = "${databaseUrl}sliders";
//   static String logout = "${databaseUrl}logout";
//   static String settings = "${databaseUrl}settings";
//   static String holidays = "${databaseUrl}holidays";
//   static String events = "${databaseUrl}get-events-list";
//   static String eventDetails = "${databaseUrl}get-events-details";

//   static String changePassword = "${databaseUrl}change-password";

//   //
//   //Parent app apis
//   //
//   static String subjectsByChildId = "${databaseUrl}parent/subjects";
//   static String parentLogin = "${databaseUrl}parent/login";
//   static String parentProfile = "${databaseUrl}parent/get-profile-data";
//   static String lessonsOfSubjectParent = "${databaseUrl}parent/lessons";
//   static String getstudyMaterialsOfTopicParent =
//       "${databaseUrl}parent/lesson-topics";
//   static String getAssignmentsParent = "${databaseUrl}parent/assignments";
//   static String getStudentAttendanceParent = "${databaseUrl}parent/attendance";
//   static String getStudentTimetableParent = "${databaseUrl}parent/timetable";
//   static String getStudentExamListParent = "${databaseUrl}parent/get-exam-list";
//   static String getStudentResultsParent = "${databaseUrl}parent/exam-marks";
//   static String getStudentExamDetailsParent =
//       "${databaseUrl}parent/get-exam-details";

//   static String generalAnnouncementsParent =
//       "${databaseUrl}parent/announcements";

//   static String getStudentTeachersParent = "${databaseUrl}parent/teachers";
//   static String forgotPassword = "${databaseUrl}forgot-password";

//   static String parentExamOnlineList =
//       "${databaseUrl}parent/get-online-exam-list";
//   static String parentOnlineExamResultList =
//       "${databaseUrl}parent/get-online-exam-result-list";
//   static String parentOnlineExamResult =
//       "${databaseUrl}parent/get-online-exam-result";
//   static String parentOnlineExamReport =
//       "${databaseUrl}parent/get-online-exam-report";
//   static String parentAssignmentReport =
//       "${databaseUrl}parent/get-assignments-report";

//   static String getFeesTransactions =
//       "${databaseUrl}parent/fees-transactions-list";
//   static String verifyStripePayment = "${databaseUrl}parent/get-payment-status";

//   static String getStudentFeesDetailParent =
//       "${databaseUrl}parent/fees-details";
//   static String addFeesTransaction =
//       "${databaseUrl}parent/add-fees-transaction";
//   static String failPaymentTransaction =
//       "${databaseUrl}parent/fail-payment-transaction";
//   static String storeFeesParent = "${databaseUrl}parent/store-fees";

//   static String getPaidFeesListParent = "${databaseUrl}parent/fees-paid-list";
//   static String downloadFeesPaidReceiptParent =
//       "${databaseUrl}parent/fees-paid-receipt-pdf";

//   static String getStudentFeesDetailStudent =
//       "${databaseUrl}student/fees-details";
//   static String addFeesTransactionStudent =
//       "${databaseUrl}student/add-fees-transaction";
//   static String failPaymentTransactionStudent =
//       "${databaseUrl}student/fail-payment-transaction";
//   static String storeFeesStudent = "${databaseUrl}student/store-fees";
//   static String downloadFeesPaidReceiptStudent =
//       "${databaseUrl}student/fees-paid-receipt-pdf";
//   static String getFeesTransactionsStudent =
//       "${databaseUrl}student/fees-transactions-list";
//   static String verifyStripePaymentStudent =
//       "${databaseUrl}student/get-payment-status";
//   static String askParentsToPayFees =
//       "${databaseUrl}student/send-fee-notification";

//   static String getStudentNotifications =
//       "${databaseUrl}student/get-notification";
//   static String getParentNotifications =
//       "${databaseUrl}parent/get-notification";

//   //chat related APIs
//   //student
//   static String getChatUsersStudent = "${databaseUrl}student/get-user-list";
//   static String getChatMessagesStudent =
//       "${databaseUrl}student/get-user-message";
//   static String sendChatMessageStudent = "${databaseUrl}student/send-message";
//   static String readAllMessagesStudent =
//       "${databaseUrl}student/read-all-message";
//   //parent
//   static String getChatUsersParent = "${databaseUrl}parent/get-user-list";
//   static String getChatMessagesParent = "${databaseUrl}parent/get-user-message";
//   static String sendChatMessageParent = "${databaseUrl}parent/send-message";
//   static String readAllMessagesParent = "${databaseUrl}parent/read-all-message";

//   static Future<void> setToken(String token) async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setString(_tokenKey, token);
//   }

//   static Future<void> removeToken() async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.remove(_tokenKey);
//   }

//   static Future<String?> getToken() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getString(_tokenKey);
//   }

//   static Future<Map<String, dynamic>> post({
//     required Map<String, dynamic> body,
//     required String url,
//     required bool useAuthToken,
//     Map<String, dynamic>? queryParameters,
//     CancelToken? cancelToken,
//     Function(int, int)? onSendProgress,
//     Function(int, int)? onReceiveProgress,
//   }) async {
//     try {
//       if (kDebugMode) {
//         print("API Called POST: $url");
//         print("Body Params: $body");
//       }

//       Map<String, dynamic> headers = {'Accept': 'application/json'};
//       if (useAuthToken) {
//         headers.addAll(await _getAuthHeaders());
//       }

//       final response = await _dio.post(
//         url,
//         data: body,
//         queryParameters: queryParameters,
//         cancelToken: cancelToken,
//         onReceiveProgress: onReceiveProgress,
//         onSendProgress: onSendProgress,
//         options: Options(headers: headers),
//       );

//       if (kDebugMode) {
//         print("Response Status Code: ${response.statusCode}");
//         print("Response Headers: ${response.headers}");
//         print("Response Data: ${response.data}");
//       }
//       if (response.data['error'] == true) {
//         throw ApiException(
//           response.data['message'] ?? 'Unknown error',
//           errorCode: response.data['code']?.toString(),
//           errorDetails: response.data,
//         );
//       }

//       return Map<String, dynamic>.from(response.data);
//     } on DioException catch (e) {
//       if (kDebugMode) {
//         print("DioError: ${e.message}");
//         print("DioError Type: ${e.type}");
//         print("DioError Response: ${e.response}");
//       }
//       throw _handleDioError(e);
//     } catch (e) {
//       if (kDebugMode) {
//         print("Unexpected error: $e");
//       }
//       throw ApiException(e.toString());
//     }
//   }

//   static Future<Map<String, String>> _getAuthHeaders() async {
//     final String jwtToken = await getToken() ?? "";
//     return {"Authorization": "Bearer $jwtToken"};
//   }

//   static Future<Map<String, dynamic>> get({
//     required String url,
//     required bool useAuthToken,
//     Map<String, dynamic>? queryParameters,
//   }) async {
//     try {
//       if (kDebugMode) {
//         print("API Called GET: $url with $queryParameters");
//       }

//       final response = await _dio.get(
//         url,
//         queryParameters: queryParameters,
//         options: Options(
//           headers: useAuthToken ? await headers() : null,
//           contentType: Headers.jsonContentType,
//         ),
//       );

//       if (kDebugMode) {
//         print("Response: ${response.data}");
//       }

//       if (response.data['error'] == true) {
//         throw ApiException(response.data['code'].toString());
//       }

//       return Map<String, dynamic>.from(response.data);
//     } on DioException catch (e) {
//       throw _handleDioError(e);
//     } on ApiException catch (e) {
//       throw e;
//     } catch (e) {
//       throw ApiException(ErrorMessageKeysAndCode.defaultErrorMessageKey);
//     }
//   }

//   static Future<void> download({
//     required String url,
//     required CancelToken cancelToken,
//     required String savePath,
//     required Function(double) updateDownloadedPercentage,
//   }) async {
//     try {
//       await _dio.download(
//         url,
//         savePath,
//         cancelToken: cancelToken,
//         options: Options(
//           headers: await headers(),
//           contentType: Headers.jsonContentType,
//         ),
//         onReceiveProgress: (count, total) {
//           if (total != -1) {
//             final double percentage = (count / total) * 100;
//             updateDownloadedPercentage(percentage < 0.0 ? 99.0 : percentage);
//           }
//         },
//       );
//     } on DioException catch (e) {
//       throw _handleDioError(e);
//     } on ApiException catch (e) {
//       throw e;
//     } catch (e) {
//       throw ApiException(ErrorMessageKeysAndCode.defaultErrorMessageKey);
//     }
//   }

//   static ApiException _handleDioError(DioException e) {
//     if (kDebugMode) {
//       print("DioError: ${e.message}");
//       print("DioError Type: ${e.type}");
//       print("DioError Response: ${e.response}");
//     }

//     if (e.response?.statusCode == 503 || e.response?.statusCode == 500) {
//       return ApiException(
//         ErrorMessageKeysAndCode.internetServerErrorCode,
//         errorDetails: e.response?.data,
//       );
//     }
//     if (e.response?.statusCode == 404) {
//       return ApiException(
//         ErrorMessageKeysAndCode.fileNotFoundErrorCode,
//         errorDetails: e.response?.data,
//       );
//     }
//     return ApiException(
//       e.error is SocketException
//           ? ErrorMessageKeysAndCode.noInternetCode
//           : ErrorMessageKeysAndCode.defaultErrorMessageCode,
//       errorDetails: e.response?.data,
//     );
//   }

//   static void _logError(dynamic error) {
//     if (kDebugMode) {
//       print("Error occurred: $error");
//       if (error is ApiException) {
//         print("Error Code: ${error.errorCode}");
//         print("Error Details: ${error.errorDetails}");
//       }
//     }
//   }
// }

// lib/network/api_config.dart
import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
// import 'package:dio/dio.dart' as  dio;
import 'package:edutec_hub/config/environment.dart';
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
    if (!options.path.contains('login')) {
      if (_accessToken == null) {
        _accessToken = await TokenManager.getToken();
      }

      if (_accessToken != null) {
        options.headers['Authorization'] = 'Bearer $_accessToken';
      }
    }

    options.headers['Accept'] = 'application/json';
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
    log("API Error: ${err.response?.data}");
    log("Error URL: ${err.requestOptions.uri}");
    log("Error Type: ${err.type}");
    log("Status Code: ${err.response?.statusCode}");

    // 從回應中取得 message
    final responseData = err.response?.data;
    final message = responseData is Map ? responseData['message'] : '未知錯誤';

    // 用 reject 直接拋出新的 DioException
    handler.reject(DioException(
      requestOptions: err.requestOptions,
      error: ApiException(message), // 確保這裡設置了 ApiException
      type: err.type,
      response: err.response,
    ));
  }
}

// API 定義
@RestApi(baseUrl: apiUrl)
abstract class StudentApi {
  factory StudentApi(Dio dio, {String baseUrl}) = _StudentApi;

  @POST('Login')
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
