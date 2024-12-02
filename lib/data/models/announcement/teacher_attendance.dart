import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_attendance.freezed.dart';
part 'teacher_attendance.g.dart';

@freezed
class TeacherAttendance with _$TeacherAttendance {
  const factory TeacherAttendance({
    @JsonKey(name: 'attendance_id') required int attendanceId,
    @JsonKey(name: 'student_id') required int studentId,
    @JsonKey(name: 'attendance_date') required DateTime attendanceDate,
    required double temperature,
    @JsonKey(name: 'attendance_status') String? attendanceStatus,
    @JsonKey(name: 'attendance_image') String? attendanceImage,
    @JsonKey(name: 'student_name') required String studentName,
    @JsonKey(name: 'student_code') required String studentCode,
  }) = _TeacherAttendance;

  factory TeacherAttendance.fromJson(Map<String, dynamic> json) =>
      _$TeacherAttendanceFromJson(json);
}

@freezed
class TeacherAttendanceState with _$TeacherAttendanceState {
  const factory TeacherAttendanceState({
    @Default([]) List<TeacherAttendance> attendances,
    @Default(true) bool isLoading,
    String? error,
    DateTime? selectedDate,
    String? selectedStudent,
    @Default([]) List<String> students,
  }) = _TeacherAttendanceState;
}
