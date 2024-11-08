import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:edutec_hub/data/models/api_model/api_models.dart';
import 'package:edutec_hub/data/models/api_model/api_response.dart';
import 'package:edutec_hub/data/models/auth/auth_data.dart';
import 'package:edutec_hub/data/models/parent/parent.dart';
import 'package:edutec_hub/data/models/student/student.dart';
import 'package:edutec_hub/data/network/apis/auth_api.dart';

import 'package:edutec_hub/data/network/core/dio_client.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';
import 'package:edutec_hub/data/network/core/token_manager.dart';

import 'package:edutec_hub/utils/hiveBoxKeys.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:hive/hive.dart';

class AuthRepository {
  static const String _basicAuthToken = 'Basic YWRtaW46UEBzc3cwcmQ=';
  // final AuthApi api;
  final api = AuthApi(DioClient().dio);
  final bool useMock; // 添加模擬開關

  AuthRepository({this.useMock = false});
  //LocalDataSource
  bool getIsLogIn() {
    return Hive.box(authBoxKey).get(isLogInKey) ?? false;
  }

  Future<void> setIsLogIn(bool value) async {
    return Hive.box(authBoxKey).put(isLogInKey, value);
  }

  bool getIsStudentLogIn() {
    return Hive.box(authBoxKey).get(isStudentLogInKey) ?? false;
  }

  Future<void> setIsStudentLogIn(bool value) async {
    return Hive.box(authBoxKey).put(isStudentLogInKey, value);
  }

  Student getStudentDetails() {
    return Student.fromJson(
      Map.from(Hive.box(authBoxKey).get(studentDetailsKey) ?? {}),
    );
  }

  Future<void> setStudentDetails(Student student) async {
    return Hive.box(authBoxKey).put(studentDetailsKey, student.toJson());
  }

  Parent getParentDetails() {
    return Parent.fromJson(
      Map.from(Hive.box(authBoxKey).get(parentDetailsKey) ?? {}),
    );
  }

  Future<void> setParentDetails(Parent parent) async {
    return Hive.box(authBoxKey).put(parentDetailsKey, parent.toJson());
  }

  String getJwtToken() {
    return Hive.box(authBoxKey).get(jwtTokenKey) ?? "";
  }

  Future<void> setJwtToken(String value) async {
    return Hive.box(authBoxKey).put(jwtTokenKey, value);
  }

  Future<void> signOutUser() async {}
  ApiResponse<AuthData> _getMockAuthResponse(String userId) {
    return ApiResponse(
      code: 0,
      success: true,
      message: "Login successful",
      data: AuthData(
        avatar: "https://avatars.githubusercontent.com/u/44761321",
        username: userId,
        nickname: "測試用戶",
        roles: ["student"],
        permissions: ["*:*:*"],
        accessToken:
            "mock_access_token_${DateTime.now().millisecondsSinceEpoch}",
        refreshToken:
            "mock_refresh_token_${DateTime.now().millisecondsSinceEpoch}",
        expires: DateTime.now().add(const Duration(hours: 1)),
        refreshTokenExpires: DateTime.now().add(const Duration(hours: 2)),
        userId: 1001,
        userid: 1,
      ),
    );
  }

  // 更新登入方法
  Future<ApiResponse<AuthData>> signInNormal({
    required String userId,
    required String password,
  }) async {
    if (useMock) {
      await Future.delayed(const Duration(milliseconds: 500)); // 模擬網絡延遲
      final mockResponse = _getMockAuthResponse(userId);

      // 模擬密碼檢查
      if (password.isEmpty) {
        throw ApiException(
          "密碼不能為空",
          errorCode: "400",
        );
      }

      // 保存令牌
      if (mockResponse.data != null) {
        await Future.wait([
          TokenManager.saveToken(mockResponse.data!.accessToken),
          TokenManager.saveRefreshToken(mockResponse.data!.refreshToken),
        ]);
      }

      return mockResponse;
    }

    try {
      log('Starting login attempt for user: $userId');
      final fcmToken = await FirebaseMessaging.instance.getToken();
      log('FCM Token: $fcmToken');

      final response = await api.login(
        _basicAuthToken, // 注意這裡的改變
        LoginRequest(
          name: userId,
          password: password,
          fcmToken: fcmToken,
        ),
      );

      // 檢查是否成功
      if (!response.success) {
        throw ApiException(
          response.message,
          errorCode: response.code.toString(),
        );
      }

      // 保存令牌
      if (response.data != null) {
        await Future.wait([
          TokenManager.saveToken(response.data!.accessToken),
          TokenManager.saveRefreshToken(response.data!.refreshToken),
          // setIsLogIn(true),
          // setJwtToken(response.data!.accessToken),
        ]);
      }

      return response;
    } on DioException catch (e) {
      throw e.toApiException();
    } catch (e) {
      throw ApiException(e.toString());
    }
  }

  Future<LoginResponse> signInNormalDirect({
    required String userId,
    required String password,
  }) async {
    try {
      final dio = Dio(BaseOptions(
          baseUrl: 'http://10.0.2.2:5240',
          connectTimeout: const Duration(seconds: 5),
          receiveTimeout: const Duration(seconds: 5),
          contentType: Headers.jsonContentType,
          responseType: ResponseType.json,
          headers: {}));

      log('Attempting login...');
      final response = await dio.post<Map<String, dynamic>>(
        '/api/Login',
        data: {
          'name': userId,
          'password': password,
        },
      );

      log('Response: ${response.data}');

      final loginResponse = LoginResponse.fromJson(response.data!);
      await TokenManager.saveToken(loginResponse.token);
      return loginResponse;
    } catch (e) {
      log('Login error: $e');
      rethrow;
    }
  }

  Future<Map<String, dynamic>> signInTeacher({
    required String teacherId,
    required String password,
  }) async {
    return {};
  }

  //RemoteDataSource
  Future<Map<String, dynamic>> signInStudent({
    required String grNumber,
    required String password,
  }) async {
    return {};
  }

  Future<Map<String, dynamic>> signInParent({
    required String email,
    required String password,
  }) async {
    return {};
  }

  Future<void> resetPasswordRequest({
    required String grNumber,
    required DateTime dob,
  }) async {}

  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
    required String newConfirmedPassword,
  }) async {}

  Future<void> forgotPassword({required String email}) async {}
}
