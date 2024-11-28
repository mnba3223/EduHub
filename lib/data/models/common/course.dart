// lib/data/models/teacher/course.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@freezed
class Course with _$Course {
  const factory Course({
    @JsonKey(name: 'course_id') required int courseId,
    @JsonKey(name: 'course_name') required String courseName,
    @JsonKey(name: 'subject_id') required int subjectId,
    @JsonKey(name: 'course_description') String? courseDescription,
    @JsonKey(name: 'course_color') required String courseColor,
    @JsonKey(name: 'course_category') String? courseCategory,
    @JsonKey(name: 'course_image') required String courseImage,
    @JsonKey(name: 'course_type') required String courseType,
    @JsonKey(name: 'subject_name') required String subjectName,
    @JsonKey(name: 'subject_description') String? subjectDescription,
    @JsonKey(name: 'sort') required int sort,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}

@freezed
class CourseState with _$CourseState {
  const factory CourseState({
    @Default([]) List<Course> courses,
    @Default([]) List<Course> filteredCourses,
    required DateTime selectedDate,
    required DateTime focusedDay,
    String? selectedSubject,
    @Default([]) List<String> subjects,
    @Default(false) bool isLoading,
    String? error,
    String? message,
  }) = _CourseState;
}
