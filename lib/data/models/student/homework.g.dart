// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homework.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeworkListItemImpl _$$HomeworkListItemImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeworkListItemImpl(
      homeworkId: (json['homework_id'] as num).toInt(),
      lessonId: (json['lesson_id'] as num).toInt(),
      description: json['homework_description'] as String,
      startTime: DateTime.parse(json['homework_start_time'] as String),
      endTime: DateTime.parse(json['homework_end_time'] as String),
      attachmentUrl: json['upload_file'] as String?,
      className: json['class_name'] as String,
      classroomName: json['classroom_name'] as String,
      status: $enumDecode(_$HomeworkStatusEnumMap, json['status'],
          unknownValue: HomeworkStatus.pending),
      teacherId: (json['teacher_id'] as num).toInt(),
      teacherName: json['teacher_name'] as String,
      totalStudents: (json['total_students'] as num).toInt(),
      submittedCount: (json['submitted_count'] as num).toInt(),
      ratingCount: (json['rating_count'] as num).toInt(),
    );

Map<String, dynamic> _$$HomeworkListItemImplToJson(
        _$HomeworkListItemImpl instance) =>
    <String, dynamic>{
      'homework_id': instance.homeworkId,
      'lesson_id': instance.lessonId,
      'homework_description': instance.description,
      'homework_start_time': instance.startTime.toIso8601String(),
      'homework_end_time': instance.endTime.toIso8601String(),
      'upload_file': instance.attachmentUrl,
      'class_name': instance.className,
      'classroom_name': instance.classroomName,
      'status': _$HomeworkStatusEnumMap[instance.status]!,
      'teacher_id': instance.teacherId,
      'teacher_name': instance.teacherName,
      'total_students': instance.totalStudents,
      'submitted_count': instance.submittedCount,
      'rating_count': instance.ratingCount,
    };

const _$HomeworkStatusEnumMap = {
  HomeworkStatus.pending: 'pending',
  HomeworkStatus.submit: 'submit',
  HomeworkStatus.graded: 'graded',
  HomeworkStatus.overdue: 'overdue',
};

_$HomeworkSubmissionImpl _$$HomeworkSubmissionImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeworkSubmissionImpl(
      submissionId: (json['submission_id'] as num).toInt(),
      homeworkId: (json['homework_id'] as num).toInt(),
      studentId: (json['student_id'] as num).toInt(),
      studentName: json['student_name'] as String,
      submissionTime: json['submission_time'] == null
          ? null
          : DateTime.parse(json['submission_time'] as String),
      comment: json['comment'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      uploadFile: json['upload_file'] as String?,
      uploadFileUrls: (json['upload_file_urls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      status: $enumDecode(_$HomeworkStatusEnumMap, json['status'],
          unknownValue: HomeworkStatus.pending),
      lessonId: (json['lesson_id'] as num).toInt(),
      homeworkDescription: json['homework_description'] as String,
      startTime: DateTime.parse(json['homework_start_time'] as String),
      endTime: DateTime.parse(json['homework_end_time'] as String),
      className: json['class_name'] as String,
      hasAttachment: json['has_Attachment'] as bool,
      hasRating: json['has_rating'] as bool,
    );

Map<String, dynamic> _$$HomeworkSubmissionImplToJson(
        _$HomeworkSubmissionImpl instance) =>
    <String, dynamic>{
      'submission_id': instance.submissionId,
      'homework_id': instance.homeworkId,
      'student_id': instance.studentId,
      'student_name': instance.studentName,
      'submission_time': instance.submissionTime?.toIso8601String(),
      'comment': instance.comment,
      'rating': instance.rating,
      'upload_file': instance.uploadFile,
      'upload_file_urls': instance.uploadFileUrls,
      'status': _$HomeworkStatusEnumMap[instance.status]!,
      'lesson_id': instance.lessonId,
      'homework_description': instance.homeworkDescription,
      'homework_start_time': instance.startTime.toIso8601String(),
      'homework_end_time': instance.endTime.toIso8601String(),
      'class_name': instance.className,
      'has_Attachment': instance.hasAttachment,
      'has_rating': instance.hasRating,
    };
