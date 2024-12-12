import 'package:freezed_annotation/freezed_annotation.dart';

part 'leave_models.freezed.dart';
part 'leave_models.g.dart';

// 從 API 獲取的請假記錄
@freezed
class LeaveRecord with _$LeaveRecord {
  const factory LeaveRecord({
    @JsonKey(name: 'lesson_id') required int lessonId,
    @JsonKey(name: 'student_id') required int studentId,
    required String status,
    @JsonKey(name: 'leave_requested') required int leaveRequested,
    @JsonKey(name: 'leave_status') required String leaveStatus,
    @JsonKey(name: 'leave_reason') required String leaveReason,
    @JsonKey(name: 'leave_request_date') required DateTime leaveRequestDate,
    @JsonKey(name: 'student_name') required String studentName,
    @JsonKey(name: 'class_name') required String className,
    @JsonKey(name: 'lesson_date') required DateTime lessonDate,
    @JsonKey(name: 'start_time') required String startTime,
    @JsonKey(name: 'end_time') required String endTime,
    @JsonKey(name: 'makeup_arranged') int? makeupArranged,
  }) = _LeaveRecord;

  factory LeaveRecord.fromJson(Map<String, dynamic> json) =>
      _$LeaveRecordFromJson(json);
}

// 請假申請表單
@freezed
class LeaveRequest with _$LeaveRequest {
  const factory LeaveRequest({
    @JsonKey(name: 'lesson_ids') required List<int> lessonIds,
    @JsonKey(name: 'leave_reason') required String leaveReason,
    // 未來可能需要的欄位
    @JsonKey(name: 'leave_type') required String leaveType,
  }) = _LeaveRequest;

  factory LeaveRequest.fromJson(Map<String, dynamic> json) =>
      _$LeaveRequestFromJson(json);
}

// 請假狀態枚舉
enum LeaveStatus {
  @JsonValue('Normal')
  pending,
  @JsonValue('Leave')
  approved,
  rejected, // 保留以供未來使用
}

// Cubit 的狀態
@freezed
class LeaveState with _$LeaveState {
  const factory LeaveState({
    @Default([]) List<LeaveRecord> leaveRecords,
    @Default(null) DateTime? selectedDate,
    @Default(false) bool isLoading,
    @Default(false) bool isDuplicateRequest,
    String? error,
  }) = _LeaveState;
}
