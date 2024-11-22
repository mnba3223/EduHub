// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_exam.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentExamImpl _$$StudentExamImplFromJson(Map<String, dynamic> json) =>
    _$StudentExamImpl(
      id: json['id'] as String,
      subject: json['subject'] as String,
      examDate: DateTime.parse(json['examDate'] as String),
      location: json['location'] as String,
      description: json['description'] as String,
      isCompleted: json['isCompleted'] as bool? ?? false,
      completedAt: json['completedAt'] as String?,
    );

Map<String, dynamic> _$$StudentExamImplToJson(_$StudentExamImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subject': instance.subject,
      'examDate': instance.examDate.toIso8601String(),
      'location': instance.location,
      'description': instance.description,
      'isCompleted': instance.isCompleted,
      'completedAt': instance.completedAt,
    };
