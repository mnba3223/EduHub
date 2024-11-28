import 'package:dio/dio.dart';
import 'package:edutec_hub/config/user_session.dart';
import 'package:edutec_hub/data/models/teacher/teacher_exam.dart';
import 'package:edutec_hub/data/network/apis/teacher_api.dart';
import 'package:edutec_hub/data/network/core/dio_client.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';

abstract class TeacherExamRepository {
  Future<List<TeacherExam>> getTeacherExams();
  Future<TeacherExam> createExam(ExamCreateRequest request);
  Future<TeacherExam> updateExam(int examId, ExamCreateRequest request);
  Future<void> deleteExam(int examId);
  Future<List<TeacherExamRegistration>> getExamRegistrations(int examId);
  Future<void> gradeExam(int registrationId, int score);
}

class TeacherExamRepositoryImpl implements TeacherExamRepository {
  final TeacherApi _api;
  final bool useMock;

  TeacherExamRepositoryImpl({
    TeacherApi? api,
    this.useMock = false,
  }) : _api = api ?? TeacherApi(DioClient().dio);

  int get _teacherId {
    final roleId = UserSession.instance.roleId;
    if (roleId == null) {
      throw ApiException('User not logged in');
    }
    return roleId;
  }

  @override
  Future<List<TeacherExam>> getTeacherExams() async {
    if (useMock) {
      return _getMockExams();
    }

    try {
      final response = await _api.getTeacherExams(_teacherId);
      if (response.success) {
        return response.data ?? [];
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
  Future<TeacherExam> createExam(ExamCreateRequest request) async {
    try {
      final response = await _api.createExam(
        lessonId: request.lessonId.toString(),
        examName: request.examName,
        examDescription: request.examDescription,
        examDate: request.examDate.toIso8601String(),
        uploadedFile: request.uploadedFile,
      );

      if (response.success) {
        return TeacherExam.fromJson(response.data as Map<String, dynamic>);
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
  Future<TeacherExam> updateExam(int examId, ExamCreateRequest request) async {
    try {
      final response = await _api.updateExam(
        examId,
        examName: request.examName,
        examDescription: request.examDescription,
        examDate: request.examDate.toIso8601String(),
        uploadedFile: request.uploadedFile, // 只在有新檔案時傳送
      );

      if (response.success) {
        final data = response.data as Map<String, dynamic>;
        // 如果要保留原檔案且API回傳null，則使用原檔案路徑
        if (request.keepExistingFile && data['upload_file'] == null) {
          data['upload_file'] = request.uploadFile;
        }
        return TeacherExam.fromJson(data);
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
  Future<List<TeacherExamRegistration>> getExamRegistrations(int examId) async {
    try {
      final response = await _api.getExamRegistrations(examId);
      if (response.success) {
        return response.data ?? [];
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
  Future<void> gradeExam(int registrationId, int score) async {
    // int intScore = int.tryParse(score.toString()) ?? 0;

    try {
      final response = await _api.gradeExam(registrationId, score);
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
  Future<void> deleteExam(int examId) async {
    try {
      final response = await _api.deleteExam(examId);
      if (!response.success) {
        throw ApiException(
          response.message,
          errorCode: response.code.toString(),
          errorDetails: response.message,
        );
      }
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  Future<List<TeacherExam>> _getMockExams() async {
    await Future.delayed(const Duration(milliseconds: 800));
    return [
      _getMockExam(),
      _getMockExam().copyWith(
        examId: 2,
        examName: '小考',
        examDescription: '第四章內容',
      ),
    ];
  }

  TeacherExam _getMockExam() {
    return TeacherExam(
      examId: 1,
      lessonId: 1,
      examName: '期中考試',
      examDescription: '第一章到第三章內容',
      examDate: DateTime.now().add(const Duration(days: 7)),
      lessonTitle: '數學',
      lessonDescription: '數學基礎課程',
      teacherId: _teacherId,
      teacherName: 'Teacher A',
      uploadFile: null,
      totalStudents: 30,
      ratingCount: 0,
    );
  }
}
