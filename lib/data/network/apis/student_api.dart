import 'package:edutec_hub/data/models/student/homework.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../../models/api_models.dart';

part 'student_api.g.dart';

@RestApi()
abstract class StudentApi {
  factory StudentApi(Dio dio, {String baseUrl}) = _StudentApi;

  @POST('/api/Login')
  Future<LoginResponse> login(@Body() LoginRequest request);
  // 作業相關的API
  // 作業相關的API
  @GET('/api/student/homeworks')
  Future<HomeworkListResponse> getHomeworks(
    @Query('page') int page,
    @Query('limit') int limit,
  );

  @GET('/api/student/homeworks/date/{date}')
  Future<HomeworkListResponse> getHomeworksByDate(
    @Path('date') String date,
  );

  @GET('/api/student/homeworks/{id}')
  Future<HomeworkDetailResponse> getHomeworkDetail(
    @Path('id') String id,
  );

  @POST('/api/student/homeworks/{id}/submit')
  Future<void> submitHomework(
    @Path('id') String id,
    @Body() Map<String, dynamic> request,
  );
}
