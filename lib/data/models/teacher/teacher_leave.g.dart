// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_leave.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherLeaveImpl _$$TeacherLeaveImplFromJson(Map<String, dynamic> json) =>
    _$TeacherLeaveImpl(
      lessonId: (json['lesson_id'] as num).toInt(),
      lessonTitle: json['lesson_title'] as String,
      lessonDescription: json['lesson_description'] as String,
      teacherId: (json['teacher_id'] as num).toInt(),
      classroomId: (json['classroom_id'] as num).toInt(),
      courseId: (json['course_id'] as num).toInt(),
      lessonDate: DateTime.parse(json['lesson_date'] as String),
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
      lessonPrice: (json['lesson_price'] as num).toDouble(),
      substituteTeacherId: (json['substitute_teacher_id'] as num?)?.toInt(),
      leaveRequested: (json['leave_requested'] as num).toInt(),
      leaveStatus: json['leave_status'] as String,
      leaveRequestDate: DateTime.parse(json['leave_request_date'] as String),
    );

Map<String, dynamic> _$$TeacherLeaveImplToJson(_$TeacherLeaveImpl instance) =>
    <String, dynamic>{
      'lesson_id': instance.lessonId,
      'lesson_title': instance.lessonTitle,
      'lesson_description': instance.lessonDescription,
      'teacher_id': instance.teacherId,
      'classroom_id': instance.classroomId,
      'course_id': instance.courseId,
      'lesson_date': instance.lessonDate.toIso8601String(),
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'lesson_price': instance.lessonPrice,
      'substitute_teacher_id': instance.substituteTeacherId,
      'leave_requested': instance.leaveRequested,
      'leave_status': instance.leaveStatus,
      'leave_request_date': instance.leaveRequestDate.toIso8601String(),
    };
