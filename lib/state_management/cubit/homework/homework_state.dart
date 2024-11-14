import 'package:edutec_hub/data/models/student/homework.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'homework_state.freezed.dart';

@freezed
class HomeworkState with _$HomeworkState {
  const factory HomeworkState({
    @Default([]) List<HomeworkListItem> homeworks,
    @Default([]) List<HomeworkListItem> filteredHomeworks,
    HomeworkSubmission? currentHomework,
    @Default(false) bool isLoading,
    String? error,
    DateTime? selectedDate,
    HomeworkStatus? selectedStatus,
  }) = _HomeworkState;
}
