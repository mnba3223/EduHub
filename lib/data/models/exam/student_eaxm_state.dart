// models/exam/exam_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'student_exam.dart';

part 'student_eaxm_state.freezed.dart';

@freezed
class StudentExamState with _$StudentExamState {
  const factory StudentExamState.initial() = StudentExamStateInitial;
  const factory StudentExamState.loading() = StudentExamStateLoading;
  const factory StudentExamState.loaded({
    required List<StudentExam> exams,
    required DateTime selectedDate,
  }) = StudentExamStateLoaded;
  const factory StudentExamState.error({
    required String message,
  }) = StudentExamStateError;
}
