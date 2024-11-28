import 'dart:ui';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_homework.freezed.dart';
part 'teacher_homework.g.dart';

// 作業狀態枚舉
enum HomeworkStatus {
  @JsonValue('ongoing')
  ongoing,
  @JsonValue('closed')
  closed;

  String toDisplayString() {
    switch (this) {
      case HomeworkStatus.ongoing:
        return '進行中';
      case HomeworkStatus.closed:
        return '已結束';
    }
  }
}

// 提交狀態枚舉
enum SubmissionStatus {
  @JsonValue('submit')
  submitted,
  @JsonValue('pending')
  pending,
  @JsonValue('graded')
  graded;

  String toDisplayString() {
    switch (this) {
      case SubmissionStatus.submitted:
        return '已繳交';
      case SubmissionStatus.pending:
        return '未繳交';
      case SubmissionStatus.graded:
        return '已評分';
    }
  }
}

// 狀態轉換方法
SubmissionStatus _parseSubmissionStatus(String? status) {
  switch (status) {
    case 'submit':
      return SubmissionStatus.submitted;
    case 'pending':
      return SubmissionStatus.pending;
    case 'graded':
      return SubmissionStatus.graded;
    default:
      return SubmissionStatus.pending;
  }
}

HomeworkStatus _parseHomeworkStatus(String? status) {
  switch (status) {
    case 'closed':
      return HomeworkStatus.closed;
    case 'ongoing':
    default:
      return HomeworkStatus.ongoing;
  }
}

@freezed
class TeacherHomeworkStats with _$TeacherHomeworkStats {
  const factory TeacherHomeworkStats({
    required int total,
    required int submitted,
    required int graded,
  }) = _TeacherHomeworkStats;

  factory TeacherHomeworkStats.fromJson(Map<String, dynamic> json) =>
      _$TeacherHomeworkStatsFromJson(json);
}

@freezed
class TeacherHomeworkListItem with _$TeacherHomeworkListItem {
  const factory TeacherHomeworkListItem({
    @JsonKey(name: 'homework_id') required int homeworkId,
    @JsonKey(name: 'lesson_id') required int lessonId,
    @JsonKey(name: 'homework_description') String? homeworkDescription,
    @JsonKey(name: 'lesson_title') required String lessonTitle,
    String? classroomName,
    @JsonKey(name: 'homework_start_time') required DateTime startTime,
    @JsonKey(name: 'homework_end_time') required DateTime endTime,
    @JsonKey(
        name: 'status',
        fromJson: _parseHomeworkStatus,
        defaultValue: HomeworkStatus.ongoing)
    required HomeworkStatus status,
    @JsonKey(name: 'teacher_id') int? teacherId,
    @JsonKey(name: 'teacher_name') String? teacherName,
    @JsonKey(name: 'upload_file') String? uploadFile,
    @JsonKey(name: 'lesson_description') String? lessonDescription,
    @JsonKey(name: 'total_students') required int totalStudents,
    @JsonKey(name: 'submitted_count') required int submittedCount,
    @JsonKey(name: 'rating_count') required int ratingCount,
  }) = _TeacherHomeworkListItem;

  factory TeacherHomeworkListItem.fromJson(Map<String, dynamic> json) =>
      _$TeacherHomeworkListItemFromJson(json);
}

@freezed
class TeacherHomeworkDetail with _$TeacherHomeworkDetail {
  const factory TeacherHomeworkDetail({
    required int homeworkId,
    required String homeworkDescription,
    required int lessonId,
    required String lessonTitle,
    required String lessonDescription,
    String? classroomName,
    required DateTime startTime,
    required DateTime endTime,
    String? uploadFile,
    required TeacherHomeworkStats stats,
    required List<TeacherHomeworkSubmission> submissions,
  }) = _TeacherHomeworkDetail;

  factory TeacherHomeworkDetail.fromJson(Map<String, dynamic> json) =>
      _$TeacherHomeworkDetailFromJson(json);
}

@freezed
class TeacherHomeworkSubmission with _$TeacherHomeworkSubmission {
  const factory TeacherHomeworkSubmission({
    @JsonKey(name: 'submission_id') required int submissionId,
    @JsonKey(name: 'student_id') required int studentId,
    @JsonKey(name: 'student_name') required String studentName,
    @JsonKey(name: 'submission_time') DateTime? submissionTime,
    String? comment,
    @JsonKey(name: 'rating') int? grade,
    @JsonKey(
        name: 'status',
        fromJson: _parseSubmissionStatus,
        defaultValue: SubmissionStatus.pending)
    required SubmissionStatus status,
    @JsonKey(name: 'has_Attachment') required bool hasAttachment,
    @JsonKey(name: 'upload_file_urls') List<String>? uploadFileUrls,
  }) = _TeacherHomeworkSubmission;

  factory TeacherHomeworkSubmission.fromJson(Map<String, dynamic> json) =>
      _$TeacherHomeworkSubmissionFromJson(json);
}

// UI 顯示擴展方法
extension HomeworkStatusHelper on HomeworkStatus {
  Color get statusColor {
    switch (this) {
      case HomeworkStatus.ongoing:
        return Colors.green;
      case HomeworkStatus.closed:
        return Colors.red;
    }
  }

  IconData get statusIcon {
    switch (this) {
      case HomeworkStatus.ongoing:
        return Icons.play_circle_outline;
      case HomeworkStatus.closed:
        return Icons.check_circle_outline;
    }
  }
}

// 更新提交狀態的展示文字
String getSubmissionStatusText(SubmissionStatus status) {
  switch (status) {
    case SubmissionStatus.graded:
      return 'status_graded'.tr();
    case SubmissionStatus.submitted:
      return 'status_submitted'.tr();
    case SubmissionStatus.pending:
    default:
      return 'status_pending'.tr();
  }
}

extension SubmissionStatusHelper on SubmissionStatus {
  Color get statusColor {
    switch (this) {
      case SubmissionStatus.submitted:
        return Colors.green;
      case SubmissionStatus.pending:
        return Colors.orange;
      case SubmissionStatus.graded:
        return Colors.blue;
    }
  }

  IconData get statusIcon {
    switch (this) {
      case SubmissionStatus.submitted:
        return Icons.assignment_turned_in;
      case SubmissionStatus.pending:
        return Icons.assignment_late;
      case SubmissionStatus.graded:
        return Icons.assignment;
    }
  }
}

// 用於創建 TeacherHomeworkDetail 的擴展方法
extension TeacherHomeworkDetailX on TeacherHomeworkDetail {
  static TeacherHomeworkDetail fromApiResponses(
    TeacherHomeworkListItem listItem,
    List<TeacherHomeworkSubmission> submissions,
  ) {
    return TeacherHomeworkDetail(
      homeworkId: listItem.homeworkId,
      homeworkDescription: listItem.homeworkDescription ?? "",
      lessonId: listItem.lessonId,
      lessonTitle: listItem.lessonTitle,
      lessonDescription: listItem.lessonDescription ?? "",
      classroomName: listItem.classroomName,
      startTime: listItem.startTime,
      endTime: listItem.endTime,
      uploadFile: listItem.uploadFile,
      stats: TeacherHomeworkStats(
        total: listItem.totalStudents,
        submitted: listItem.submittedCount,
        graded: listItem.ratingCount,
      ),
      submissions: submissions,
    );
  }
}
