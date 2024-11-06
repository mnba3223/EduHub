import 'package:edutec_hub/data/models/student/homework.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../../models/api_model/api_models.dart';

part 'student_api.g.dart';

@RestApi()
abstract class StudentApi {
  factory StudentApi(Dio dio, {String baseUrl}) = _StudentApi;

  @POST('/api/Login')
  Future<LoginResponse> login(@Body() LoginRequest request);
  // 作業相關的API

  @GET('/api/HomeWork/submissions/student/{studentId}')
  Future<List<Homework>> getHomeworks(@Path('studentId') String studentId);

  @GET('/api/HomeWork/submissions/student/date/{date}')
  Future<List<Homework>> getHomeworksByDate(
    @Path('studentId') String studentId,
    @Path('date') String date,
  );

  @GET('/api/HomeWork/submissions/{id}')
  Future<List<Homework>> getHomeworkDetail(@Path('id') String id);

  // @POST('/api/HomeWork/submissions/{id}/submit')
  // @MultiPart()
  // Future<void> submitHomework(
  //   @Path('id') String id,
  //   @Part(name: 'content') String content,
  //   @Part(name: 'files') List<MultipartFile> files,
  // );
  // @POST('/api/HomeWork/{homeworkId}/submissions')
  // @MultiPart()
  // Future<void> submitHomework(
  //   @Path('homeworkId') int homeworkId,
  //   @Part(name: 'student_id') int studentId,
  //   @Part(name: 'comment') String comment,
  //   @Part(name: 'status') String status,
  //   @Part(name: 'UploadedFile') List<MultipartFile> files,
  // );

  // 修改為 PUT 請求，並更新路徑
  @PUT('/api/HomeWork/submissions/{submissionId}')
  @MultiPart()
  Future<void> submitHomework(
    @Path('submissionId') int submissionId,
    @Part(name: 'student_id') int studentId,
    @Part(name: 'comment') String comment,
    @Part(name: 'status') String status,
    @Part(name: 'UploadedFile') List<MultipartFile> files,
  );
}
