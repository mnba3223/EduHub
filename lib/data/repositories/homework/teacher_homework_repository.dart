import 'package:dio/dio.dart';
import 'package:edutec_hub/config/user_session.dart';
import 'package:edutec_hub/data/models/teacher/teacher_homework.dart';
import 'package:edutec_hub/data/network/apis/teacher_api.dart';
import 'package:edutec_hub/data/network/core/dio_client.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';
import 'package:edutec_hub/state_management/cubit/signInCubit.dart';

abstract class TeacherHomeworkRepository {
  Future<List<TeacherHomeworkListItem>> getTeacherHomeworks();
  Future<List<TeacherHomeworkSubmission>> getTeacherHomeworkDetail(
      int homeworkId);
}

class TeacherHomeworkRepositoryImpl implements TeacherHomeworkRepository {
  final TeacherApi _api;
  // final SignInCubit _signInCubit;
  final bool useMock;

  List<TeacherHomeworkListItem>? _cachedHomeworks;

  TeacherHomeworkRepositoryImpl({
    TeacherApi? api,
    // required SignInCubit signInCubit,
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

  Future<List<TeacherHomeworkListItem>> _getMockHomeworks() async {
    await Future.delayed(const Duration(milliseconds: 800));
    return [
      TeacherHomeworkListItem(
        homeworkId: 1,
        lessonId: 1,
        homeworkDescription: "第一章數學練習",
        lessonTitle: "數學",
        classroomName: "一年級A班",
        startTime: DateTime.now(),
        endTime: DateTime.now().add(const Duration(days: 7)),
        status: HomeworkStatus.ongoing,
        teacherId: _teacherId,
        teacherName: "Teacher A",
        uploadFile: null,
        lessonDescription: "數學基礎課程",
        totalStudents: 30,
        submittedCount: 25,
        ratingCount: 20,
      ),
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