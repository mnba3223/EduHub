import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:edutec_hub/data/models/api_models.dart';
import 'package:edutec_hub/data/models/parent/parent.dart';
import 'package:edutec_hub/data/models/student/student.dart';
import 'package:edutec_hub/utils/api_service.dart';
import 'package:edutec_hub/utils/hiveBoxKeys.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';

class AuthRepository {
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

  Future<void> signOutUser() async {
    // try {
    //   Api.post(body: {}, url: Api.logout, useAuthToken: true);
    // } catch (e) {
    //   //
    // }
    // setIsLogIn(false);
    // setJwtToken("");
    // setStudentDetails(Student.fromJson({}));
    // setParentDetails(Parent.fromJson({}));
  }

  // Future<Map<String, dynamic>> signInNormal({
  //   required String userId,
  //   required String password,
  // }) async {
  //   // try {
  //   return {};
  //   //   final result = await Api.post(
  //   //     body: {
  //   //       "name": userId,
  //   //       "password": password,
  //   //       // "login_type": "normal",
  //   //     },
  //   //     url: Api.login, // 假设您有一个通用的登录端点
  //   //     useAuthToken: false,
  //   //   );
  //   //   Api.setToken(result['token']);
  //   //   // setIsLogIn(true);
  //   //   // setJwtToken(result['token']);
  //   //   return {
  //   //     "jwtToken": result['token'],
  //   //     "role": result['role'],
  //   //   };
  //   // } catch (e) {
  //   //   throw ApiException(e.toString());
  //   // }
  // }

  Future<LoginResponse> signInNormal({
    required String userId,
    required String password,
  }) async {
    try {
      log('Starting login attempt for user: $userId');
      final dio = DioClient().dio;
      final api = StudentApi(dio);
      final response = await api.login(LoginRequest(
        name: userId,
        password: password,
      ));
      await Future.wait([
        TokenManager.saveToken(response.token),
      ]);
      // // 保存到 Hive
      // await setJwtToken(response.token);
      // await setIsLogIn(true);
      // log(" response ${response}");
      return response;
    } on DioException catch (e) {
      throw e.toApiException();
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
    // try {
    //   final result = await Api.post(
    //     body: {
    //       "teacher_id": teacherId,
    //       "password": password,
    //       "login_type": "teacher",
    //     },
    //     url: Api.teacherLogin, // 假设您有一个教师登录的端点
    //     useAuthToken: false,
    //   );

    //   return {
    //     "jwtToken": result['token'],
    //     "teacher": Teacher.fromJson(result['data']), // 假设您有一个 Teacher.fromJson 构造函数
    //   };
    // } catch (e) {
    //   throw ApiException(e.toString());
    // }
  }

  //RemoteDataSource
  Future<Map<String, dynamic>> signInStudent({
    required String grNumber,
    required String password,
  }) async {
    return {};
    // try {
    //   // final fcmToken = await FirebaseMessaging.instance.getToken();
    //   final body = {
    //     "password": password,
    //     "gr_number": grNumber,
    //     // "fcm_id": fcmToken,
    //     "device_type": Platform.isAndroid ? "android" : "ios",
    //   };

    //   final result = await Api.post(
    //     body: body,
    //     url: Api.studentLogin,
    //     useAuthToken: false,
    //   );

    //   return {
    //     "jwtToken": result['token'],
    //     "student": Student.fromJson(Map.from(result['data']))
    //   };
    // } catch (e) {
    //   if (kDebugMode) {
    //     print(e);
    //   }

    //   throw ApiException(e.toString());
    // }
  }

  Future<Map<String, dynamic>> signInParent({
    required String email,
    required String password,
  }) async {
    return {};
    // try {

    //   // final fcmToken = await FirebaseMessaging.instance.getToken();
    //   final body = {
    //     "password": password,
    //     "email": email,
    //     // "fcm_id": fcmToken,
    //     "device_type": Platform.isAndroid ? "android" : "ios",
    //   };

    //   final result =
    //       await Api.post(body: body, url: Api.parentLogin, useAuthToken: false);

    //   return {
    //     "jwtToken": result['token'],
    //     "parent": Parent.fromJson(Map.from(result['data']))
    //   };
    // } catch (e) {
    //   throw ApiException(e.toString());
    // }
  }

  Future<void> resetPasswordRequest({
    required String grNumber,
    required DateTime dob,
  }) async {
    // try {
    //   final body = {
    //     "gr_no": grNumber,
    //     "dob": DateFormat('yyyy-MM-dd').format(dob)
    //   };
    //   await Api.post(
    //     body: body,
    //     url: Api.requestResetPassword,
    //     useAuthToken: false,
    //   );
    // } catch (e) {
    //   throw ApiException(e.toString());
    // }
  }

  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
    required String newConfirmedPassword,
  }) async {
    // try {
    //   final body = {
    //     "current_password": currentPassword,
    //     "new_password": newPassword,
    //     "new_confirm_password": newConfirmedPassword
    //   };
    //   await Api.post(body: body, url: Api.changePassword, useAuthToken: true);
    // } catch (e) {
    //   throw ApiException(e.toString());
    // }
  }

  Future<void> forgotPassword({required String email}) async {
    // try {
    //   final body = {"email": email};
    //   await Api.post(body: body, url: Api.forgotPassword, useAuthToken: false);
    // } catch (e) {
    //   throw ApiException(e.toString());
    // }
  }

  // Future<Student?> fetchStudentProfile() async {
  //   try {
  //     return Student.fromJson(
  //       await Api.get(url: Api.studentProfile, useAuthToken: true).then(
  //         (value) => value['data'],
  //       ),
  //     );
  //   } catch (e) {
  //     return null;
  //     // throw ApiException(e.toString());
  //   }
  // }

  // Future<Parent?> fetchParentProfile() async {
  //   try {
  //     return Parent.fromJson(
  //       await Api.get(
  //         url: Api.parentProfile,
  //         useAuthToken: true,
  //       ).then((value) => value['data']),
  //     );
  //   } catch (e) {
  //     return null;
  //     // throw ApiException(e.toString());
  //   }
  // }
}
