import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_models.freezed.dart';
part 'attendance_models.g.dart';

@freezed
class AttendanceRecord with _$AttendanceRecord {
  const factory AttendanceRecord({
    @JsonKey(name: 'attendance_id') required int attendanceId,
    @JsonKey(name: 'student_id') required int studentId,
    @JsonKey(name: 'attendance_date') required DateTime attendanceDate,
    required double temperature,
    @JsonKey(name: 'attendance_status') String? attendanceStatus,
    @JsonKey(name: 'attendance_image') String? attendanceImage,
    @JsonKey(name: 'student_name') required String studentName,
    @JsonKey(name: 'student_code') required String studentCode,
  }) = _AttendanceRecord;

  factory AttendanceRecord.fromJson(Map<String, dynamic> json) =>
      _$AttendanceRecordFromJson(json);
}

@freezed
class StudentLeaveRecord with _$StudentLeaveRecord {
  const factory StudentLeaveRecord({
    @JsonKey(name: 'lesson_id') required int lessonId,
    @JsonKey(name: 'student_id') required int studentId,
    required String status,
    @JsonKey(name: 'leave_requested') required int leaveRequested,
    @JsonKey(name: 'leave_status') required String leaveStatus,
    @JsonKey(name: 'leave_reason') required String leaveReason,
    @JsonKey(name: 'leave_request_date') required DateTime leaveRequestDate,
    @JsonKey(name: 'adjustment_type_id') required int adjustmentTypeId,
    @JsonKey(name: 'student_name') required String studentName,
    @JsonKey(name: 'class_name') required String className,
    @JsonKey(name: 'lesson_date') required DateTime lessonDate,
    @JsonKey(name: 'start_time') required String startTime,
    @JsonKey(name: 'end_time') required String endTime,
    @JsonKey(name: 'adjustment_type') required String adjustmentType,
    @JsonKey(name: 'makeup_arranged') required int makeupArranged,
  }) = _StudentLeaveRecord;

  factory StudentLeaveRecord.fromJson(Map<String, dynamic> json) =>
      _$StudentLeaveRecordFromJson(json);
}

@freezed
class AttendanceResponse with _$AttendanceResponse {
  const factory AttendanceResponse({
    List<AttendanceRecord>? Attendance,
    List<StudentLeaveRecord>? Leave,
  }) = _AttendanceResponse;

  factory AttendanceResponse.fromJson(Map<String, dynamic> json) =>
      _$AttendanceResponseFromJson(json);
}

enum AttendanceStatus {
  @JsonValue('CheckIn')
  checkIn,
  @JsonValue('CheckOut')
  checkOut,
  @JsonValue('Late')
  late,
  @JsonValue('Absent')
  absent,
  @JsonValue('Leave')
  leave,
}

enum LeaveStatus {
  @JsonValue('Pending')
  pending,
  @JsonValue('Approved')
  approved,
  @JsonValue('Rejected')
  rejected,
}

@freezed
class AttendanceState with _$AttendanceState {
  const factory AttendanceState({
    @Default([]) List<AttendanceRecord> attendanceRecords,
    @Default([]) List<StudentLeaveRecord> leaveRecords,
    @Default(null) DateTime? selectedDate,
    @Default(false) bool isLoading,
    String? error,
  }) = _AttendanceState;
}
