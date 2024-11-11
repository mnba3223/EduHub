import 'package:freezed_annotation/freezed_annotation.dart';

part 'exam.freezed.dart';
part 'exam.g.dart';

@freezed
class Exam with _$Exam {
  const factory Exam({
    required String id,
    required String subject,
    required DateTime examDate,
    required String location,
    required String description,
    @Default(false) bool isCompleted,
    String? completedAt,
  }) = _Exam;

  factory Exam.fromJson(Map<String, dynamic> json) => _$ExamFromJson(json);
}
