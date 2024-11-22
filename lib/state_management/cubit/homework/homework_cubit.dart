import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/config/user_session.dart';
import 'package:edutec_hub/data/models/student/homework.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';
import 'package:edutec_hub/data/repositories/homework/homework_repository.dart';
import 'package:edutec_hub/presentation/screens/student/homework/student_homework_screen.dart';
import 'package:edutec_hub/state_management/cubit/homework/homework_state.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
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

      // final todaysHomeworks = await _repository.getHomeworksByDate(roleid, now);
      final todaysHomeworks = _filterHomeworks(
        homeworks: homeworks,
        date: now,
        status: state.selectedStatus,
      );

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

  List<HomeworkListItem> _filterHomeworks({
    required List<HomeworkListItem> homeworks,
    required DateTime? date,
    required HomeworkStatus? status,
  }) {
    var filtered = homeworks;

    // 先按日期篩選
    if (date != null) {
      filtered = filtered
          .where((homework) => isSameDay(homework.endTime, date))
          .toList();
    }

    // 再按狀態篩選
    if (status != null) {
      filtered =
          filtered.where((homework) => homework.status == status).toList();
    }

    return filtered;
  }

  Future<void> filterHomeworksByDate(DateTime? date) async {
    try {
      emit(state.copyWith(isLoading: true));

      // 使用現有的作業列表，同時考慮日期和狀態
      final filteredHomeworks = _filterHomeworks(
        homeworks: state.homeworks,
        date: date,
        status: state.selectedStatus,
      );

      emit(state.copyWith(
        isLoading: false,
        filteredHomeworks: filteredHomeworks,
        selectedDate: date,
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
    // required String content,
    required List<PlatformFile> files,
  }) async {
    try {
      emit(state.copyWith(isLoading: true, error: null));

      await _repository.submitHomeworkMultiple(
        submissionId: submissionId,
        // studentId: roleid,
        // content: content,
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

  void updateCalendar(DateTime selectedDay, DateTime focusedDay) {
    final filtered = _filterHomeworks(
      homeworks: state.homeworks,
      date: selectedDay,
      status: state.selectedStatus,
    );

    emit(state.copyWith(
      selectedDate: selectedDay,
      focusedDay: focusedDay,
      filteredHomeworks: filtered,
    ));
  }

  void updateCalendarFormat(CalendarFormat format) {
    emit(state.copyWith(calendarFormat: format));
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

  // 新增狀態相關方法
  HomeworkStatusConfig getStatusConfig(HomeworkStatus status) {
    switch (status) {
      case HomeworkStatus.pending:
        return HomeworkStatusConfig(Colors.orange, 'pending'.tr());
      case HomeworkStatus.submit:
        return HomeworkStatusConfig(Colors.blue, 'submitted'.tr());
      case HomeworkStatus.graded:
        return HomeworkStatusConfig(Colors.green, 'graded'.tr());
      case HomeworkStatus.overdue:
        return HomeworkStatusConfig(Colors.red, 'overdue'.tr());
    }
  }

  String getStatusText(HomeworkStatus status) {
    return getStatusConfig(status).text;
  }

  void updateSelectedStatus(HomeworkStatus? status) {
    filterHomeworksByStatus(status);
  }

  void updateSelectedDate(DateTime selectedDay, DateTime focusedDay) {
    filterHomeworksByDate(selectedDay);
  }

  void filterHomeworksByStatus(HomeworkStatus? status) {
    // 使用當前選中的日期和新的狀態進行篩選
    final filtered = _filterHomeworks(
      homeworks: state.homeworks,
      date: state.selectedDate,
      status: status,
    );

    emit(state.copyWith(
      filteredHomeworks: filtered,
      selectedStatus: status,
    ));
  }

  void clearError() {
    emit(state.copyWith(error: null));
  }
}
