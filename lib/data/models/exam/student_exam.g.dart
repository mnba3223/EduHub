// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_exam.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentExamImpl _$$StudentExamImplFromJson(Map<String, dynamic> json) =>
    _$StudentExamImpl(
      examId: (json['exam_id'] as num).toInt(),
      lessonId: (json['lesson_id'] as num).toInt(),
      examName: json['exam_name'] as String,
      examDescription: json['exam_description'] as String,
      uploadFile: json['upload_file'] as String?,
      examDate: DateTime.parse(json['exam_date'] as String),
      lessonTitle: json['lesson_title'] as String,
      lessonDescription: json['lesson_description'] as String?,
      teacherId: (json['teacher_id'] as num).toInt(),
      teacherName: json['teacher_name'] as String,
      score: (json['score'] as num?)?.toInt(),
      scoreDesc: json['score_desc'] as String?,
      isScore: json['isScore'] as bool? ?? false,
    );

Map<String, dynamic> _$$StudentExamImplToJson(_$StudentExamImpl instance) =>
    <String, dynamic>{
      'exam_id': instance.examId,
      'lesson_id': instance.lessonId,
      'exam_name': instance.examName,
      'exam_description': instance.examDescription,
      'upload_file': instance.uploadFile,
      'exam_date': instance.examDate.toIso8601String(),
      'lesson_title': instance.lessonTitle,
      'lesson_description': instance.lessonDescription,
      'teacher_id': instance.teacherId,
      'teacher_name': instance.teacherName,
      'score': instance.score,
      'score_desc': instance.scoreDesc,
      'isScore': instance.isScore,
    };
