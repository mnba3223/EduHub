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
      lessonTitle: json['lesson_title'] as String,
      lessonDescription: json['lesson_description'] as String?,
      status: $enumDecode(_$HomeworkStatusEnumMap, json['status'],
          unknownValue: HomeworkStatus.pending),
      teacherId: (json['teacher_id'] as num).toInt(),
      teacherName: json['teacher_name'] as String,
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
      'lesson_title': instance.lessonTitle,
      'lesson_description': instance.lessonDescription,
      'status': _$HomeworkStatusEnumMap[instance.status]!,
      'teacher_id': instance.teacherId,
      'teacher_name': instance.teacherName,
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
      homework_id: (json['homework_id'] as num).toInt(),
      studentId: (json['student_id'] as num).toInt(),
      description: json['homework_description'] as String,
      startTime: DateTime.parse(json['homework_start_time'] as String),
      endTime: DateTime.parse(json['homework_end_time'] as String),
      lessonTitle: json['lesson_title'] as String,
      lessonDescription: json['lesson_description'] as String?,
      status: $enumDecode(_$HomeworkStatusEnumMap, json['status'],
          unknownValue: HomeworkStatus.pending),
      submitDate: json['submission_time'] == null
          ? null
          : DateTime.parse(json['submission_time'] as String),
      uploadFile: json['upload_file'] as String?,
      uploadFileUrls: (json['upload_file_urls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      comment: json['comment'] as String?,
      score: (json['rating'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$HomeworkSubmissionImplToJson(
        _$HomeworkSubmissionImpl instance) =>
    <String, dynamic>{
      'submission_id': instance.submissionId,
      'homework_id': instance.homework_id,
      'student_id': instance.studentId,
      'homework_description': instance.description,
      'homework_start_time': instance.startTime.toIso8601String(),
      'homework_end_time': instance.endTime.toIso8601String(),
      'lesson_title': instance.lessonTitle,
      'lesson_description': instance.lessonDescription,
      'status': _$HomeworkStatusEnumMap[instance.status]!,
      'submission_time': instance.submitDate?.toIso8601String(),
      'upload_file': instance.uploadFile,
      'upload_file_urls': instance.uploadFileUrls,
      'comment': instance.comment,
      'rating': instance.score,
    };
