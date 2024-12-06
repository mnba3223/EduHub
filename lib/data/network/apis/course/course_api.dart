// lib/data/network/apis/course_api.dart
import 'package:dio/dio.dart';

import 'package:edutec_hub/data/models/course/course.dart';

import 'package:retrofit/retrofit.dart';
import 'package:edutec_hub/data/models/api_model/api_response.dart';

part 'course_api.g.dart';

@RestApi()
abstract class CourseApi {
  factory CourseApi(Dio dio, {String baseUrl}) = _CourseApi;

  @GET('/api/Course')
  Future<ApiResponse<List<Course>>> getCourses();

  @GET('/api/Course/{courseId}')
  Future<ApiResponse<Course>> getCourseById(
    @Path('courseId') int courseId,
  );

  @GET('/api/Lessons/lessonStudents')
  Future<ApiResponse<List<StudentLesson>>> getStudentLessons(
    @Query('studentId') int studentId,
  );
}
