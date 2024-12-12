// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceRecordImpl _$$AttendanceRecordImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceRecordImpl(
      attendanceId: (json['attendance_id'] as num).toInt(),
      studentId: (json['student_id'] as num).toInt(),
      attendanceDate: DateTime.parse(json['attendance_date'] as String),
      temperature: (json['temperature'] as num).toDouble(),
      attendanceStatus: json['attendance_status'] as String?,
      attendanceImage: json['attendance_image'] as String?,
      studentName: json['student_name'] as String,
      studentCode: json['student_code'] as String,
    );

Map<String, dynamic> _$$AttendanceRecordImplToJson(
        _$AttendanceRecordImpl instance) =>
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

_$StudentLeaveRecordImpl _$$StudentLeaveRecordImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentLeaveRecordImpl(
      lessonId: (json['lesson_id'] as num).toInt(),
      studentId: (json['student_id'] as num).toInt(),
      status: json['status'] as String,
      leaveRequested: (json['leave_requested'] as num).toInt(),
      leaveStatus: json['leave_status'] as String,
      leaveReason: json['leave_reason'] as String,
      leaveRequestDate: DateTime.parse(json['leave_request_date'] as String),
      adjustmentTypeId: (json['adjustment_type_id'] as num).toInt(),
      studentName: json['student_name'] as String,
      className: json['class_name'] as String,
      lessonDate: DateTime.parse(json['lesson_date'] as String),
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
      adjustmentType: json['adjustment_type'] as String,
      makeupArranged: (json['makeup_arranged'] as num).toInt(),
    );

Map<String, dynamic> _$$StudentLeaveRecordImplToJson(
        _$StudentLeaveRecordImpl instance) =>
    <String, dynamic>{
      'lesson_id': instance.lessonId,
      'student_id': instance.studentId,
      'status': instance.status,
      'leave_requested': instance.leaveRequested,
      'leave_status': instance.leaveStatus,
      'leave_reason': instance.leaveReason,
      'leave_request_date': instance.leaveRequestDate.toIso8601String(),
      'adjustment_type_id': instance.adjustmentTypeId,
      'student_name': instance.studentName,
      'class_name': instance.className,
      'lesson_date': instance.lessonDate.toIso8601String(),
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'adjustment_type': instance.adjustmentType,
      'makeup_arranged': instance.makeupArranged,
    };

_$AttendanceResponseImpl _$$AttendanceResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceResponseImpl(
      Attendance: (json['Attendance'] as List<dynamic>?)
          ?.map((e) => AttendanceRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
      Leave: (json['Leave'] as List<dynamic>?)
          ?.map((e) => StudentLeaveRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AttendanceResponseImplToJson(
        _$AttendanceResponseImpl instance) =>
    <String, dynamic>{
      'Attendance': instance.Attendance,
      'Leave': instance.Leave,
    };
