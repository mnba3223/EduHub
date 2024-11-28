// lib/data/repositories/course/course_repository.dart
import 'package:dio/dio.dart';
import 'package:edutec_hub/data/models/common/course.dart';
import 'package:edutec_hub/data/network/apis/course/course_api.dart';

import 'package:edutec_hub/data/network/core/dio_client.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';

abstract class CourseRepository {
  Future<List<Course>> getCourses();
  Future<Course> getCourseById(int courseId);
}

class CourseRepositoryImpl implements CourseRepository {
  final CourseApi _api;
  final bool useMock;

  CourseRepositoryImpl({
    CourseApi? api,
    this.useMock = false,
  }) : _api = api ?? CourseApi(DioClient().dio);

  @override
  Future<List<Course>> getCourses() async {
    if (useMock) {
      return _getMockCourses();
    }

    try {
      final response = await _api.getCourses();
      if (response.success) {
        return response.data!;
      } else {
        throw ApiException(
          response.message,
          errorCode: response.code.toString(),
          errorDetails: response.data,
        );
      }
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  @override
  Future<Course> getCourseById(int courseId) async {
    if (useMock) {
      return _getMockCourses().then((value) => value.first);
    }

    try {
      final response = await _api.getCourseById(courseId);
      if (response.success) {
        return response.data!;
      } else {
        throw ApiException(
          response.message,
          errorCode: response.code.toString(),
          errorDetails: response.data,
        );
      }
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  Future<List<Course>> _getMockCourses() async {
    await Future.delayed(const Duration(milliseconds: 800));
    return [
      const Course(
          courseId: 1,
          courseName: "初階日語",
          subjectId: 1,
          courseDescription: "初階日語課程",
          courseColor: "#FF0000",
          courseCategory: "語言",
          courseImage: "http://example.com/image.jpg",
          courseType: "GROUP",
          subjectName: "基礎日語發音",
          subjectDescription: "基礎發音課程",
          sort: 1),
      // 可以添加更多模擬數據
    ];
  }
}
