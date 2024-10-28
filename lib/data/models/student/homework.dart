// lib/data/models/homework.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'homework.freezed.dart';
part 'homework.g.dart';

@freezed
class Homework with _$Homework {
  const factory Homework({
    required String id,
    required String title,
    required String description,
    required DateTime dueDate,
    required String courseId,
    required String courseName,
    required HomeworkStatus status,
    // add  create at
    DateTime? createdAt,
    String? submitContent,
    List<String>? attachmentUrls,
    DateTime? submitDate,
    int? score,
    String? teacherComment,
  }) = _Homework;

  factory Homework.fromJson(Map<String, dynamic> json) =>
      _$HomeworkFromJson(json);
}

enum HomeworkStatus {
  pending, // 待完成
  submitted, // 已提交
  graded, // 已評分
  overdue // 已逾期
}

// lib/data/models/homework_list_response.dart
@freezed
class HomeworkListResponse with _$HomeworkListResponse {
  const factory HomeworkListResponse({
    required List<Homework> data, // 改為單一的 data 列表
  }) = _HomeworkListResponse;

  factory HomeworkListResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeworkListResponseFromJson(json);
}

@freezed
class HomeworkDetailResponse with _$HomeworkDetailResponse {
  const factory HomeworkDetailResponse({
    required Homework data,
  }) = _HomeworkDetailResponse;

  factory HomeworkDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeworkDetailResponseFromJson(json);
}
