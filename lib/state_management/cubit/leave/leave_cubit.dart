import 'package:edutec_hub/data/models/attendance/leave_models.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';
import 'package:edutec_hub/data/repositories/leave/leave_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class LeaveCubit extends Cubit<LeaveState> {
  final LeaveRepository _repository;

  LeaveCubit({
    required LeaveRepository repository,
  })  : _repository = repository,
        super(const LeaveState());

  Future<void> loadLeaveRecords() async {
    emit(state.copyWith(isLoading: true, error: null));

    try {
      final records = await _repository.getLeaveRecords();
      emit(state.copyWith(
        isLoading: false,
        leaveRecords: records,
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

  List<LeaveRecord> getRecordsForDate(DateTime date) {
    return state.leaveRecords
        .where((record) => DateUtils.isSameDay(record.lessonDate, date))
        .toList();
  }

  bool hasRecordsForDate(DateTime date) {
    return getRecordsForDate(date).isNotEmpty;
  }

  List<LeaveRecord> getPendingRecords() {
    return state.leaveRecords
        .where((record) => record.status == 'Normal')
        .toList();
  }

  List<LeaveRecord> getApprovedRecords() {
    return state.leaveRecords
        .where((record) => record.status == 'Leave')
        .toList();
  }

  Future<void> submitLeaveRequest(LeaveRequest request) async {
    emit(state.copyWith(isLoading: true, error: null));

    try {
      await _repository.submitLeaveRequest(request);
      await loadLeaveRecords(); // 重新載入請假記錄
      emit(state.copyWith(
        isLoading: false,
        error: null, // 成功时清除错误
      ));
    } catch (e) {
      final errorMessage = e.toString();
      // 使用固定的 key
      emit(state.copyWith(
          isLoading: false,
          error: errorMessage.contains('already been made')
              ? 'duplicate_leave_request'
              : 'leave_request_failed'));
    }
  }
}
