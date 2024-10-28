// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homework.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeworkImpl _$$HomeworkImplFromJson(Map<String, dynamic> json) =>
    _$HomeworkImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      dueDate: DateTime.parse(json['dueDate'] as String),
      courseId: json['courseId'] as String,
      courseName: json['courseName'] as String,
      status: $enumDecode(_$HomeworkStatusEnumMap, json['status']),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      submitContent: json['submitContent'] as String?,
      attachmentUrls: (json['attachmentUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      submitDate: json['submitDate'] == null
          ? null
          : DateTime.parse(json['submitDate'] as String),
      score: (json['score'] as num?)?.toInt(),
      teacherComment: json['teacherComment'] as String?,
    );

Map<String, dynamic> _$$HomeworkImplToJson(_$HomeworkImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'dueDate': instance.dueDate.toIso8601String(),
      'courseId': instance.courseId,
      'courseName': instance.courseName,
      'status': _$HomeworkStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt?.toIso8601String(),
      'submitContent': instance.submitContent,
      'attachmentUrls': instance.attachmentUrls,
      'submitDate': instance.submitDate?.toIso8601String(),
      'score': instance.score,
      'teacherComment': instance.teacherComment,
    };

const _$HomeworkStatusEnumMap = {
  HomeworkStatus.pending: 'pending',
  HomeworkStatus.submitted: 'submitted',
  HomeworkStatus.graded: 'graded',
  HomeworkStatus.overdue: 'overdue',
};

_$HomeworkListResponseImpl _$$HomeworkListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeworkListResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => Homework.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomeworkListResponseImplToJson(
        _$HomeworkListResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$HomeworkDetailResponseImpl _$$HomeworkDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeworkDetailResponseImpl(
      data: Homework.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeworkDetailResponseImplToJson(
        _$HomeworkDetailResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
