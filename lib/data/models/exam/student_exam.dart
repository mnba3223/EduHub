import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_exam.freezed.dart';
part 'student_exam.g.dart';

@freezed
class StudentExam with _$StudentExam {
  const factory StudentExam({
    required String id,
    required String subject,
    required DateTime examDate,
    required String location,
    required String description,
    @Default(false) bool isCompleted,
    String? completedAt,
  }) = _StudentExam;

  factory StudentExam.fromJson(Map<String, dynamic> json) =>
      _$StudentExamFromJson(json);
}
