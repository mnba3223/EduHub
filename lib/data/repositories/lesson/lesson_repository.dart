// lib/data/repositories/lesson/lesson_repository.dart
import 'package:dio/dio.dart';
import 'package:edutec_hub/data/models/common/lesson.dart';
import 'package:edutec_hub/data/network/apis/lesson/lesson_api.dart';

import 'package:edutec_hub/data/network/core/dio_client.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';
import 'package:edutec_hub/config/user_session.dart';

abstract class LessonRepository {
  Future<List<Lesson>> getLessons({
    DateTime? startDate,
    DateTime? endDate,
    String? startTime,
    String? endTime,
  });
}

class LessonRepositoryImpl implements LessonRepository {
  final LessonApi _api;
  final bool useMock;

  LessonRepositoryImpl({
    LessonApi? api,
    this.useMock = false,
  }) : _api = api ?? LessonApi(DioClient().dio);

  int? get _teacherId => UserSession.instance.roleId;

  @override
  Future<List<Lesson>> getLessons({
    DateTime? startDate,
    DateTime? endDate,
    String? startTime,
    String? endTime,
  }) async {
    if (useMock) {
      return _getMockLessons();
    }

    try {
      final response = await _api.getLessons(
        teacherId: _teacherId,
        startDate: startDate?.toIso8601String(),
        endDate: endDate?.toIso8601String(),
        startTime: startTime,
        endTime: endTime,
      );

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

  Future<List<Lesson>> _getMockLessons() async {
    await Future.delayed(const Duration(milliseconds: 800));
    return [
      // Lesson(
      //   lessonId: 1,
      //   lessonTitle: "初階日語會話",
      //   lessonDescription: "基礎對話練習",
      //   teacherId: 4,
      //   classroomId: 1,
      //   courseId: 4,
      //   lessonDate: DateTime.now(),
      //   startTime: "10:00:00",
      //   endTime: "12:00:00",
      //   teacherName: "王老師",
      //   courseName: "初階日語",
      //   subjectName: "會話練習",
      //   classroomName: "A101",
      // ),
    ];
  }
}
