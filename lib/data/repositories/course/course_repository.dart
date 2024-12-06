import 'package:dio/dio.dart';
import 'package:edutec_hub/data/models/course/course.dart';
import 'package:edutec_hub/data/network/apis/course/course_api.dart';
import 'package:edutec_hub/data/network/core/dio_client.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';

abstract class CourseRepository {
  Future<List<Course>> getAllCourses();
  Future<List<StudentLesson>> getStudentLessons(int studentId);
}

class CourseRepositoryImpl implements CourseRepository {
  final CourseApi _api;
  final bool useMock;

  CourseRepositoryImpl({
    CourseApi? api,
    this.useMock = false,
  }) : _api = api ?? CourseApi(DioClient().dio);

  @override
  Future<List<Course>> getAllCourses() async {
    if (useMock) {
      return _getMockCourses();
    }

    try {
      final response = await _api.getCourses();
      if (response.success) {
        return response.data ?? [];
      } else {
        throw ApiException(
          response.message,
          errorCode: response.code.toString(),
        );
      }
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  @override
  Future<List<StudentLesson>> getStudentLessons(int studentId) async {
    if (useMock) {
      return _getMockStudentLessons();
    }

    try {
      final response = await _api.getStudentLessons(studentId);
      if (response.success) {
        return response.data ?? [];
      } else {
        throw ApiException(
          response.message,
          errorCode: response.code.toString(),
        );
      }
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  Future<List<Course>> _getMockCourses() async {
    await Future.delayed(const Duration(milliseconds: 800));
    return [
      Course(
        courseId: 1,
        courseName: "初階中文",
        courseDescription: "初階中文課程",
        subjectId: 1,
        price: 2000,
        courseColor: "#3BE338",
        courseImage: "path/to/image",
        subjectName: "中文",
      ),
    ];
  }

  Future<List<StudentLesson>> _getMockStudentLessons() async {
    await Future.delayed(const Duration(milliseconds: 800));
    final now = DateTime.now();
    return [
      StudentLesson(
        classId: 1,
        className: "初階中文A班",
        lessonId: 1,
        lessonDate: now,
        startTime: "10:00:00",
        endTime: "12:00:00",
        courseName: "初階中文",
        classroomName: "教室A",
        courseColor: "#3BE338",
        subjectName: "中文",
        courseImage: 'path/to/image',
      ),
    ];
  }
}
