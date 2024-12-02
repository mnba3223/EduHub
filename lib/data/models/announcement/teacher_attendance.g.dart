// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_attendance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherAttendanceImpl _$$TeacherAttendanceImplFromJson(
        Map<String, dynamic> json) =>
    _$TeacherAttendanceImpl(
      attendanceId: (json['attendance_id'] as num).toInt(),
      studentId: (json['student_id'] as num).toInt(),
      attendanceDate: DateTime.parse(json['attendance_date'] as String),
      temperature: (json['temperature'] as num).toDouble(),
      attendanceStatus: json['attendance_status'] as String?,
      attendanceImage: json['attendance_image'] as String?,
      studentName: json['student_name'] as String,
      studentCode: json['student_code'] as String,
    );

Map<String, dynamic> _$$TeacherAttendanceImplToJson(
        _$TeacherAttendanceImpl instance) =>
    <String, dynamic>{
      'attendance_id': instance.attendanceId,
      'student_id': instance.studentId,
      'attendance_date': instance.attendanceDate.toIso8601String(),
      'temperature': instance.temperature,
      'attendance_status': instance.attendanceStatus,
      'attendance_image': instance.attendanceImage,
      'student_name': instance.studentName,
      'student_code': instance.studentCode,
    };
