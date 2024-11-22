import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:edutec_hub/data/models/api_model/api_models.dart';
import 'package:edutec_hub/data/models/api_model/api_response.dart';
import 'package:edutec_hub/data/models/auth/auth_data.dart';
import 'package:edutec_hub/data/models/parent/parent.dart';
import 'package:edutec_hub/data/models/student/student.dart';
import 'package:edutec_hub/data/models/user_role.dart';
import 'package:edutec_hub/data/network/apis/auth_api.dart';
import 'package:edutec_hub/data/network/apis/parent_api.dart';
import 'package:edutec_hub/data/network/apis/student_api.dart';
import 'package:edutec_hub/data/network/apis/teacher_api.dart';

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
  final studentApi = StudentApi(DioClient().dio);
  final teacherApi = TeacherApi(DioClient().dio);
  final parentApi = ParentApi(DioClient().dio);

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
  // ApiResponse<AuthData> _getMockAuthResponse(String userId) {
  //   return ApiResponse(
  //     code: 0,
  //     success: true,
  //     message: "Login successful",
  //     data: AuthData(
  //       avatar: "https://avatars.githubusercontent.com/u/44761321",
  //       username: userId,
  //       nickname: "測試用戶",
  //       roles: "student",
  //       permissions: ["*:*:*"],
  //       accessToken:
  //           "mock_access_token_${DateTime.now().millisecondsSinceEpoch}",
  //       refreshToken:
  //           "mock_refresh_token_${DateTime.now().millisecondsSinceEpoch}",
  //       expires: DateTime.now().add(const Duration(hours: 1)),
  //       refreshTokenExpires: DateTime.now().add(const Duration(hours: 2)),
  //       userId: 1001,
  //       // userid: 1,
  //     ),
  //   );
  // }

  Future<ApiResponse<AuthData>> signInNormal({
    required String userId,
    required String password,
  }) async {
    try {
      log('Starting login attempt for user: $userId');

      final fcmToken = await FirebaseMessaging.instance.getToken();
      log('FCM Token: $fcmToken');

      final response = await api.login(
        'Basic ${base64Encode(utf8.encode('$userId:$password'))}',
        LoginRequest(fcmToken: fcmToken),
      );

      if (!response.success) {
        throw ApiException(
          response.message,
          errorCode: response.code.toString(),
        );
      }

      if (response.data != null) {
        log('Saving tokens...');
        // 使用相同的 key 來保存 token
        await Future.wait([
          TokenManager.saveToken(response.data!.accessToken),
          TokenManager.saveRefreshToken(response.data!.refreshToken),
          // 如果需要，也可以保存到 Hive
          // setJwtToken(response.data!.accessToken),
        ]);
        log('Tokens saved successfully');

        // 打印保存的 token 用於調試
        final savedToken = await TokenManager.getToken();
        log('Saved token verified: $savedToken');
      }

      return response;
    } on DioException catch (e) {
      log('DioException: ${e.message}');
      if (e.response?.statusCode == 401) {
        throw ApiException('認證失敗：用戶名或密碼錯誤', errorCode: '401');
      }
      throw e.toApiException();
    } catch (e) {
      log('General Exception: $e');
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

  Future<RoleData> getRoleData({
    required int userId,
    required UserRole role,
  }) async {
    try {
      switch (role) {
        case UserRole.student:
          final response = await studentApi.getStudentByUserId(userId);
          if (!response.success ||
              response.data == null ||
              response.data!.first.studentId == null) {
            throw ApiException('未找到學生資料');
          }
          return RoleData(roleId: response.data!.first.studentId);

        case UserRole.teacher:
          final response = await teacherApi.getTeacherByUserId(userId);
          if (!response.success || response.data == null) {
            throw ApiException('未找到教師資料');
          }
          return RoleData(roleId: response.data!.teacherId);

        case UserRole.parent:
          final response = await parentApi.getParentByUserId(userId);
          if (!response.success || response.data == null) {
            throw ApiException('未找到家長資料');
          }
          return RoleData(roleId: response.data!.id);

        default:
          throw ApiException('不支持的用戶角色');
      }
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }
}
