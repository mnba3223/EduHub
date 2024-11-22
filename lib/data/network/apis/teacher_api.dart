import 'dart:io';

import 'package:dio/dio.dart' hide Headers;
import 'package:edutec_hub/data/models/api_model/api_response.dart';
import 'package:edutec_hub/data/models/teacher/teacher.dart';
import 'package:edutec_hub/data/models/teacher/teacher_exam.dart';
import 'package:edutec_hub/data/models/teacher/teacher_homework.dart';

import 'package:retrofit/retrofit.dart';
part 'teacher_api.g.dart';

@RestApi()
abstract class TeacherApi {
  factory TeacherApi(Dio dio, {String baseUrl}) = _TeacherApi;

  @GET('/api/Teacher/user/{userId}')
  Future<ApiResponse<Teacher>> getTeacherByUserId(
    @Path('userId') int userId,
  );
  @GET('/api/Homework')
  Future<ApiResponse<List<TeacherHomeworkListItem>>> getTeacherHomeworks(
    @Query('teacherId') int teacherId, {
    @Query('startTime') String? startTime,
    @Query('endTime') String? endTime,
  });

  @GET('/api/Homework/submissions/{homeworkId}')
  Future<ApiResponse<List<TeacherHomeworkSubmission>>> getHomeworkSubmissions(
    @Path('homeworkId') int homeworkId,
  );

  ///考試區塊
  // 獲取考試列表
  @GET('/api/Exam')
  Future<ApiResponse<List<TeacherExam>>> getTeacherExams(
    @Query('teacherId') int teacherId,
  );

  // 創建考試 - 使用 multipart/form-data
  @MultiPart()
  @POST('/api/Exam')
  Future<ApiResponse<TeacherExam>> createExam(
    @Body() FormData formData, // 添加 required
  );

  @MultiPart()
  @PUT('/api/Exam/{examId}')
  Future<ApiResponse<TeacherExam>> updateExam(
    @Path('examId') int examId,
    @Body() FormData formData, // 添加 required
  );
  // 刪除考試
  @DELETE('/api/Exam/{examId}')
  Future<ApiResponse> deleteExam(@Path('examId') int examId);
}
