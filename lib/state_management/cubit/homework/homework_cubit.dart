import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/config/user_session.dart';
import 'package:edutec_hub/data/models/student/homework.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';
import 'package:edutec_hub/data/repositories/homework_repository.dart';
import 'package:edutec_hub/state_management/cubit/homework/homework_state.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeworkCubit extends Cubit<HomeworkState> {
  final HomeworkRepository _repository;
  // final int _studentId;

  HomeworkCubit({
    required HomeworkRepository repository,
    // required int studentId,
  })  : _repository = repository,
        // _studentId = studentId,
        super(const HomeworkState());
  int roleid = UserSession.instance.roleId!;
  Future<void> loadHomeworks() async {
    try {
      emit(state.copyWith(isLoading: true, error: null));

      final now = DateTime.now();
      // 上個月的第一天
      final previousMonth = DateTime(now.year, now.month - 1, 1);
      // 下個月的最後一天
      final nextMonthEnd = DateTime(now.year, now.month + 2, 0);

      final homeworks =
          await _repository.getHomeworks(roleid, previousMonth, nextMonthEnd);

      final todaysHomeworks = await _repository.getHomeworksByDate(roleid, now);

      emit(state.copyWith(
        isLoading: false,
        homeworks: homeworks,
        filteredHomeworks: todaysHomeworks,
        selectedDate: now,
        selectedStatus: HomeworkStatus.pending,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: e.toString(),
        homeworks: [],
        filteredHomeworks: [],
      ));
    }
  }

  Future<void> filterHomeworksByDate(DateTime? date) async {
    try {
      emit(state.copyWith(isLoading: true, selectedDate: date));

      final filteredHomeworks =
          await _repository.getHomeworksByDate(roleid, date);

      emit(state.copyWith(
        isLoading: false,
        filteredHomeworks: filteredHomeworks,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: e.toString(),
      ));
    }
  }

  Future<void> loadHomeworkDetail(int homeworkId) async {
    try {
      emit(state.copyWith(isLoading: true));

      final homework = await _repository.getHomeworkDetail(homeworkId, roleid);

      emit(state.copyWith(
        isLoading: false,
        currentHomework: homework,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: e.toString(),
      ));
    }
  }

  Future<void> submitHomework({
    required int submissionId,
    required String content,
    required List<PlatformFile> files,
  }) async {
    try {
      emit(state.copyWith(isLoading: true, error: null));

      await _repository.submitHomework(
        submissionId: submissionId,
        studentId: roleid,
        content: content,
        files: files,
      );

      await loadHomeworks();
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: e is ApiException ? e.message : 'error_submitting_homework'.tr(),
      ));
      rethrow;
    }
  }

  List<HomeworkListItem> getEventsForDay(DateTime day) {
    return state.homeworks
        .where((homework) => isSameDay(homework.endTime, day))
        .toList();
  }

  List<HomeworkListItem> getPendingHomeworks() {
    return state.filteredHomeworks
        .where((h) => h.status == HomeworkStatus.pending)
        .toList();
  }

  List<HomeworkListItem> getHomePageHomeworks() {
    return state.homeworks
        .where((homework) => homework.status == HomeworkStatus.pending)
        .toList()
      ..sort((a, b) => a.endTime.compareTo(b.endTime))
      ..take(3);
  }

  void filterHomeworksByStatus(HomeworkStatus? status) {
    if (status == null) {
      // 如果狀態為空，顯示所有作業
      emit(state.copyWith(
        filteredHomeworks: state.homeworks,
        selectedStatus: null,
      ));
      return;
    }

    final filtered =
        state.homeworks.where((homework) => homework.status == status).toList();

    emit(state.copyWith(
      filteredHomeworks: filtered,
      selectedStatus: status,
    ));
  }

  void clearError() {
    emit(state.copyWith(error: null));
  }
}
