import 'package:edutec_hub/data/models/student/homework.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'homework_state.freezed.dart';

@freezed
class HomeworkState with _$HomeworkState {
  const factory HomeworkState({
    @Default([]) List<Homework> homeworks,
    @Default([]) List<Homework> filteredHomeworks,
    @Default(false) bool isLoading,
    Homework? currentHomework, // 添加當前查看的作業
    String? error,
    DateTime? selectedDate,
    HomeworkStatus? selectedStatus,
  }) = _HomeworkState;
}
