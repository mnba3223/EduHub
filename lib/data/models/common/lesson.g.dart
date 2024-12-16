// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonImpl _$$LessonImplFromJson(Map<String, dynamic> json) => _$LessonImpl(
      classId: (json['class_id'] as num).toInt(),
      className: json['class_name'] as String,
      startDate: DateTime.parse(json['start_date'] as String),
      endDate: DateTime.parse(json['end_date'] as String),
      weekdays: json['weekdays'] as String,
      weekdaysArray: (json['WeekdaysArray'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      lessonId: (json['lesson_id'] as num).toInt(),
      teacherId: (json['teacher_id'] as num).toInt(),
      classroomId: (json['classroom_id'] as num).toInt(),
      courseId: (json['course_id'] as num).toInt(),
      lessonDate: DateTime.parse(json['lesson_date'] as String),
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
      teacherName: json['teacher_name'] as String,
      courseName: json['course_name'] as String,
      courseColor: json['course_color'] as String,
      courseImage: json['course_image'] as String?,
      subjectName: json['subject_name'] as String,
      color: json['color'] as String,
      image: json['image'] as String?,
      classroomName: json['classroom_name'] as String,
      leaveRequested: (json['leave_requested'] as num).toInt(),
      substituteTeacherId: (json['substitute_teacher_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LessonImplToJson(_$LessonImpl instance) =>
    <String, dynamic>{
      'class_id': instance.classId,
      'class_name': instance.className,
      'start_date': instance.startDate.toIso8601String(),
      'end_date': instance.endDate.toIso8601String(),
      'weekdays': instance.weekdays,
      'WeekdaysArray': instance.weekdaysArray,
      'lesson_id': instance.lessonId,
      'teacher_id': instance.teacherId,
      'classroom_id': instance.classroomId,
      'course_id': instance.courseId,
      'lesson_date': instance.lessonDate.toIso8601String(),
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'teacher_name': instance.teacherName,
      'course_name': instance.courseName,
      'course_color': instance.courseColor,
      'course_image': instance.courseImage,
      'subject_name': instance.subjectName,
      'color': instance.color,
      'image': instance.image,
      'classroom_name': instance.classroomName,
      'leave_requested': instance.leaveRequested,
      'substitute_teacher_id': instance.substituteTeacherId,
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
