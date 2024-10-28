import 'package:edutec_hub/data/models/student/homework.dart';
import 'package:edutec_hub/data/repositories/homework_repository.dart';
import 'package:edutec_hub/state_management/cubit/homework/homework_state.dart';
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
      final homeworks = await homeworkRepository.getHomeworks();

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
        selectedStatus: HomeworkStatus.pending, // 默認顯示待完成
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: e.toString(),
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

  List<Homework> getCompletedHomeworks() {
    // 使用過濾後的列表
    return state.filteredHomeworks
        .where((h) => h.status != HomeworkStatus.pending)
        .toList();
  }

  Future<void> submitHomework({
    required String homeworkId,
    required String content,
    required List<String> attachmentUrls,
  }) async {
    try {
      emit(state.copyWith(isLoading: true));
      await homeworkRepository.submitHomework(
        attachmentUrls: attachmentUrls,
        homeworkId: homeworkId,
        content: content,
      );
      await loadHomeworks();
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        isLoading: false,
      ));
    }
  }

  Future<void> loadHomeworkDetail(String id) async {
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
