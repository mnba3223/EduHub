// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homework.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeworkImpl _$$HomeworkImplFromJson(Map<String, dynamic> json) =>
    _$HomeworkImpl(
      submissionId: (json['submission_id'] as num).toInt(),
      id: (json['homework_id'] as num).toInt(),
      studentId: (json['student_id'] as num).toInt(),
      description: json['homework_desciption'] as String,
      startTime: DateTime.parse(json['homework_start_time'] as String),
      dueDate: DateTime.parse(json['homework_end_time'] as String),
      courseName: json['lesson_title'] as String,
      courseDescription: json['lesson_description'] as String?,
      status: $enumDecode(_$HomeworkStatusEnumMap, json['status'],
          unknownValue: HomeworkStatus.pending),
      submitDate: json['submission_time'] == null
          ? null
          : DateTime.parse(json['submission_time'] as String),
      attachmentUrl: json['upload_file'] as String?,
      teacherComment: json['comment'] as String?,
      score: (json['rating'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$HomeworkImplToJson(_$HomeworkImpl instance) =>
    <String, dynamic>{
      'submission_id': instance.submissionId,
      'homework_id': instance.id,
      'student_id': instance.studentId,
      'homework_desciption': instance.description,
      'homework_start_time': instance.startTime.toIso8601String(),
      'homework_end_time': instance.dueDate.toIso8601String(),
      'lesson_title': instance.courseName,
      'lesson_description': instance.courseDescription,
      'status': _$HomeworkStatusEnumMap[instance.status]!,
      'submission_time': instance.submitDate?.toIso8601String(),
      'upload_file': instance.attachmentUrl,
      'comment': instance.teacherComment,
      'rating': instance.score,
    };

const _$HomeworkStatusEnumMap = {
  HomeworkStatus.pending: 'pending',
  HomeworkStatus.submitted: 'submitted',
  HomeworkStatus.graded: 'graded',
  HomeworkStatus.overdue: 'overdue',
};
