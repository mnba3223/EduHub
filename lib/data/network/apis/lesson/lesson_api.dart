// lib/data/network/apis/lesson_api.dart
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:edutec_hub/data/models/api_model/api_response.dart';
import 'package:edutec_hub/data/models/common/lesson.dart';

part 'lesson_api.g.dart';

@RestApi()
abstract class LessonApi {
  factory LessonApi(Dio dio, {String baseUrl}) = _LessonApi;

  @GET('/api/Lessons')
  Future<ApiResponse<List<Lesson>>> getLessons({
    @Query('teacherId') int? teacherId,
    @Query('startDate') String? startDate,
    @Query('endDate') String? endDate,
    @Query('startTime') String? startTime,
    @Query('endTime') String? endTime,
  });
}
