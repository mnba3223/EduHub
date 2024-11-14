import 'package:dio/dio.dart';
import 'package:edutec_hub/data/models/api_model/api_response.dart';
import 'package:edutec_hub/data/models/teacher/teacher.dart';

import 'package:retrofit/retrofit.dart';
part 'teacher_api.g.dart';

@RestApi()
abstract class TeacherApi {
  factory TeacherApi(Dio dio, {String baseUrl}) = _TeacherApi;

  @GET('/api/Teacher/user/{userId}')
  Future<ApiResponse<Teacher>> getTeacherByUserId(
    @Path('userId') int userId,
  );
}
