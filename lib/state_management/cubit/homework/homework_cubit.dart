import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/student/homework.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';
import 'package:edutec_hub/data/repositories/homework_repository.dart';
import 'package:edutec_hub/state_management/cubit/homework/homework_state.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeworkCubit extends Cubit<HomeworkState> {
  final HomeworkRepository homeworkRepository;

  HomeworkCubit({
    required this.homeworkRepository,
  }) : super(const HomeworkState());

  Future<void> loadHomeworks() async {
    try {
      emit(state.copyWith(isLoading: true, error: null));

      // 添加日誌
      print('Loading homeworks...');

      final homeworks = await homeworkRepository.getHomeworks();

      // 添加日誌
      print('Loaded ${homeworks.length} homeworks');
      homeworks.forEach((homework) {
        print(
            'Homework: ${homework.submissionId}, ${homework.description}, ${homework.status}');
      });

      // 默認選中今天日期
      final today = DateTime.now();
      final todaysHomeworks = homeworks
          .where((homework) => isSameDay(homework.dueDate, today))
          .toList();

      emit(state.copyWith(
        isLoading: false,
        homeworks: homeworks,
        filteredHomeworks: todaysHomeworks,
        selectedDate: today,
        selectedStatus: HomeworkStatus.pending,
      ));
    } catch (e) {
      print('Error loading homeworks: $e'); // 添加錯誤日誌
      emit(state.copyWith(
        isLoading: false,
        error: e.toString(),
        homeworks: [], // 確保即使出錯也有一個空列表
        filteredHomeworks: [], // 確保即使出錯也有一個空列表
      ));
    }
  }

  Future<void> filterHomeworksByDate(DateTime? date) async {
    emit(state.copyWith(
      isLoading: true,
      selectedDate: date,
    ));

    if (date == null) {
      // 如果沒有選擇日期，顯示所有作業
      emit(state.copyWith(
        isLoading: false,
        filteredHomeworks: state.homeworks,
      ));
    } else {
      // 過濾選中日期的作業，不管有沒有事件都會過濾
      final filteredHomeworks = state.homeworks
          .where((homework) => isSameDay(homework.dueDate, date))
          .toList();
      emit(state.copyWith(
        isLoading: false,
        filteredHomeworks: filteredHomeworks,
      ));
    }
  }

  List<Homework> getFilteredHomeworks(HomeworkStatus? status) {
    var homeworks = state.filteredHomeworks;

    if (status != null) {
      homeworks = homeworks.where((h) => h.status == status).toList();
    }

    return homeworks;
  }

  List<Homework> getEventsForDay(DateTime day) {
    // 用於日曆顯示點點，使用完整列表
    return state.homeworks
        .where((homework) => isSameDay(homework.dueDate, day))
        .toList();
  }

  List<Homework> getPendingHomeworks() {
    // 使用過濾後的列表
    return state.filteredHomeworks
        .where((h) => h.status == HomeworkStatus.pending)
        .toList();
  }

  // 在學生主頁面使用的方法
  List<Homework> getPendingHomeworksForHome() {
    final allHomeworks = state.homeworks;
    print('Total homeworks: ${allHomeworks.length}'); // 添加日誌

    final pendingHomeworks = allHomeworks
        .where((homework) => homework.status == HomeworkStatus.pending)
        .toList()
      ..sort((a, b) => a.dueDate.compareTo(b.dueDate));

    print('Pending homeworks: ${pendingHomeworks.length}'); // 添加日誌
    return pendingHomeworks;
  }

  List<Homework> getCompletedHomeworks() {
    // 使用過濾後的列表
    return state.filteredHomeworks
        .where((h) => h.status != HomeworkStatus.pending)
        .toList();
  }

  Future<void> submitHomework({
    required int submissionId,
    required String content,
    required List<PlatformFile> files,
  }) async {
    try {
      emit(state.copyWith(isLoading: true, error: null));

      // Call repository method which handles the API submission
      await homeworkRepository.submitHomework(
        submissionId: submissionId,
        content: content,
        files: files,
      );

      // Reload homeworks to reflect changes
      await loadHomeworks();

      emit(state.copyWith(isLoading: false));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: e is ApiException ? e.message : 'error_submitting_homework'.tr(),
      ));
      rethrow; // Rethrow to allow UI to handle error
    }
  }

  List<Homework> getHomePageHomeworks() {
    final homeworks = state.homeworks;
    if (homeworks.isEmpty) {
      print('No homeworks available'); // 添加日誌
      return [];
    }

    final pendingHomeworks = homeworks
        .where((homework) => homework.status == HomeworkStatus.pending)
        .toList()
      ..sort((a, b) => a.dueDate.compareTo(b.dueDate));

    print('Found ${pendingHomeworks.length} pending homeworks'); // 添加日誌
    return pendingHomeworks.take(3).toList();
  }

  Future<void> loadHomeworkDetail(int id) async {
    // 改為 int
    try {
      emit(state.copyWith(isLoading: true));
      final homework = await homeworkRepository.getHomeworkDetail(id);
      emit(state.copyWith(
        currentHomework: homework,
        isLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        isLoading: false,
      ));
    }
  }

  void filterHomeworksByStatus(HomeworkStatus status) {
    final filtered =
        state.homeworks.where((homework) => homework.status == status).toList();
    emit(state.copyWith(filteredHomeworks: filtered));
  }

  void clearError() {
    emit(state.copyWith(error: null));
  }
}
