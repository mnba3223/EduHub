// models/teacher/teacher_exam.dart
import 'dart:io';
import 'package:edutec_hub/data/models/common/lesson.dart';
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
    @JsonKey(name: 'class_name')
    required String className, // Changed from lessonTitle

    @JsonKey(name: 'teacher_id') required int teacherId,
    @JsonKey(name: 'teacher_name') required String teacherName,
    @JsonKey(name: 'total_students') int? totalStudents,
    @JsonKey(name: 'rating_count') int? ratingCount,
  }) = _TeacherExam;

  factory TeacherExam.fromJson(Map<String, dynamic> json) =>
      _$TeacherExamFromJson(json);
}

@freezed
class TeacherExamRegistration with _$TeacherExamRegistration {
  const factory TeacherExamRegistration({
    @JsonKey(name: 'registration_id') required int registrationId,
    @JsonKey(name: 'exam_id') required int examId,
    @JsonKey(name: 'student_id') required int studentId,
    @JsonKey(name: 'score') int? score,
    @JsonKey(name: 'score_desc') String? scoreDesc, // Added new field
    @JsonKey(name: 'lesson_id') required int lessonId,
    @JsonKey(name: 'exam_name') required String examName,
    @JsonKey(name: 'exam_description') required String examDescription,
    @JsonKey(
      name: 'exam_date',
      fromJson: _dateFromJson,
      toJson: _dateToJson,
    )
    required DateTime examDate,
    @JsonKey(name: 'class_name')
    required String className, // Changed from lessonTitle
    @JsonKey(name: 'lesson_description') String? lessonDescription,
    @JsonKey(name: 'total_students') required int totalStudents,
    @JsonKey(name: 'rating_count') required int ratingCount,
    @JsonKey(name: 'student_name') required String studentName,
  }) = _TeacherExamRegistration;

  factory TeacherExamRegistration.fromJson(Map<String, dynamic> json) =>
      _$TeacherExamRegistrationFromJson(json);
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
    @JsonKey(name: 'upload_file') String? uploadFile,
    @JsonKey(includeFromJson: false, includeToJson: false) File? uploadedFile,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(false)
    bool keepExistingFile,
  }) = _ExamCreateRequest;

  factory ExamCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$ExamCreateRequestFromJson(json);
}

@freezed
class TeacherExamState with _$TeacherExamState {
  const factory TeacherExamState({
    @Default([]) List<TeacherExam> exams,
    @Default([]) List<TeacherExam> filteredExams,
    @Default([]) List<TeacherExamRegistration> registrations,
    @Default([]) List<Lesson> availableLessons,
    required DateTime selectedDate,
    required DateTime focusedDay,
    Lesson? selectedLesson, // 修改为 Lesson 类型
    @Default([]) List<Lesson> lessons, // 修改为 List<Lesson>
    @Default(false) bool isLoading,
    String? error,
    @Default(false) bool isEditing,
    TeacherExam? editingExam,
  }) = _TeacherExamState;
}
