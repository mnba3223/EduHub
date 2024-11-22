// lib/data/models/homework.dart
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'homework.freezed.dart';
part 'homework.g.dart';

// @freezed
// class Homework with _$Homework {
//   const factory Homework({
//     @JsonKey(name: 'submission_id')
//     required int submissionId, // 改名為更明確的 submissionId
//     @JsonKey(name: 'homework_id') required int id, // 添加 homework_id
//     @JsonKey(name: 'student_id') required int studentId,
//     @JsonKey(name: 'homework_desciption') required String description,
//     @JsonKey(name: 'homework_start_time') required DateTime startTime,
//     @JsonKey(name: 'homework_end_time') required DateTime dueDate,
//     @JsonKey(name: 'lesson_title') required String courseName,
//     @JsonKey(name: 'lesson_description') String? courseDescription,
//     @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
//     required HomeworkStatus status,
//     @JsonKey(name: 'submission_time') DateTime? submitDate,
//     @JsonKey(name: 'upload_file') String? attachmentUrl,
//     @JsonKey(name: 'comment') String? teacherComment,
//     @JsonKey(name: 'rating') int? score,
//   }) = _Homework;

//   factory Homework.fromJson(Map<String, dynamic> json) =>
//       _$HomeworkFromJson(json);
// }

@freezed
class HomeworkListItem with _$HomeworkListItem {
  const factory HomeworkListItem({
    @JsonKey(name: 'homework_id') required int homeworkId,
    @JsonKey(name: 'lesson_id') required int lessonId,
    @JsonKey(name: 'homework_desciption') required String description,
    @JsonKey(name: 'homework_start_time') required DateTime startTime,
    @JsonKey(name: 'homework_end_time') required DateTime endTime,
    @JsonKey(name: 'upload_file') String? attachmentUrl,
    @JsonKey(name: 'lesson_title') required String lessonTitle,
    @JsonKey(name: 'lesson_description') String? lessonDescription,
    @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
    required HomeworkStatus status,
    @JsonKey(name: 'teacher_id') required int teacherId,
    @JsonKey(name: 'teacher_name') required String teacherName,
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

// 作業提交詳情模型
@freezed
class HomeworkSubmission with _$HomeworkSubmission {
  const factory HomeworkSubmission({
    @JsonKey(name: 'submission_id')
    required int submissionId, // 改名為更明確的 submissionId
    @JsonKey(name: 'homework_id') required int homework_id, // 添加 homework_id
    @JsonKey(name: 'student_id') required int studentId,
    @JsonKey(name: 'homework_desciption') required String description,
    @JsonKey(name: 'homework_start_time') required DateTime startTime,
    @JsonKey(name: 'homework_end_time') required DateTime endTime,
    @JsonKey(name: 'lesson_title') required String lessonTitle,
    @JsonKey(name: 'lesson_description') String? lessonDescription,
    @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
    required HomeworkStatus status,
    @JsonKey(name: 'submission_time') DateTime? submitDate,
    @JsonKey(name: 'upload_file') String? uploadFile,
    @JsonKey(name: 'upload_file_urls') List<String>? uploadFileUrls,
    @JsonKey(name: 'comment') String? comment,
    @JsonKey(name: 'rating') int? score,
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
