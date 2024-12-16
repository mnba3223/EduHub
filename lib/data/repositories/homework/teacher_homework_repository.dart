import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:edutec_hub/config/user_session.dart';
import 'package:edutec_hub/data/models/common/lesson.dart';
import 'package:edutec_hub/data/models/teacher/teacher_homework.dart';
import 'package:edutec_hub/data/network/apis/teacher_api.dart';
import 'package:edutec_hub/data/network/core/dio_client.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';
import 'package:edutec_hub/state_management/cubit/signInCubit.dart';

abstract class TeacherHomeworkRepository {
  Future<List<TeacherHomeworkListItem>> getTeacherHomeworks();
  Future<List<TeacherHomeworkSubmission>> getTeacherHomeworkDetail(
      int homeworkId);

  // downloadFile(String fileUrl, String filePath, {required Null Function(dynamic progress) onProgress}) {}
  Future<void> downloadFile(
    String url,
    String savePath, {
    void Function(double progress)? onProgress,
  });

  Future<void> gradeSubmission({
    required int submissionId,
    required int grade,
    String? comment,
  });
  // 新增方法
  Future<List<Lesson>> getTeacherLessons();
  Future<void> createHomework({
    required int lessonId,
    required String description,
    required DateTime startTime,
    required DateTime endTime,
    File? file,
  });
}

class TeacherHomeworkRepositoryImpl implements TeacherHomeworkRepository {
  final TeacherApi _api;
  // final SignInCubit _signInCubit;
  final bool useMock;
  final Dio _dio;
  List<TeacherHomeworkListItem>? _cachedHomeworks;

  TeacherHomeworkRepositoryImpl({
    TeacherApi? api,
    // required SignInCubit signInCubit,
    this.useMock = false,
  })  : _api = api ?? TeacherApi(DioClient().dio),
        _dio = Dio();

  int get _teacherId {
    final roleId = UserSession.instance.roleId;
    if (roleId == null) {
      throw ApiException('User not logged in');
    }
    return roleId;
  }

  @override
  Future<List<TeacherHomeworkListItem>> getTeacherHomeworks() async {
    if (useMock) {
      return _getMockHomeworks();
    }

    try {
      final response = await _api.getTeacherHomeworks(_teacherId);
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
  Future<List<TeacherHomeworkSubmission>> getTeacherHomeworkDetail(
      int homeworkId) async {
    if (useMock) {
      return _getMockSubmissions(homeworkId);
    }

    try {
      final response = await _api.getHomeworkSubmissions(homeworkId);
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
  Future<void> downloadFile(
    String url,
    String savePath, {
    void Function(double progress)? onProgress,
  }) async {
    try {
      await _dio.download(
        url,
        savePath,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            final progress = received / total;
            onProgress?.call(progress);
          }
        },
      );
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  @override
  Future<void> gradeSubmission({
    required int submissionId,
    required int grade,
    String? comment,
  }) async {
    try {
      log('Repository: Starting grade submission',
          name: 'TeacherHomeworkRepository');
      log('Params - submissionId: $submissionId, grade: $grade, comment: $comment',
          name: 'TeacherHomeworkRepository');
      if (submissionId <= 0) {
        throw ApiException('Invalid submission ID');
      }
      if (grade < 0 || grade > 100) {
        throw ApiException('Invalid grade value');
      }

      final formData = FormData.fromMap({
        'rating': grade,
        'comment': comment ?? '',
        'status': 'graded', // 評分成績
      });

      final response = await _api.gradeSubmission(
        submissionId,
        comment,
        grade,
        'graded',
      );
      log('Grade submission successful', name: 'TeacherHomeworkRepository');
      if (!response.success) {
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
  Future<List<Lesson>> getTeacherLessons() async {
    if (useMock) {
      return _getMockLessons();
    }

    try {
      final response = await _api.getTeacherLessons(_teacherId);
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
  Future<void> createHomework({
    required int lessonId,
    required String description,
    required DateTime startTime,
    required DateTime endTime,
    File? file,
  }) async {
    try {
      final formData = FormData.fromMap({
        'lesson_id': lessonId,
        'homework_description': description,
        'homework_start_time': startTime.toIso8601String(),
        'homework_end_time': endTime.toIso8601String(),
      });

      if (file != null) {
        formData.files.add(
          MapEntry(
            'UploadedFile',
            await MultipartFile.fromFile(
              file.path,
              filename: file.path.split('/').last,
            ),
          ),
        );
      }

      final response = await _api.createHomework(
        lessonId: lessonId,
        homeworkDescription: description,
        homeworkStartTime: startTime?.toIso8601String(),
        homeworkEndTime: endTime?.toIso8601String(),
        uploadedFile: file,
      );

      if (!response.success) {
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
      //   lessonTitle: "lesson test",
      //   lessonDescription: "desc test",
      //   teacherId: _teacherId,
      //   classroomId: 1,
      //   courseId: 4,
      //   lessonDate: DateTime.parse("2024-10-01T00:00:00Z"),
      //   startTime: "10:00:00",
      //   endTime: "12:00:00",
      //   teacherName: "test teacher",
      //   courseName: "初階日語",
      //   subjectName: "基礎日語發音",
      //   classroomName: "room A",
      // ),
      // 可以添加更多模擬數據
    ];
  }

  Future<List<TeacherHomeworkListItem>> _getMockHomeworks() async {
    await Future.delayed(const Duration(milliseconds: 800));
    return [
      // TeacherHomeworkListItem(
      //   homeworkId: 1,
      //   lessonId: 1,
      //   homeworkDescription: "第一章數學練習",
      //   lessonTitle: "數學",
      //   classroomName: "一年級A班",
      //   startTime: DateTime.now(),
      //   endTime: DateTime.now().add(const Duration(days: 7)),
      //   status: HomeworkStatus.ongoing,
      //   teacherId: _teacherId,
      //   teacherName: "Teacher A",
      //   uploadFile: null,
      //   lessonDescription: "數學基礎課程",
      //   totalStudents: 30,
      //   submittedCount: 25,
      //   ratingCount: 20,
      // ),
    ];
  }

  Future<List<TeacherHomeworkSubmission>> _getMockSubmissions(
      int homeworkId) async {
    await Future.delayed(const Duration(milliseconds: 800));
    return [
      TeacherHomeworkSubmission(
        submissionId: 1,
        studentId: 1,
        studentName: "學生A",
        submissionTime: DateTime.now(),
        comment: "做得很好",
        grade: 90,
        status: SubmissionStatus.submitted,
        hasAttachment: true,
        uploadFileUrls: ["http://example.com/file1.pdf"],
      ),
      TeacherHomeworkSubmission(
        submissionId: 2,
        studentId: 2,
        studentName: "學生B",
        submissionTime: null,
        comment: null,
        grade: null,
        status: SubmissionStatus.pending,
        hasAttachment: false,
        uploadFileUrls: [],
      ),
    ];
  }
}
