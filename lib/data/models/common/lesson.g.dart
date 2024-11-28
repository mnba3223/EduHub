// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonImpl _$$LessonImplFromJson(Map<String, dynamic> json) => _$LessonImpl(
      lessonId: (json['lesson_id'] as num).toInt(),
      lessonTitle: json['lesson_title'] as String,
      lessonDescription: json['lesson_description'] as String?,
      teacherId: (json['teacher_id'] as num?)?.toInt(),
      classroomId: (json['classroom_id'] as num?)?.toInt(),
      courseId: (json['course_id'] as num?)?.toInt(),
      lessonDate: DateTime.parse(json['lesson_date'] as String),
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
      teacherName: json['teacher_name'] as String?,
      courseName: json['course_name'] as String?,
      subjectName: json['subject_name'] as String?,
      classroomName: json['classroom_name'] as String?,
    );

Map<String, dynamic> _$$LessonImplToJson(_$LessonImpl instance) =>
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
      'teacher_name': instance.teacherName,
      'course_name': instance.courseName,
      'subject_name': instance.subjectName,
      'classroom_name': instance.classroomName,
    };

_$LessonQueryParamsImpl _$$LessonQueryParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$LessonQueryParamsImpl(
      teacherId: (json['teacherId'] as num?)?.toInt(),
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
    );

Map<String, dynamic> _$$LessonQueryParamsImplToJson(
        _$LessonQueryParamsImpl instance) =>
    <String, dynamic>{
      'teacherId': instance.teacherId,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };

_$LessonStudentImpl _$$LessonStudentImplFromJson(Map<String, dynamic> json) =>
    _$LessonStudentImpl(
      lessonId: (json['lesson_id'] as num).toInt(),
      studentId: (json['student_id'] as num).toInt(),
      studentName: json['student_name'] as String,
      status: json['status'] as String,
      leaveReason: json['leave_reason'] as String?,
    );

Map<String, dynamic> _$$LessonStudentImplToJson(_$LessonStudentImpl instance) =>
    <String, dynamic>{
      'lesson_id': instance.lessonId,
      'student_id': instance.studentId,
      'student_name': instance.studentName,
      'status': instance.status,
      'leave_reason': instance.leaveReason,
    };
