import 'package:freezed_annotation/freezed_annotation.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@freezed
class Course with _$Course {
  const factory Course({
    @JsonKey(name: 'course_id') required int courseId,
    @JsonKey(name: 'course_name') required String courseName,
    @JsonKey(name: 'course_description') required String courseDescription,
    @JsonKey(name: 'subject_id') required int subjectId,
    required double price,
    @JsonKey(name: 'course_color') required String courseColor,
    @JsonKey(name: 'course_image') required String courseImage,
    @JsonKey(name: 'subject_name') required String subjectName,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}

@freezed
class StudentLesson with _$StudentLesson {
  const factory StudentLesson({
    @JsonKey(name: 'class_id') required int classId,
    @JsonKey(name: 'class_name') required String className,
    @JsonKey(name: 'lesson_id') required int lessonId,
    @JsonKey(name: 'lesson_date') required DateTime lessonDate,
    @JsonKey(name: 'start_time') required String startTime,
    @JsonKey(name: 'end_time') required String endTime,
    @JsonKey(name: 'course_name') required String courseName,
    @JsonKey(name: 'classroom_name') required String classroomName,
    @JsonKey(name: 'course_color') required String courseColor,
    @JsonKey(name: 'course_image') required String courseImage,
    @JsonKey(name: 'subject_name') required String subjectName,
  }) = _StudentLesson;

  factory StudentLesson.fromJson(Map<String, dynamic> json) =>
      _$StudentLessonFromJson(json);
}

@freezed
class CourseState with _$CourseState {
  const factory CourseState({
    @Default([]) List<Course> allCourses,
    @Default([]) List<StudentLesson> studentLessons,
    @Default([]) List<StudentLesson> todayLessons,
    @Default(false) bool isLoading,
    String? error,
  }) = _CourseState;
}
