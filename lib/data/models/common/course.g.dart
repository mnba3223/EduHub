// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
      courseId: (json['course_id'] as num).toInt(),
      courseName: json['course_name'] as String,
      subjectId: (json['subject_id'] as num).toInt(),
      courseDescription: json['course_description'] as String?,
      courseColor: json['course_color'] as String,
      courseCategory: json['course_category'] as String?,
      courseImage: json['course_image'] as String,
      courseType: json['course_type'] as String,
      subjectName: json['subject_name'] as String,
      subjectDescription: json['subject_description'] as String?,
      sort: (json['sort'] as num).toInt(),
    );

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'course_id': instance.courseId,
      'course_name': instance.courseName,
      'subject_id': instance.subjectId,
      'course_description': instance.courseDescription,
      'course_color': instance.courseColor,
      'course_category': instance.courseCategory,
      'course_image': instance.courseImage,
      'course_type': instance.courseType,
      'subject_name': instance.subjectName,
      'subject_description': instance.subjectDescription,
      'sort': instance.sort,
    };
