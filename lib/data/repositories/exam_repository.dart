import 'package:dio/dio.dart';
import 'package:edutec_hub/data/models/api_model/api_response.dart';
import 'package:edutec_hub/data/models/exam/exam.dart';

class ExamRepository {
  final bool useMock;
  static List<Exam> _mockExams = [];

  ExamRepository({
    this.useMock = false,
  }) {
    if (_mockExams.isEmpty) {
      _mockExams = _initMockExams();
    }
  }

  Future<ApiResponse<List<Exam>>> getExams() async {
    if (useMock) {
      await Future.delayed(const Duration(milliseconds: 500));
      return ApiResponse(
        code: 200,
        success: true,
        message: '獲取考試列表成功',
        data: _mockExams,
      );
    }

    try {
      // 這裡之後接入實際 API
      throw UnimplementedError('API not implemented');
    } on DioException catch (e) {
      return ApiResponse(
        code: e.response?.statusCode ?? 500,
        success: false,
        message: e.message ?? '未知錯誤',
        data: null,
      );
    }
  }

  Future<ApiResponse<void>> updateExamStatus(
      String examId, bool isCompleted) async {
    if (useMock) {
      await Future.delayed(const Duration(milliseconds: 500));
      final examIndex = _mockExams.indexWhere((exam) => exam.id == examId);

      if (examIndex != -1) {
        _mockExams[examIndex] = _mockExams[examIndex].copyWith(
          isCompleted: isCompleted,
          completedAt: isCompleted ? DateTime.now().toIso8601String() : null,
        );
        return const ApiResponse(
          code: 200,
          success: true,
          message: '更新考試狀態成功',
        );
      }
      return const ApiResponse(
        code: 404,
        success: false,
        message: '找不到指定考試',
      );
    }

    try {
      // 這裡之後接入實際 API
      throw UnimplementedError('API not implemented');
    } on DioException catch (e) {
      return ApiResponse(
        code: e.response?.statusCode ?? 500,
        success: false,
        message: e.message ?? '未知錯誤',
      );
    }
  }

  List<Exam> _initMockExams() {
    final now = DateTime.now();

    return [
      Exam(
        id: '1',
        subject: '數學',
        examDate: now.add(const Duration(days: 2)),
        location: '第一教室',
        description: '期中考試',
      ),
      Exam(
        id: '2',
        subject: '英語',
        examDate: now.add(const Duration(days: 5)),
        location: '語言教室',
        description: '單元測驗',
      ),
      // 可以根據需求添加更多測試數據
    ];
  }
}
