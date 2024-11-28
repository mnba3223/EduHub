import 'package:edutec_hub/data/models/common/lesson.dart';
import 'package:edutec_hub/data/models/student/student.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_contact_book_model.freezed.dart';
part 'teacher_contact_book_model.g.dart';

@freezed
class TeacherContactBook with _$TeacherContactBook {
  const factory TeacherContactBook({
    @JsonKey(name: 'ContactBookId') required int contactBookId,
    @JsonKey(name: 'StudentId') required int studentId,
    @JsonKey(name: 'StudentName') required String studentName,
    @JsonKey(name: 'TeacherId') required int teacherId,
    @JsonKey(name: 'TeacherName') required String teacherName,
    @JsonKey(name: 'LessonId') required int lessonId,
    @JsonKey(name: 'LessonTitle') required String lessonTitle,
    @JsonKey(name: 'LessonDate') required DateTime lessonDate,
    @JsonKey(name: 'Title') required String title,
    @JsonKey(name: 'Status') required String status,
    @JsonKey(name: 'Messages')
    required List<TeacherContactBookMessage> messages,
  }) = _TeacherContactBook;

  factory TeacherContactBook.fromJson(Map<String, dynamic> json) =>
      _$TeacherContactBookFromJson(json);
}

@freezed
class TeacherContactBookMessage with _$TeacherContactBookMessage {
  const factory TeacherContactBookMessage({
    @JsonKey(name: 'message_id') required int messageId,
    @JsonKey(name: 'message_text') required String messageText,
    @JsonKey(name: 'message_type') required String messageType,
    @JsonKey(name: 'upload_file') String? uploadFile,
  }) = _TeacherContactBookMessage;

  factory TeacherContactBookMessage.fromJson(Map<String, dynamic> json) =>
      _$TeacherContactBookMessageFromJson(json);
}

@freezed
class TeacherContactBookState with _$TeacherContactBookState {
  const factory TeacherContactBookState({
    @Default([]) List<TeacherContactBook> contactBooks,
    @Default([]) List<TeacherContactBook> filteredContactBooks,
    @Default([]) List<LessonStudent> lessonStudents,
    @Default(false) bool isLoading,
    String? error,
    int? selectedLessonId,
  }) = _TeacherContactBookState;
}
