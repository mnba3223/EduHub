// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_exam.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherExamImpl _$$TeacherExamImplFromJson(Map<String, dynamic> json) =>
    _$TeacherExamImpl(
      examId: (json['exam_id'] as num).toInt(),
      lessonId: (json['lesson_id'] as num).toInt(),
      examName: json['exam_name'] as String,
      examDescription: json['exam_description'] as String,
      uploadFile: json['upload_file'] as String?,
      examDate: _dateFromJson(json['exam_date'] as String),
      lessonTitle: json['lesson_title'] as String,
      lessonDescription: json['lesson_description'] as String?,
      teacherId: (json['teacher_id'] as num).toInt(),
      teacherName: json['teacher_name'] as String,
    );

Map<String, dynamic> _$$TeacherExamImplToJson(_$TeacherExamImpl instance) =>
    <String, dynamic>{
      'exam_id': instance.examId,
      'lesson_id': instance.lessonId,
      'exam_name': instance.examName,
      'exam_description': instance.examDescription,
      'upload_file': instance.uploadFile,
      'exam_date': _dateToJson(instance.examDate),
      'lesson_title': instance.lessonTitle,
      'lesson_description': instance.lessonDescription,
      'teacher_id': instance.teacherId,
      'teacher_name': instance.teacherName,
    };

_$ExamCreateRequestImpl _$$ExamCreateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ExamCreateRequestImpl(
      examName: json['exam_name'] as String,
      examDescription: json['exam_description'] as String,
      lessonId: (json['lesson_id'] as num).toInt(),
      examDate: _dateFromJson(json['exam_date'] as String),
    );

Map<String, dynamic> _$$ExamCreateRequestImplToJson(
        _$ExamCreateRequestImpl instance) =>
    <String, dynamic>{
      'exam_name': instance.examName,
      'exam_description': instance.examDescription,
      'lesson_id': instance.lessonId,
      'exam_date': _dateToJson(instance.examDate),
    };
