import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:edutec_hub/config/user_session.dart';
import 'package:edutec_hub/data/models/student/homework.dart';
import 'package:edutec_hub/data/network/apis/student_api.dart';
import 'package:edutec_hub/data/network/core/dio_client.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';
import 'package:edutec_hub/state_management/cubit/signInCubit.dart';
import 'package:file_picker/file_picker.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

abstract class HomeworkRepository {
  Future<List<HomeworkListItem>> getHomeworks(
      int userId, DateTime startTime, DateTime endTime);
  Future<HomeworkSubmission> getHomeworkDetail(int homeworkId, int studentId);
  Future<void> submitHomework({
    required int submissionId,
    required int studentId,
    required String content,
    required List<PlatformFile> files,
  });
  Future<List<HomeworkListItem>> getHomeworksByDate(int userId, DateTime? date);
  Future<List<HomeworkListItem>> getPendingHomeworksByDate(
      int userId, DateTime? date);
  Future<List<HomeworkListItem>> getCompletedHomeworksByDate(
      int userId, DateTime? date);
}

class HomeworkRepositoryImpl implements HomeworkRepository {
  final SignInCubit _signInCubit;
  final bool useMock;

  List<HomeworkListItem>? _cachedHomeworks;
  final _api = StudentApi(DioClient().dio);
  HomeworkRepositoryImpl({
    // required StudentApi api,
    required SignInCubit signInCubit,
    this.useMock = false,
  }) : _signInCubit = signInCubit;

  int get _studentId {
    final state = _signInCubit.state;
    if (state is SignInSuccess) {
      // return state.userId;
      return UserSession.instance.roleId!;
    }
    throw ApiException('User not logged in');
  }

  String _formatDateTime(DateTime dateTime) {
    return dateTime.toUtc().toIso8601String();
  }

  @override
  Future<List<HomeworkListItem>> getHomeworks(
    int userId,
    DateTime startTime,
    DateTime endTime,
  ) async {
    try {
      log('Fetching homeworks for user: $userId');
      log('Start Time: $startTime');
      log('End Time: $endTime');

      final formattedStartTime =
          startTime.toIso8601String().substring(0, 7); // 只取 YYYY-MM
      final formattedEndTime = endTime.toIso8601String().substring(0, 7);

      log('Formatted Start Time: $formattedStartTime');
      log('Formatted End Time: $formattedEndTime');

      final response = await _api.getHomeworks(
        userId,
        formattedStartTime,
        formattedEndTime,
      );

      if (!response.success) {
        throw ApiException(response.message);
      }

      _cachedHomeworks = response.data ?? [];
      return _cachedHomeworks!;
    } on DioException catch (e) {
      log('DioException: ${e.message}');
      log('Request Path: ${e.requestOptions.path}');
      log('Base URL: ${e.requestOptions.baseUrl}');
      log('Full URL: ${e.requestOptions.uri}');
      throw e.toApiException();
    }
  }

  @override
  Future<HomeworkSubmission> getHomeworkDetail(
      int homeworkId, int studentId) async {
    try {
      final response = await _api.getHomeworkDetail(
        homeworkId,
        studentId: studentId,
      );

      if (!response.success) {
        throw ApiException(response.message);
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
    required int studentId,
    required String content,
    required List<PlatformFile> files,
  }) async {
    try {
      log('開始提交作業: ${files.length} 個文件');

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

      final response = await _api.submitHomework(
        submissionId,
        studentId: studentId,
        comment: content,
        status: HomeworkStatus.submitted.value,
        files: multipartFiles,
      );

      if (!response.success) {
        throw ApiException(response.message);
      }

      log('作業提交成功');
    } on DioException catch (e) {
      throw e.toApiException();
    } catch (e) {
      throw ApiException(e.toString());
    }
  }

  @override
  Future<List<HomeworkListItem>> getHomeworksByDate(
      int userId, DateTime? date) async {
    final homeworks = _cachedHomeworks ??
        await getHomeworks(
            userId,
            date ?? DateTime.now(),
            date?.add(const Duration(days: 30)) ??
                DateTime.now().add(const Duration(days: 30)));

    if (date == null) return homeworks;

    return homeworks
        .where((homework) => isSameDay(homework.endTime, date))
        .toList();
  }

  @override
  Future<List<HomeworkListItem>> getPendingHomeworksByDate(
      int userId, DateTime? date) async {
    final homeworks = await getHomeworksByDate(userId, date);
    return homeworks.where((h) => h.status == HomeworkStatus.pending).toList();
  }

  @override
  Future<List<HomeworkListItem>> getCompletedHomeworksByDate(
      int userId, DateTime? date) async {
    final homeworks = await getHomeworksByDate(userId, date);
    return homeworks.where((h) => h.status != HomeworkStatus.pending).toList();
  }

  // 模擬數據
  final List<HomeworkListItem> _mockHomeworks = [
    HomeworkListItem(
      homeworkId: 1,
      description: '請完成課本第三章習題 1-10',
      startTime: DateTime.now(),
      endTime: DateTime.now().add(const Duration(days: 3)),
      lessonTitle: '微積分',
      lessonDescription: 'MATH101 微積分課程',
      status: HomeworkStatus.pending,
      teacherId: 1,
      teacherName: '王老師', lessonId: 2,
      // uploadFile: null,
    ),
    HomeworkListItem(
      homeworkId: 2,
      description: 'Write a 500-word essay about your summer vacation',
      startTime: DateTime.now(),
      endTime: DateTime.now().add(const Duration(days: 5)),
      lessonTitle: '英文寫作',
      lessonDescription: 'ENG101 英文寫作課程',
      status: HomeworkStatus.pending,
      teacherId: 2,
      teacherName: '李老師', lessonId: 2,
      // uploadFile: null,
    ),
    HomeworkListItem(
        homeworkId: 3,
        description: '完成實驗報告',
        startTime: DateTime.now().subtract(const Duration(days: 7)),
        endTime: DateTime.now().subtract(const Duration(days: 2)),
        lessonTitle: '普通物理',
        lessonDescription: 'PHY101 普通物理課程',
        status: HomeworkStatus.submitted,
        teacherId: 3,
        teacherName: '張老師',
        lessonId: 2
        // uploadFile: 'http://example.com/report.pdf',
        ),
    HomeworkListItem(
        homeworkId: 4,
        description: '完成元素特性分析',
        startTime: DateTime.now().subtract(const Duration(days: 10)),
        endTime: DateTime.now().subtract(const Duration(days: 5)),
        lessonTitle: '普通化學',
        lessonDescription: 'CHE101 普通化學課程',
        status: HomeworkStatus.graded,
        teacherId: 4,
        teacherName: '陳老師',
        lessonId: 2
        // uploadFile: 'http://example.com/analysis.pdf',
        ),
  ];
}
