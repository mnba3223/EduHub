// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
      courseId: (json['course_id'] as num).toInt(),
      courseName: json['course_name'] as String,
      courseDescription: json['course_description'] as String?,
      subjectId: (json['subject_id'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      courseColor: json['course_color'] as String? ?? '#4A90E2',
      courseImage: json['course_image'] as String?,
      subjectName: json['subject_name'] as String,
      subjectDescription: json['subject_description'] as String?,
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'course_id': instance.courseId,
      'course_name': instance.courseName,
      'course_description': instance.courseDescription,
      'subject_id': instance.subjectId,
      'price': instance.price,
      'course_color': instance.courseColor,
      'course_image': instance.courseImage,
      'subject_name': instance.subjectName,
      'subject_description': instance.subjectDescription,
      'currency': instance.currency,
    };

_$StudentLessonImpl _$$StudentLessonImplFromJson(Map<String, dynamic> json) =>
    _$StudentLessonImpl(
      classId: (json['class_id'] as num).toInt(),
      className: json['class_name'] as String,
      lessonId: (json['lesson_id'] as num).toInt(),
      lessonDate: DateTime.parse(json['lesson_date'] as String),
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
      courseName: json['course_name'] as String,
      classroomName: json['classroom_name'] as String,
      courseColor: json['course_color'] as String? ?? '#4A90E2',
      courseImage: json['course_image'] as String?,
      subjectName: json['subject_name'] as String,
    );

Map<String, dynamic> _$$StudentLessonImplToJson(_$StudentLessonImpl instance) =>
    <String, dynamic>{
      'class_id': instance.classId,
      'class_name': instance.className,
      'lesson_id': instance.lessonId,
      'lesson_date': instance.lessonDate.toIso8601String(),
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'course_name': instance.courseName,
      'classroom_name': instance.classroomName,
      'course_color': instance.courseColor,
      'course_image': instance.courseImage,
      'subject_name': instance.subjectName,
    };
