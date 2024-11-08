import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/student/homework.dart';
import 'package:edutec_hub/data/network/apis/student_api.dart';
import 'package:edutec_hub/data/network/core/dio_client.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';
import 'package:edutec_hub/state_management/cubit/signInCubit.dart';
import 'package:file_picker/file_picker.dart';
import 'package:table_calendar/table_calendar.dart';

abstract class HomeworkRepository {
  Future<List<Homework>> getHomeworks();
  Future<List<Homework>> getHomeworksByDate(DateTime? date);
  Future<List<Homework>> getPendingHomeworksByDate(DateTime? date);
  Future<List<Homework>> getCompletedHomeworksByDate(DateTime? date);
  Future<Homework> getHomeworkDetail(int id);
  Future<void> submitHomework({
    required int submissionId,
    required String content,
    required List<PlatformFile> files,
  });
}

class HomeworkRepositoryImpl implements HomeworkRepository {
  final SignInCubit signInCubit;
  final dio = DioClient().dio;
  final api = StudentApi(DioClient().dio);
  final bool useMock;
  // 緩存作業列表
  List<Homework>? _cachedHomeworks;
  HomeworkRepositoryImpl({
    required this.signInCubit,
    this.useMock = false,
  });

  int get _studentId {
    final state = signInCubit.state;
    if (state is SignInSuccess) {
      return state.userId;
    }
    throw ApiException('User not logged in');
  }

  // 模擬數據
  final List<Homework> mockHomeworks = [
    Homework(
      id: 1,
      description: '請完成課本第三章習題 1-10',
      dueDate: DateTime.now().add(const Duration(days: 3)),
      startTime: DateTime.now(),
      courseName: '微積分',
      courseDescription: 'MATH101 微積分課程',
      status: HomeworkStatus.pending,
      studentId: 4,
      submissionId: 1,
    ),
    Homework(
      id: 2,
      description: 'Write a 500-word essay about your summer vacation',
      dueDate: DateTime.now().add(const Duration(days: 5)),
      startTime: DateTime.now(),
      courseName: '英文寫作',
      courseDescription: 'ENG101 英文寫作課程',
      status: HomeworkStatus.pending,
      studentId: 4,
      submissionId: 2,
    ),
    Homework(
      id: 3,
      description: '完成實驗報告',
      dueDate: DateTime.now().subtract(const Duration(days: 2)),
      startTime: DateTime.now().subtract(const Duration(days: 7)),
      courseName: '普通物理',
      courseDescription: 'PHY101 普通物理課程',
      status: HomeworkStatus.submitted,
      submitDate: DateTime.now().subtract(const Duration(days: 2)),
      attachmentUrl: 'http://example.com/report.pdf',
      studentId: 4,
      submissionId: 3,
    ),
    Homework(
      id: 4,
      description: '完成元素特性分析',
      dueDate: DateTime.now().subtract(const Duration(days: 5)),
      startTime: DateTime.now().subtract(const Duration(days: 10)),
      courseName: '普通化學',
      courseDescription: 'CHE101 普通化學課程',
      status: HomeworkStatus.graded,
      submitDate: DateTime.now().subtract(const Duration(days: 5)),
      score: 95,
      teacherComment: '報告內容詳實，分析透徹',
      attachmentUrl: 'http://example.com/analysis.pdf',
      studentId: 4,
      submissionId: 4,
    ),
  ];

  // @override
  // Future<List<Homework>> getHomeworks() async {
  //   if (useMock) {
  //     await Future.delayed(const Duration(seconds: 1));
  //     _cachedHomeworks =
  //         mockHomeworks.where((h) => h.studentId == _studentId).toList();
  //     return _cachedHomeworks!;
  //   }

  //   try {
  //     final homeworks = await api.getHomeworks(_studentId.toString());
  //     _cachedHomeworks = homeworks;
  //     return homeworks;
  //   } on DioException catch (e) {
  //     throw e.toApiException();
  //   }
  // }
  @override
  Future<List<Homework>> getHomeworks() async {
    if (useMock) {
      await Future.delayed(const Duration(seconds: 1));
      _cachedHomeworks =
          mockHomeworks.where((h) => h.studentId == _studentId).toList();
      return _cachedHomeworks!;
    }

    try {
      final response = await api.getHomeworks(_studentId.toString());

      if (!response.success) {
        throw ApiException(
          response.message,
          errorCode: response.code.toString(),
        );
      }

      _cachedHomeworks = response.data;
      return response.data ?? [];
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  @override
  Future<List<Homework>> getHomeworksByDate(DateTime? date) async {
    final homeworks = _cachedHomeworks ?? await getHomeworks();

    if (date == null) return homeworks;

    return homeworks
        .where((homework) => isSameDay(homework.dueDate, date))
        .toList();
  }

  // @override
  // Future<Homework> getHomeworkDetail(int id) async {
  //   if (useMock) {
  //     await Future.delayed(const Duration(seconds: 1));
  //     return mockHomeworks.firstWhere(
  //       (homework) => homework.id == id && homework.studentId == _studentId,
  //       orElse: () => throw ApiException('Homework not found'),
  //     );
  //   }

  //   try {
  //     final homeworks = await api.getHomeworkDetail(id.toString());
  //     if (homeworks.isEmpty) {
  //       throw ApiException('Homework not found');
  //     }
  //     return homeworks.first;
  //   } on DioException catch (e) {
  //     throw e.toApiException();
  //   }
  // }
  @override
  Future<Homework> getHomeworkDetail(int id) async {
    if (useMock) {
      await Future.delayed(const Duration(seconds: 1));
      return mockHomeworks.firstWhere(
        (homework) => homework.id == id && homework.studentId == _studentId,
        orElse: () => throw ApiException('找不到作業內容'),
      );
    }

    try {
      final response = await api.getHomeworkDetail(id.toString());

      if (!response.success) {
        throw ApiException(
          response.message,
          errorCode: response.code.toString(),
        );
      }

      if (response.data == null || response.data!.isEmpty) {
        throw ApiException('找不到作業內容');
      }

      return response.data!.first;
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  @override
  Future<void> submitHomework({
    required int submissionId,
    required String content,
    required List<PlatformFile> files,
  }) async {
    try {
      log('開始提交作業: ${files.toString()}');

      final multipartFiles = await Future.wait(
        files.map((file) async {
          if (file.path == null) {
            throw ApiException('檔案路徑無效');
          }

          log('處理檔案: ${file.name}, 路徑: ${file.path}');

          return await MultipartFile.fromFile(
            file.path!,
            filename: file.name,
          );
        }),
      );
      log('檔案處理完成，準備提交');

      final response = await api.submitHomework(
        submissionId,
        _studentId,
        content,
        HomeworkStatus.submitted.value,
        multipartFiles,
      );

      if (!response.success) {
        throw ApiException(
          response.message,
          errorCode: response.code.toString(),
        );
      }

      log('作業提交成功');
    } on DioException catch (e) {
      throw e.toApiException();
    } catch (e) {
      throw ApiException(e.toString());
    }
  }

  int _getStudentId() {
    final state = signInCubit.state;
    if (state is SignInSuccess) {
      return state.userId;
    }
    throw ApiException('User not logged in');
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
}
