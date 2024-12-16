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
      className: json['class_name'] as String,
      teacherId: (json['teacher_id'] as num).toInt(),
      teacherName: json['teacher_name'] as String,
      totalStudents: (json['total_students'] as num?)?.toInt(),
      ratingCount: (json['rating_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TeacherExamImplToJson(_$TeacherExamImpl instance) =>
    <String, dynamic>{
      'exam_id': instance.examId,
      'lesson_id': instance.lessonId,
      'exam_name': instance.examName,
      'exam_description': instance.examDescription,
      'upload_file': instance.uploadFile,
      'exam_date': _dateToJson(instance.examDate),
      'class_name': instance.className,
      'teacher_id': instance.teacherId,
      'teacher_name': instance.teacherName,
      'total_students': instance.totalStudents,
      'rating_count': instance.ratingCount,
    };

_$TeacherExamRegistrationImpl _$$TeacherExamRegistrationImplFromJson(
        Map<String, dynamic> json) =>
    _$TeacherExamRegistrationImpl(
      registrationId: (json['registration_id'] as num).toInt(),
      examId: (json['exam_id'] as num).toInt(),
      studentId: (json['student_id'] as num).toInt(),
      score: (json['score'] as num?)?.toInt(),
      scoreDesc: json['score_desc'] as String?,
      lessonId: (json['lesson_id'] as num).toInt(),
      examName: json['exam_name'] as String,
      examDescription: json['exam_description'] as String,
      examDate: _dateFromJson(json['exam_date'] as String),
      className: json['class_name'] as String,
      lessonDescription: json['lesson_description'] as String?,
      totalStudents: (json['total_students'] as num).toInt(),
      ratingCount: (json['rating_count'] as num).toInt(),
      studentName: json['student_name'] as String,
    );

Map<String, dynamic> _$$TeacherExamRegistrationImplToJson(
        _$TeacherExamRegistrationImpl instance) =>
    <String, dynamic>{
      'registration_id': instance.registrationId,
      'exam_id': instance.examId,
      'student_id': instance.studentId,
      'score': instance.score,
      'score_desc': instance.scoreDesc,
      'lesson_id': instance.lessonId,
      'exam_name': instance.examName,
      'exam_description': instance.examDescription,
      'exam_date': _dateToJson(instance.examDate),
      'class_name': instance.className,
      'lesson_description': instance.lessonDescription,
      'total_students': instance.totalStudents,
      'rating_count': instance.ratingCount,
      'student_name': instance.studentName,
    };

_$ExamCreateRequestImpl _$$ExamCreateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ExamCreateRequestImpl(
      examName: json['exam_name'] as String,
      examDescription: json['exam_description'] as String,
      lessonId: (json['lesson_id'] as num).toInt(),
      examDate: _dateFromJson(json['exam_date'] as String),
      uploadFile: json['upload_file'] as String?,
    );

Map<String, dynamic> _$$ExamCreateRequestImplToJson(
        _$ExamCreateRequestImpl instance) =>
    <String, dynamic>{
      'exam_name': instance.examName,
      'exam_description': instance.examDescription,
      'lesson_id': instance.lessonId,
      'exam_date': _dateToJson(instance.examDate),
      'upload_file': instance.uploadFile,
    };
