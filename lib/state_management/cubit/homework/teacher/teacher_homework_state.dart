import 'package:edutec_hub/data/models/teacher/teacher_homework.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_homework_state.freezed.dart';

// @freezed
// class TeacherHomeworkState with _$TeacherHomeworkState {
//   const factory TeacherHomeworkState({
//     @Default([]) List<TeacherHomeworkListItem> homeworks,
//     @Default([]) List<TeacherHomeworkListItem> filteredHomeworks,
//     @Default([]) List<String> classrooms,
//     @Default([]) List<String> lessons,
//     String? selectedClassroom,
//     String? selectedLesson,
//     DateTime? selectedDate,
//     DateTime? focusedDay,
//     TeacherHomeworkDetail? selectedHomeworkDetail,
//     @Default(false) bool isLoading,
//     String? error,
//   }) = _TeacherHomeworkState;
// }
@freezed
class TeacherHomeworkState with _$TeacherHomeworkState {
  const factory TeacherHomeworkState({
    @Default([]) List<TeacherHomeworkListItem> homeworks,
    @Default([]) List<TeacherHomeworkListItem> filteredHomeworks,
    @Default([]) List<String> classrooms,
    @Default([]) List<String> lessons,
    TeacherHomeworkListItem? selectedHomework,
    @Default([]) List<TeacherHomeworkSubmission> submissions,
    String? selectedClassroom,
    String? selectedLesson,
    required DateTime selectedDate,
    required DateTime focusedDay,
    @Default(false) bool isLoading,
    String? error,
    String? message, // 添加成功消息
    // 新增下載相關狀態
    @Default({}) Map<String, double> downloadProgress,
    @Default(false) bool isDownloading,
    // 新增評分相關狀態
    @Default(false) bool isGrading,
  }) = _TeacherHomeworkState;
}
