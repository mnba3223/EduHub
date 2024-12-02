// import 'package:dio/dio.dart';
// import 'package:edutec_hub/utils/api_service.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class StudentCubit extends Cubit<StudentState> {
//   final StudentRepository _repository;
  
//   StudentCubit(this._repository) : super(StudentInitial());

//   // 統一錯誤處理方法
//   Future<void> handleApiCall<T>(Future<T> Function() call) async {
//     try {
//       final result = await call();
//       // 處理成功結果
//       return result;
//     } on DioException catch (e) {
//       if (kDebugMode) {
//         log("$e");
//       }
//       final responseData = e.response?.data;
//       final message = responseData is Map ? responseData['message'] : '未知錯誤';
//       throw ApiException(message);
//     }
//   }

//   Future<void> login(String userId, String password) async {
//     try {
//       final response = await handleApiCall(() => 
//         _repository.signInNormal(userId: userId, password: password)
//       );
//       emit(StudentLoginSuccess(response));
//     } on ApiException catch (e) {
//       emit(StudentLoginFailure(e.message));
//     }
//   }

//   // 其他 API 調用也可以使用相同的錯誤處理
//   Future<void> getProfile() async {
//     try {
//       final response = await handleApiCall(() => 
//         _repository.getProfile()
//       );
//       emit(StudentProfileLoaded(response));
//     } on ApiException catch (e) {
//       emit(StudentProfileError(e.message));
//     }
//   }
// }