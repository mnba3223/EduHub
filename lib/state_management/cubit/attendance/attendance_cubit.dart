import 'package:edutec_hub/data/models/attendance/leave_models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:edutec_hub/data/models/attendance/attendance_models.dart';
import 'package:edutec_hub/data/repositories/attendance_repository.dart';
import 'package:flutter/material.dart';

class AttendanceCubit extends Cubit<AttendanceState> {
  final AttendanceRepository _repository;

  AttendanceCubit({
    required AttendanceRepository repository,
  })  : _repository = repository,
        super(const AttendanceState());

  Future<void> loadAttendanceData() async {
    emit(state.copyWith(isLoading: true, error: null));

    try {
      final response = await _repository.getAttendanceAndLeave();

      emit(state.copyWith(
        isLoading: false,
        attendanceRecords: response.Attendance ?? [],
        leaveRecords: response.Leave ?? [],
        selectedDate: state.selectedDate ?? DateTime.now(),
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: e.toString(),
      ));
    }
  }

  void selectDate(DateTime date) {
    emit(state.copyWith(selectedDate: date));
  }

  List<AttendanceRecord> getAttendanceRecordsForDate(DateTime date) {
    return state.attendanceRecords
        .where((record) => DateUtils.isSameDay(record.attendanceDate, date))
        .toList();
  }

  List<StudentLeaveRecord> getLeaveRecordsForDate(DateTime date) {
    return state.leaveRecords
        .where((record) => DateUtils.isSameDay(record.lessonDate, date))
        .toList();
  }

  bool hasRecordsForDate(DateTime date) {
    return getAttendanceRecordsForDate(date).isNotEmpty ||
        getLeaveRecordsForDate(date).isNotEmpty;
  }

  // 統計相關的輔助方法
  int getTotalCheckInCount() {
    return state.attendanceRecords
        .where((record) => record.attendanceStatus == 'CheckIn')
        .length;
  }

  int getTotalLeaveCount() {
    return state.leaveRecords.length;
  }

  double getAttendanceRate() {
    final totalDays = state.attendanceRecords.length;
    if (totalDays == 0) return 0.0;

    final presentDays = getTotalCheckInCount();
    return presentDays / totalDays;
  }
}
