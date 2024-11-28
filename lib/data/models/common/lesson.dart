// lib/data/models/common/lesson.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson.freezed.dart';
part 'lesson.g.dart';

@freezed
class Lesson with _$Lesson {
  const factory Lesson({
    @JsonKey(name: 'lesson_id') required int lessonId,
    @JsonKey(name: 'lesson_title') required String lessonTitle,
    @JsonKey(name: 'lesson_description') String? lessonDescription,
    @JsonKey(name: 'teacher_id') int? teacherId,
    @JsonKey(name: 'classroom_id') int? classroomId,
    @JsonKey(name: 'course_id') int? courseId,
    @JsonKey(name: 'lesson_date') required DateTime lessonDate,
    @JsonKey(name: 'start_time') required String startTime,
    @JsonKey(name: 'end_time') required String endTime,
    @JsonKey(name: 'teacher_name') String? teacherName,
    @JsonKey(name: 'course_name') String? courseName,
    @JsonKey(name: 'subject_name') String? subjectName,
    @JsonKey(name: 'classroom_name') String? classroomName,
  }) = _Lesson;

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);
}

// 查詢課程的請求參數
@freezed
class LessonQueryParams with _$LessonQueryParams {
  const factory LessonQueryParams({
    @JsonKey(name: 'teacherId') int? teacherId,
    @JsonKey(name: 'startDate') String? startDate,
    @JsonKey(name: 'endDate') String? endDate,
    @JsonKey(name: 'startTime') String? startTime,
    @JsonKey(name: 'endTime') String? endTime,
  }) = _LessonQueryParams;

  factory LessonQueryParams.fromJson(Map<String, dynamic> json) =>
      _$LessonQueryParamsFromJson(json);
}

@freezed
class LessonState with _$LessonState {
  const factory LessonState({
    @Default([]) List<Lesson> lessons,
    @Default([]) List<Lesson> filteredLessons,
    required DateTime selectedDate,
    required DateTime focusedDay,
    String? selectedSubject,
    String? selectedClassroom,
    @Default([]) List<String> subjects,
    @Default([]) List<String> classrooms,
    @Default(false) bool isLoading,
    String? error,
    String? message,
    LessonQueryParams? currentQuery,
  }) = _LessonState;
}

@freezed
class LessonStudent with _$LessonStudent {
  const factory LessonStudent({
    @JsonKey(name: 'lesson_id') required int lessonId,
    @JsonKey(name: 'student_id') required int studentId,
    @JsonKey(name: 'student_name') required String studentName,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'leave_reason') String? leaveReason,
  }) = _LessonStudent;

  factory LessonStudent.fromJson(Map<String, dynamic> json) =>
      _$LessonStudentFromJson(json);
}