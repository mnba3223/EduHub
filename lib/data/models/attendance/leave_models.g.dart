// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeaveRecordImpl _$$LeaveRecordImplFromJson(Map<String, dynamic> json) =>
    _$LeaveRecordImpl(
      lessonId: (json['lesson_id'] as num).toInt(),
      studentId: (json['student_id'] as num).toInt(),
      status: json['status'] as String,
      leaveRequested: (json['leave_requested'] as num).toInt(),
      leaveStatus: json['leave_status'] as String,
      leaveReason: json['leave_reason'] as String,
      leaveRequestDate: DateTime.parse(json['leave_request_date'] as String),
      studentName: json['student_name'] as String,
      className: json['class_name'] as String,
      lessonDate: DateTime.parse(json['lesson_date'] as String),
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
      makeupArranged: (json['makeup_arranged'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LeaveRecordImplToJson(_$LeaveRecordImpl instance) =>
    <String, dynamic>{
      'lesson_id': instance.lessonId,
      'student_id': instance.studentId,
      'status': instance.status,
      'leave_requested': instance.leaveRequested,
      'leave_status': instance.leaveStatus,
      'leave_reason': instance.leaveReason,
      'leave_request_date': instance.leaveRequestDate.toIso8601String(),
      'student_name': instance.studentName,
      'class_name': instance.className,
      'lesson_date': instance.lessonDate.toIso8601String(),
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'makeup_arranged': instance.makeupArranged,
    };

_$LeaveRequestImpl _$$LeaveRequestImplFromJson(Map<String, dynamic> json) =>
    _$LeaveRequestImpl(
      lessonIds: (json['lesson_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      leaveReason: json['leave_reason'] as String,
      leaveType: json['leave_type'] as String,
    );

Map<String, dynamic> _$$LeaveRequestImplToJson(_$LeaveRequestImpl instance) =>
    <String, dynamic>{
      'lesson_ids': instance.lessonIds,
      'leave_reason': instance.leaveReason,
      'leave_type': instance.leaveType,
    };
