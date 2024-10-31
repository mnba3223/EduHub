// lib/data/repositories/homework_repository.dart
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/student/homework.dart';
import 'package:edutec_hub/data/network/apis/student_api.dart';
import 'package:edutec_hub/data/network/core/dio_client.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';
import 'package:file_picker/file_picker.dart';
import 'package:table_calendar/table_calendar.dart';

abstract class HomeworkRepository {
  Future<List<Homework>> getHomeworks();
  Future<List<Homework>> getHomeworksByDate(DateTime? date);
  Future<List<Homework>> getPendingHomeworksByDate(DateTime? date);
  Future<List<Homework>> getCompletedHomeworksByDate(DateTime? date);
  Future<Homework> getHomeworkDetail(String id);
  Future<void> submitHomework({
    required String homeworkId,
    required String content,
    required List<PlatformFile> files,
  });
}

class HomeworkRepositoryImpl implements HomeworkRepository {
  final dio = DioClient().dio;
  final api = StudentApi(DioClient().dio);

  // 添加模擬數據
  final List<Homework> mockHomeworks = [
    Homework(
      id: '1',
      title: '數學作業 - 微積分練習',
      description: '請完成課本第三章習題 1-10',
      dueDate: DateTime.now().add(const Duration(days: 3)),
      createdAt: DateTime.now(),
      courseId: 'MATH101',
      courseName: '微積分',
      status: HomeworkStatus.pending,
    ),
    Homework(
      id: '2',
      title: '英文作業 - Essay',
      description: 'Write a 500-word essay about your summer vacation',
      dueDate: DateTime.now().add(const Duration(days: 5)),
      createdAt: DateTime.now(),
      courseId: 'ENG101',
      courseName: '英文寫作',
      status: HomeworkStatus.pending,
    ),
    Homework(
      id: '3',
      title: '物理作業 - 運動學',
      description: '完成實驗報告',
      dueDate: DateTime.now().subtract(const Duration(days: 2)),
      createdAt: DateTime.now().subtract(const Duration(days: 7)),
      courseId: 'PHY101',
      courseName: '普通物理',
      status: HomeworkStatus.submitted,
      submitContent: '已完成實驗報告書',
      submitDate: DateTime.now().subtract(const Duration(days: 2)),
    ),
    Homework(
      id: '4',
      title: '化學作業 - 元素週期表',
      description: '完成元素特性分析',
      dueDate: DateTime.now().subtract(const Duration(days: 5)),
      createdAt: DateTime.now().subtract(const Duration(days: 10)),
      courseId: 'CHE101',
      courseName: '普通化學',
      status: HomeworkStatus.graded,
      submitContent: '元素特性分析報告',
      submitDate: DateTime.now().subtract(const Duration(days: 5)),
      score: 95,
      teacherComment: '報告內容詳實，分析透徹',
    ),
  ];
  // 添加一個判斷是否使用模擬數據的標記
  final bool useMock = true; // 你可以根據需要切換
  @override
  Future<List<Homework>> getHomeworks() async {
    if (useMock) {
      await Future.delayed(const Duration(seconds: 1));
      return mockHomeworks;
    }
    try {
      final response = await api.getHomeworks(1, 50);
      return response.data;
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  @override
  Future<List<Homework>> getHomeworksByDate(DateTime? date) async {
    if (useMock) {
      await Future.delayed(const Duration(seconds: 1));
      if (date == null) return mockHomeworks;
      return mockHomeworks
          .where((homework) => isSameDay(homework.dueDate, date))
          .toList();
    }
    try {
      if (date == null) return getHomeworks();
      final formattedDate = DateFormat('yyyy-MM-dd').format(date);
      final response = await api.getHomeworksByDate(formattedDate);
      return response.data;
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  @override
  Future<List<Homework>> getPendingHomeworksByDate(DateTime? date) async {
    final homeworks = await getHomeworksByDate(date);
    return homeworks.where((h) => h.status == HomeworkStatus.pending).toList();
  }

  @override
  Future<List<Homework>> getCompletedHomeworksByDate(DateTime? date) async {
    final homeworks = await getHomeworksByDate(date);
    return homeworks.where((h) => h.status != HomeworkStatus.pending).toList();
  }

  @override
  Future<Homework> getHomeworkDetail(String id) async {
    if (useMock) {
      await Future.delayed(const Duration(seconds: 1));
      return mockHomeworks.firstWhere(
        (homework) => homework.id == id,
        orElse: () => throw ApiException('Homework not found'),
      );
    }

    try {
      final response = await api.getHomeworkDetail(id);
      return response.data;
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  @override
  Future<void> submitHomework({
    required String homeworkId,
    required String content,
    required List<PlatformFile> files,
  }) async {
    try {
      if (useMock) {
        // 模擬上傳延遲
        await Future.delayed(const Duration(seconds: 2));

        // 更新本地 mock 數據
        final index = mockHomeworks.indexWhere((h) => h.id == homeworkId);
        if (index == -1) {
          throw ApiException('Homework not found');
        }

        mockHomeworks[index] = mockHomeworks[index].copyWith(
          status: HomeworkStatus.submitted,
          submitContent: content,
          submitDate: DateTime.now(),
          attachmentUrls: files.map((f) => f.name).toList(),
        );

        return; // 成功情況直接返回
      }

      // 實際 API 調用的部分
      final multipartFiles = await Future.wait(
        files.map((file) async {
          if (file.bytes == null) {
            throw ApiException('File data is null');
          }
          return MultipartFile.fromBytes(
            file.bytes!,
            filename: file.name,
          );
        }),
      );

      await api.submitHomework(
        homeworkId,
        content,
        multipartFiles,
      );
    } on DioException catch (e) {
      throw e.toApiException();
    } catch (e) {
      throw ApiException(e.toString());
    }
  }
}