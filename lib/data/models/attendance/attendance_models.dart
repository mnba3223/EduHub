// attendance_models.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_models.freezed.dart';
part 'attendance_models.g.dart';

@freezed
class AttendanceCourseRecord with _$AttendanceCourseRecord {
  const factory AttendanceCourseRecord({
    required String id,
    required String courseId,
    required String courseName,
    required DateTime startTime,
    required DateTime endTime,
    required String classroom,
    required String teacherName,
    required AttendanceStatus status,
    LeaveRequestRecord? leaveRequest,
  }) = _AttendanceCourseRecord;

  factory AttendanceCourseRecord.fromJson(Map<String, dynamic> json) =>
      _$AttendanceCourseRecordFromJson(json);
}

@freezed
class LeaveRequestRecord with _$LeaveRequestRecord {
  const factory LeaveRequestRecord({
    required String id,
    required String attendanceRecordId,
    required String reason,
    required DateTime requestTime,
    required LeaveStatus status,
    DateTime? reviewTime,
    String? reviewNote,
  }) = _LeaveRequestRecord;

  factory LeaveRequestRecord.fromJson(Map<String, dynamic> json) =>
      _$LeaveRequestRecordFromJson(json);
}

@freezed
class AttendanceStatistics with _$AttendanceStatistics {
  const factory AttendanceStatistics({
    required int totalClasses,
    required int presentCount,
    required int absentCount,
    required int lateCount,
    required int leaveCount,
    required double attendanceRate,
  }) = _AttendanceStatistics;

  factory AttendanceStatistics.fromJson(Map<String, dynamic> json) =>
      _$AttendanceStatisticsFromJson(json);
}

@freezed
class LeaveRequestForm with _$LeaveRequestForm {
  const factory LeaveRequestForm({
    required String attendanceRecordId,
    required String reason,
    required DateTime requestTime,
  }) = _LeaveRequestForm;

  factory LeaveRequestForm.fromJson(Map<String, dynamic> json) =>
      _$LeaveRequestFormFromJson(json);
}

enum AttendanceStatus {
  ///出席
  present, //出席
  notAttended, // 未出席(課程尚未開始或進行中,可以請假)
  absent,
  late,
  leave
}

enum LeaveStatus { pending, approved, rejected }
