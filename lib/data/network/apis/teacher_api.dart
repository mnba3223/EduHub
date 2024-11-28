import 'dart:io';

import 'package:dio/dio.dart' hide Headers;
import 'package:edutec_hub/data/models/api_model/api_response.dart';
import 'package:edutec_hub/data/models/common/lesson.dart';
import 'package:edutec_hub/data/models/teacher/teacher.dart';
import 'package:edutec_hub/data/models/teacher/teacher_contact_book_model.dart';
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
    @Query('teacherId') int teacherId, {
    @Query('startTime') String? startTime,
    @Query('endTime') String? endTime,
  });

  @MultiPart()
  @POST('/api/Exam')
  Future<ApiResponse<TeacherExam>> createExam({
    @Part(name: 'lesson_id') required String lessonId,
    @Part(name: 'exam_name') required String examName,
    @Part(name: 'exam_description') required String examDescription,
    @Part(name: 'exam_date') required String examDate,
    @Part(name: 'UploadedFile') File? uploadedFile,
  });

  @MultiPart()
  @PUT('/api/Exam/{examId}')
  Future<ApiResponse<TeacherExam>> updateExam(
    @Path('examId') int examId, {
    @Part(name: 'exam_name') required String examName,
    @Part(name: 'exam_description') required String examDescription,
    @Part(name: 'exam_date') required String examDate,
    @Part(name: 'UploadedFile') File? uploadedFile,
  });
  // 刪除考試
  @DELETE('/api/Exam/{examId}')
  Future<ApiResponse> deleteExam(@Path('examId') int examId);

  @GET('/api/Exam/registrations/{examId}')
  Future<ApiResponse<List<TeacherExamRegistration>>> getExamRegistrations(
    @Path('examId') int examId,
  );

  @MultiPart()
  @PUT('/api/Exam/registrations/teacher/{registrationId}')
  Future<ApiResponse> gradeExam(
    @Path('registrationId') int registrationId,
    @Part(name: 'score') int score,
  );

  @MultiPart()
  @PUT('/api/Homework/submissions/teacher/{submissionId}')
  Future<ApiResponse> gradeSubmission(
    @Headers({
      'Content-Type': 'multipart/form-data',
      'Accept': '*/*',
    })
    @Path('submissionId')
    int submissionId,
    @Part() String? comment,
    @Part() int? rating,
    @Part() String? status,
  );

  @GET('/api/Lessons')
  Future<ApiResponse<List<Lesson>>> getTeacherLessons(
    @Query('teacherId') int teacherId,
  );
  // 獲取課程學生列表
  @GET('/api/Lessons/lessonGetStudent')
  Future<ApiResponse<List<LessonStudent>>> getLessonStudents(
    @Query('lessonId') int lessonId,
  );
  @MultiPart()
  @POST('/api/Homework')
  Future<ApiResponse> createHomework({
    @Part(name: 'lesson_id') required int lessonId,
    @Part(name: 'homework_description') required String homeworkDescription,
    @Part(name: 'homework_start_time') String? homeworkStartTime,
    @Part(name: 'homework_end_time') String? homeworkEndTime,
    @Part(name: 'UploadedFile') File? uploadedFile,
  });

  // 獲取聯絡簿列表
  @GET('/api/ContactBook')
  Future<ApiResponse<List<TeacherContactBook>>> getContactBooks({
    @Query('startDate') String? startDate,
    @Query('endDate') String? endDate,
    @Query('studentId') int? studentId,
    @Query('teacherId') int? teacherId,
    @Query('lessonId') int? lessonId,
  });

  // 創建新的聯絡簿
  @POST('/api/ContactBook')
  Future<ApiResponse<TeacherContactBook>> createContactBook(
    @Body() Map<String, dynamic> data,
  );
  // 修改現有的聯絡簿方法
  @PUT('/api/ContactBook/{contactBookId}')
  Future<ApiResponse<TeacherContactBook>> updateContactBook(
    @Path('contactBookId') int contactBookId,
    @Body() Map<String, String> data,
  );

  // 新增聯絡簿訊息的新方法
  @MultiPart()
  @POST('/api/ContactBook/message')
  Future<ApiResponse<TeacherContactBookMessage>> addContactBookMessage({
    @Part(name: 'contact_book_id') required int contactBookId,
    @Part(name: 'message_text') required String messageText,
    @Part(name: 'UploadFile') File? uploadFile,
  });
}
