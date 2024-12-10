// lib/data/models/homework.dart
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'homework.freezed.dart';
part 'homework.g.dart';

// @freezed
// class HomeworkListItem with _$HomeworkListItem {
//   const factory HomeworkListItem({
//     @JsonKey(name: 'homework_id') required int homeworkId,
//     @JsonKey(name: 'lesson_id') required int lessonId,
//     @JsonKey(name: 'homework_description') required String description,
//     @JsonKey(name: 'homework_start_time') required DateTime startTime,
//     @JsonKey(name: 'homework_end_time') required DateTime endTime,
//     @JsonKey(name: 'upload_file') String? attachmentUrl,
//     @JsonKey(name: 'lesson_title') required String lessonTitle,
//     @JsonKey(name: 'lesson_description') String? lessonDescription,
//     @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
//     required HomeworkStatus status,
//     @JsonKey(name: 'teacher_id') required int teacherId,
//     @JsonKey(name: 'teacher_name') required String teacherName,
//   }) = _HomeworkListItem;

//   factory HomeworkListItem.fromJson(Map<String, dynamic> json) =>
//       _$HomeworkListItemFromJson(json);
// }
@freezed
class HomeworkListItem with _$HomeworkListItem {
  const factory HomeworkListItem({
    @JsonKey(name: 'homework_id') required int homeworkId,
    @JsonKey(name: 'lesson_id') required int lessonId,
    @JsonKey(name: 'homework_description') required String description,
    @JsonKey(name: 'homework_start_time') required DateTime startTime,
    @JsonKey(name: 'homework_end_time') required DateTime endTime,
    @JsonKey(name: 'upload_file') String? attachmentUrl,
    @JsonKey(name: 'class_name') required String className,
    @JsonKey(name: 'classroom_name') required String classroomName,
    @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
    required HomeworkStatus status,
    @JsonKey(name: 'teacher_id') required int teacherId,
    @JsonKey(name: 'teacher_name') required String teacherName,
    @JsonKey(name: 'total_students') required int totalStudents,
    @JsonKey(name: 'submitted_count') required int submittedCount,
    @JsonKey(name: 'rating_count') required int ratingCount,
  }) = _HomeworkListItem;

  factory HomeworkListItem.fromJson(Map<String, dynamic> json) =>
      _$HomeworkListItemFromJson(json);
}

enum HomeworkStatus {
  @JsonValue('pending')
  pending,
  @JsonValue('submit')
  submit,
  @JsonValue('graded')
  graded,
  @JsonValue('overdue')
  overdue
}

@freezed
class HomeworkSubmission with _$HomeworkSubmission {
  const factory HomeworkSubmission({
    @JsonKey(name: 'submission_id') required int submissionId,
    @JsonKey(name: 'homework_id') required int homeworkId,
    @JsonKey(name: 'student_id') required int studentId,
    @JsonKey(name: 'student_name') required String studentName,
    @JsonKey(name: 'submission_time') DateTime? submissionTime,
    @JsonKey(name: 'comment') String? comment,
    @JsonKey(name: 'rating') int? rating,
    @JsonKey(name: 'upload_file') String? uploadFile,
    @JsonKey(name: 'upload_file_urls') List<String>? uploadFileUrls,
    @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
    required HomeworkStatus status,
    @JsonKey(name: 'lesson_id') required int lessonId,
    @JsonKey(name: 'homework_description') required String homeworkDescription,
    @JsonKey(name: 'homework_start_time') required DateTime startTime,
    @JsonKey(name: 'homework_end_time') required DateTime endTime,
    @JsonKey(name: 'class_name') required String className,
    @JsonKey(name: 'has_Attachment') required bool hasAttachment,
    @JsonKey(name: 'has_rating') required bool hasRating,
  }) = _HomeworkSubmission;

  factory HomeworkSubmission.fromJson(Map<String, dynamic> json) =>
      _$HomeworkSubmissionFromJson(json);
}

extension HomeworkStatusExtension on HomeworkStatus {
  String get value {
    switch (this) {
      case HomeworkStatus.pending:
        return 'pending';
      case HomeworkStatus.submit:
        return 'submit';
      case HomeworkStatus.graded:
        return 'graded';
      case HomeworkStatus.overdue:
        return 'overdue';
    }
  }
}

class HomeworkStatusConfig {
  final Color color;
  final String text;

  const HomeworkStatusConfig(this.color, this.text);
}

HomeworkStatus fromString(String value) {
  return HomeworkStatus.values.firstWhere(
    (status) => status.toString().split('.').last == value.toLowerCase(),
    orElse: () => HomeworkStatus.pending,
  );
}

// // lib/data/models/homework_list_response.dart
// @freezed
// class HomeworkListResponse with _$HomeworkListResponse {
//   const factory HomeworkListResponse({
//     required List<Homework> submissions,
//   }) = _HomeworkListResponse;

//   factory HomeworkListResponse.fromJson(dynamic json) {
//     if (json is List) {
//       // 處理直接返回列表的情況
//       return HomeworkListResponse(
//         submissions: json
//             .map((item) => Homework.fromJson(item as Map<String, dynamic>))
//             .toList(),
//       );
//     }
//     // 如果是包裝在物件中的情況
//     if (json is Map<String, dynamic>) {
//       if (json.containsKey('submissions')) {
//         return HomeworkListResponse(
//           submissions: (json['submissions'] as List)
//               .map((item) => Homework.fromJson(item as Map<String, dynamic>))
//               .toList(),
//         );
//       }
//     }
//     // 如果都不是，返回空列表
//     return const HomeworkListResponse(submissions: []);
//   }
// }

// @freezed
// class HomeworkDetailResponse with _$HomeworkDetailResponse {
//   const factory HomeworkDetailResponse({
//     required List<Homework> submissions,
//   }) = _HomeworkDetailResponse;

//   factory HomeworkDetailResponse.fromJson(dynamic json) {
//     if (json is List) {
//       return HomeworkDetailResponse(
//         submissions: json
//             .map((item) => Homework.fromJson(item as Map<String, dynamic>))
//             .toList(),
//       );
//     }
//     if (json is Map<String, dynamic>) {
//       if (json.containsKey('submissions')) {
//         return HomeworkDetailResponse(
//           submissions: (json['submissions'] as List)
//               .map((item) => Homework.fromJson(item as Map<String, dynamic>))
//               .toList(),
//         );
//       }
//     }
//     return const HomeworkDetailResponse(submissions: []);
//   }
// }
