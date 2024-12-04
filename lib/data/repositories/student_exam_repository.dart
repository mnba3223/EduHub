import 'package:dio/dio.dart';
import 'package:edutec_hub/config/user_session.dart';
import 'package:edutec_hub/data/models/api_model/api_response.dart';
import 'package:edutec_hub/data/models/exam/student_exam.dart';
import 'package:edutec_hub/data/network/apis/student_api.dart';
import 'package:edutec_hub/data/network/core/dio_client.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';

class StudentExamRepository {
  final StudentApi _api;
  final bool useMock;

  StudentExamRepository({
    StudentApi? api,
    this.useMock = false,
  }) : _api = api ?? StudentApi(DioClient().dio);

  Future<ApiResponse<List<StudentExam>>> getExams() async {
    if (useMock) {
      return ApiResponse(
        code: 200,
        success: true,
        message: '獲取考試列表成功',
        data: _getMockExams(),
      );
    }

    try {
      final roleId = UserSession.instance.roleId;
      if (roleId == null) {
        throw ApiException('User not logged in');
      }

      final response = await _api.getStudentExams(roleId);
      return response;
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  List<StudentExam> _getMockExams() {
    final now = DateTime.now();
    return [
      StudentExam(
        examId: 1,
        lessonId: 1,
        examName: '數學期中考',
        examDescription: '第一學期期中考試',
        examDate: now.add(const Duration(days: 2)),
        lessonTitle: '數學',
        teacherId: 1,
        teacherName: '王老師',
      ),
      StudentExam(
        examId: 2,
        lessonId: 2,
        examName: '英語單元測驗',
        examDescription: '第三單元測驗',
        examDate: now.add(const Duration(days: 5)),
        lessonTitle: '英語',
        teacherId: 2,
        teacherName: '李老師',
      ),
    ];
  }

  // Future<ApiResponse<void>> updateExamStatus(
  //     String examId, bool isCompleted) async {
  //   if (useMock) {
  //     await Future.delayed(const Duration(milliseconds: 500));
  //     final examIndex = _mockExams.indexWhere((exam) => exam.id == examId);

  //     if (examIndex != -1) {
  //       _mockExams[examIndex] = _mockExams[examIndex].copyWith(
  //         isCompleted: isCompleted,
  //         completedAt: isCompleted ? DateTime.now().toIso8601String() : null,
  //       );
  //       return const ApiResponse(
  //         code: 200,
  //         success: true,
  //         message: '更新考試狀態成功',
  //       );
  //     }
  //     return const ApiResponse(
  //       code: 404,
  //       success: false,
  //       message: '找不到指定考試',
  //     );
  //   }

  //   try {
  //     // 這裡之後接入實際 API
  //     throw UnimplementedError('API not implemented');
  //   } on DioException catch (e) {
  //     return ApiResponse(
  //       code: e.response?.statusCode ?? 500,
  //       success: false,
  //       message: e.message ?? '未知錯誤',
  //     );
  //   }
  // }
}
