import 'package:edutec_hub/config/user_session.dart';
import 'package:edutec_hub/data/models/teacher/teacher_leave.dart';
import 'package:edutec_hub/data/repositories/leave/teacher_leave_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

class TeacherLeaveCubit extends Cubit<TeacherLeaveState> {
  final TeacherLeaveRepository _repository;

  TeacherLeaveCubit(this._repository)
      : super(TeacherLeaveState(focusedDay: DateTime.now()));

  Future<void> loadLeaveRequests({DateTime? startDate}) async {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      final leaves = await _repository.getTeacherLeaves(
        teacherId: UserSession.instance.roleId!,
        startDate: startDate,
      );

      final filteredLeaves = _filterLeaves(
        leaves,
        selectedDate: startDate ?? state.selectedDate,
      );

      emit(state.copyWith(
        leaveRequests: leaves,
        filteredLeaves: filteredLeaves,
        isLoading: false,
        selectedDate: startDate ?? state.selectedDate,
        focusedDay: startDate ?? state.focusedDay,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: e.toString(),
      ));
    }
  }

  Future<void> createLeaveRequest(int lessonId) async {
    try {
      emit(state.copyWith(isLoading: true, error: null));
      await _repository.createLeaveRequest(lessonId);
      await loadLeaveRequests(startDate: state.selectedDate);
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        isLoading: false,
      ));
      rethrow;
    }
  }

  Future<void> cancelLeaveRequest(int lessonId) async {
    try {
      emit(state.copyWith(isLoading: true, error: null));
      await _repository.cancelLeaveRequest(lessonId);

      // 直接從現有列表中移除被取消的請假記錄
      final updatedLeaves = state.leaveRequests
          .where((leave) => leave.lessonId != lessonId)
          .toList();

      final updatedFilteredLeaves = state.filteredLeaves
          .where((leave) => leave.lessonId != lessonId)
          .toList();

      emit(state.copyWith(
        leaveRequests: updatedLeaves,
        filteredLeaves: updatedFilteredLeaves,
        isLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        isLoading: false,
      ));
      rethrow;
    }
  }

  void updateSelectedDate(DateTime selectedDate, DateTime focusedDay) {
    final filteredLeaves = _filterLeaves(
      state.leaveRequests,
      selectedDate: selectedDate,
    );

    emit(state.copyWith(
      selectedDate: selectedDate,
      focusedDay: focusedDay,
      filteredLeaves: filteredLeaves,
    ));
  }

  List<TeacherLeave> _filterLeaves(
    List<TeacherLeave> leaves, {
    DateTime? selectedDate,
  }) {
    if (selectedDate == null) return leaves;

    return leaves
        .where((leave) => isSameDay(leave.lessonDate, selectedDate))
        .toList();
  }

  Widget? markerBuilder(BuildContext context, DateTime date, List events) {
    final count = state.leaveRequests
        .where((leave) => isSameDay(leave.lessonDate, date))
        .length;

    if (count == 0) return null;

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        shape: BoxShape.circle,
      ),
      width: 16.w,
      height: 16.w,
      child: Center(
        child: Text(
          count.toString(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 10.sp,
          ),
        ),
      ),
    );
  }

  Future<void> updateLeaveRequest(int lessonId) async {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      await _repository.updateLeaveRequest(lessonId);

      // Refresh the list after update
      await loadLeaveRequests(startDate: state.selectedDate);
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: e.toString(),
      ));
    }
  }
}
