// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExamImpl _$$ExamImplFromJson(Map<String, dynamic> json) => _$ExamImpl(
      id: json['id'] as String,
      subject: json['subject'] as String,
      examDate: DateTime.parse(json['examDate'] as String),
      location: json['location'] as String,
      description: json['description'] as String,
      isCompleted: json['isCompleted'] as bool? ?? false,
      completedAt: json['completedAt'] as String?,
    );

Map<String, dynamic> _$$ExamImplToJson(_$ExamImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subject': instance.subject,
      'examDate': instance.examDate.toIso8601String(),
      'location': instance.location,
      'description': instance.description,
      'isCompleted': instance.isCompleted,
      'completedAt': instance.completedAt,
    };
