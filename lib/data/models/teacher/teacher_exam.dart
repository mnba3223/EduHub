// models/teacher/teacher_exam.dart
import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_exam.freezed.dart';
part 'teacher_exam.g.dart';

DateTime _dateFromJson(String date) => DateTime.parse(date);
String _dateToJson(DateTime date) => date.toIso8601String();

@freezed
class TeacherExam with _$TeacherExam {
  const factory TeacherExam({
    @JsonKey(name: 'exam_id') required int examId,
    @JsonKey(name: 'lesson_id') required int lessonId,
    @JsonKey(name: 'exam_name') required String examName,
    @JsonKey(name: 'exam_description') required String examDescription,
    @JsonKey(name: 'upload_file') String? uploadFile,
    @JsonKey(
      name: 'exam_date',
      fromJson: _dateFromJson,
      toJson: _dateToJson,
    )
    required DateTime examDate,
    @JsonKey(name: 'lesson_title') required String lessonTitle,
    @JsonKey(name: 'lesson_description') String? lessonDescription,
    @JsonKey(name: 'teacher_id') required int teacherId,
    @JsonKey(name: 'teacher_name') required String teacherName,
  }) = _TeacherExam;

  factory TeacherExam.fromJson(Map<String, dynamic> json) =>
      _$TeacherExamFromJson(json);
}

@freezed
class ExamCreateRequest with _$ExamCreateRequest {
  const factory ExamCreateRequest({
    @JsonKey(name: 'exam_name') required String examName,
    @JsonKey(name: 'exam_description') required String examDescription,
    @JsonKey(name: 'lesson_id') required int lessonId,
    @JsonKey(
      name: 'exam_date',
      fromJson: _dateFromJson,
      toJson: _dateToJson,
    )
    required DateTime examDate,
    @JsonKey(ignore: true) File? uploadedFile,
  }) = _ExamCreateRequest;

  factory ExamCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$ExamCreateRequestFromJson(json);
}

@freezed
class TeacherExamState with _$TeacherExamState {
  const factory TeacherExamState({
    @Default([]) List<TeacherExam> exams,
    @Default([]) List<TeacherExam> filteredExams,
    required DateTime selectedDate,
    required DateTime focusedDay,
    String? selectedLesson,
    @Default([]) List<String> lessons,
    @Default(false) bool isLoading,
    String? error,
  }) = _TeacherExamState;
}
