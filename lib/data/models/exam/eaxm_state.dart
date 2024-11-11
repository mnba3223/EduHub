// models/exam/exam_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'exam.dart';

part 'eaxm_state.freezed.dart';

@freezed
class ExamState with _$ExamState {
  const factory ExamState.initial() = ExamStateInitial;
  const factory ExamState.loading() = ExamStateLoading;
  const factory ExamState.loaded({
    required List<Exam> exams,
    required DateTime selectedDate,
  }) = ExamStateLoaded;
  const factory ExamState.error({
    required String message,
  }) = ExamStateError;
}
