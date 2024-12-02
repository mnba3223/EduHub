import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:edutec_hub/data/models/teacher/teacher_exam.dart';
import 'package:edutec_hub/data/models/teacher/teacher_homework.dart';
import 'package:edutec_hub/data/models/common/lesson.dart';

part 'teacher_home_state.freezed.dart';

@freezed
class TeacherHomeState with _$TeacherHomeState {
  const factory TeacherHomeState({
    @Default([]) List<Lesson> todayCourses,
    @Default([]) List<TeacherExam> weeklyExams,
    @Default([]) List<TeacherHomeworkListItem> weeklyHomework,
    @Default(true) bool isLoading,
    String? error,
  }) = _TeacherHomeState;
}
