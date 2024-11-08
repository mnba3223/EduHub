import 'package:bloc/bloc.dart';
import 'package:edutec_hub/data/models/attendance/attendance_models.dart';
import 'package:edutec_hub/data/repositories/attendance_repository.dart';
import 'package:equatable/equatable.dart';

import 'package:flutter/material.dart';

part 'attendance_state.dart';

class AttendanceCubit extends Cubit<AttendanceState> {
  final AttendanceRepository repository;

  AttendanceCubit({
    required this.repository,
  }) : super(const AttendanceInitial());

  Future<void> loadAttendanceData({
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    emit(const AttendanceLoading());

    try {
      final now = DateTime.now();
      final start = startDate ?? DateTime(now.year, now.month, 1);
      final end = endDate ?? DateTime(now.year, now.month + 1, 0);

      final records = await repository.getAttendanceRecords(
        startDate: start,
        endDate: end,
      );

      final statistics = await repository.getAttendanceStatistics(
        startDate: start,
        endDate: end,
      );

      emit(AttendanceLoaded(
        records: records,
        statistics: statistics,
        selectedDate: now,
        selectedMonth: DateTime(now.year, now.month),
      ));
    } on Exception {
      emit(const AttendanceError('請重新登入'));
    } catch (e) {
      emit(AttendanceError(e.toString()));
    }
  }

  Future<void> changeMonth(DateTime month) async {
    final currentState = state;
    if (currentState is AttendanceLoaded) {
      final startDate = DateTime(month.year, month.month, 1);
      final endDate = DateTime(month.year, month.month + 1, 0);

      emit(const AttendanceLoading());

      try {
        final records = await repository.getAttendanceRecords(
          startDate: startDate,
          endDate: endDate,
        );

        final statistics = await repository.getAttendanceStatistics(
          startDate: startDate,
          endDate: endDate,
        );

        emit(AttendanceLoaded(
          records: records,
          statistics: statistics,
          selectedDate: currentState.selectedDate,
          selectedMonth: month,
        ));
      } catch (e) {
        emit(AttendanceError(e.toString()));
      }
    }
  }

  void selectDate(DateTime date) {
    final currentState = state;
    if (currentState is AttendanceLoaded) {
      emit(currentState.copyWith(selectedDate: date));
    }
  }

  Future<void> submitLeaveRequest(LeaveRequestForm form) async {
    // 保存當前狀態
    final currentState = state;
    emit(const LeaveRequestLoading());

    try {
      await repository.submitLeaveRequest(form);
      emit(const LeaveRequestSuccess());

      // 重新加載當月數據，使用保存的月份
      if (currentState is AttendanceLoaded) {
        await loadAttendanceData(
          startDate: DateTime(
            currentState.selectedMonth.year,
            currentState.selectedMonth.month,
            1,
          ),
          endDate: DateTime(
            currentState.selectedMonth.year,
            currentState.selectedMonth.month + 1,
            0,
          ),
        );
      } else {
        await loadAttendanceData(); // 如果沒有當前狀態，加載當月數據
      }
    } catch (e) {
      emit(LeaveRequestError(e.toString()));
      // 恢復之前的狀態
      if (currentState is AttendanceLoaded) {
        emit(currentState);
      }
    }
  }

  Future<void> cancelLeaveRequest(String leaveRequestId) async {
    emit(const LeaveRequestLoading());

    try {
      await repository.cancelLeaveRequest(leaveRequestId);
      emit(const LeaveRequestSuccess());

      // 重新加載當月數據
      final currentState = state;
      if (currentState is AttendanceLoaded) {
        await loadAttendanceData(
          startDate: DateTime(currentState.selectedMonth.year,
              currentState.selectedMonth.month, 1),
          endDate: DateTime(currentState.selectedMonth.year,
              currentState.selectedMonth.month + 1, 0),
        );
      }
    } catch (e) {
      emit(LeaveRequestError(e.toString()));
    }
  }
}
