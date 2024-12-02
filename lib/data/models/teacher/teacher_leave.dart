import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_leave.freezed.dart';
part 'teacher_leave.g.dart';

@freezed
class TeacherLeave with _$TeacherLeave {
  const factory TeacherLeave({
    @JsonKey(name: 'lesson_id') required int lessonId,
    @JsonKey(name: 'lesson_title') required String lessonTitle,
    @JsonKey(name: 'lesson_description') required String lessonDescription,
    @JsonKey(name: 'teacher_id') required int teacherId,
    @JsonKey(name: 'classroom_id') required int classroomId,
    @JsonKey(name: 'course_id') required int courseId,
    @JsonKey(name: 'lesson_date') required DateTime lessonDate,
    @JsonKey(name: 'start_time') required String startTime,
    @JsonKey(name: 'end_time') required String endTime,
    @JsonKey(name: 'lesson_price') required double lessonPrice,
    @JsonKey(name: 'substitute_teacher_id') int? substituteTeacherId,
    @JsonKey(name: 'leave_requested') required int leaveRequested,
    @JsonKey(name: 'leave_status') required String leaveStatus,
    @JsonKey(name: 'leave_request_date') required DateTime leaveRequestDate,
  }) = _TeacherLeave;

  factory TeacherLeave.fromJson(Map<String, dynamic> json) =>
      _$TeacherLeaveFromJson(json);
}

@freezed
class TeacherLeaveState with _$TeacherLeaveState {
  const factory TeacherLeaveState({
    @Default([]) List<TeacherLeave> leaveRequests,
    @Default([]) List<TeacherLeave> filteredLeaves,
    @Default(false) bool isLoading,
    String? error,
    DateTime? selectedDate,
    DateTime? focusedDay,
  }) = _TeacherLeaveState;
}
