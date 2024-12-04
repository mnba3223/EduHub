import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_exam.freezed.dart';
part 'student_exam.g.dart';

// @freezed
// class StudentExam with _$StudentExam {
//   const factory StudentExam({
//     required String id,
//     required String subject,
//     required DateTime examDate,
//     required String location,
//     required String description,
//     @Default(false) bool isCompleted,
//     String? completedAt,
//   }) = _StudentExam;

//   factory StudentExam.fromJson(Map<String, dynamic> json) =>
//       _$StudentExamFromJson(json);
// }

@freezed
class StudentExam with _$StudentExam {
  const factory StudentExam({
    @JsonKey(name: 'exam_id') required int examId,
    @JsonKey(name: 'lesson_id') required int lessonId,
    @JsonKey(name: 'exam_name') required String examName,
    @JsonKey(name: 'exam_description') required String examDescription,
    @JsonKey(name: 'upload_file') String? uploadFile,
    @JsonKey(name: 'exam_date') required DateTime examDate,
    @JsonKey(name: 'lesson_title') required String lessonTitle,
    @JsonKey(name: 'lesson_description') String? lessonDescription,
    @JsonKey(name: 'teacher_id') required int teacherId,
    @JsonKey(name: 'teacher_name') required String teacherName,
    int? score,
    @JsonKey(name: 'score_desc') String? scoreDesc,
    @JsonKey(name: 'isScore') @Default(false) bool isScore,
  }) = _StudentExam;

  factory StudentExam.fromJson(Map<String, dynamic> json) =>
      _$StudentExamFromJson(json);
}
