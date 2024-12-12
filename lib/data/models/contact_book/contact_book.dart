import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/calendar/calendar_date.dart';
import 'package:edutec_hub/data/models/contact_book/contact_book_peview.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_book.freezed.dart';
part 'contact_book.g.dart';

// @freezed
// class ContactBook with _$ContactBook {
//   const factory ContactBook({
//     required StudentInfo studentInfo,
//     required CalendarData calendar,
//     required List<ContactBookPreview> contactBooks,
//     Statistics? statistics,
//   }) = _ContactBook;

//   factory ContactBook.fromJson(Map<String, dynamic> json) =>
//       _$ContactBookFromJson(json);
// }

// @freezed
// class StudentInfo with _$StudentInfo {
//   const factory StudentInfo({
//     required String name,
//     required String className,
//     required String classTeacher,
//   }) = _StudentInfo;

//   factory StudentInfo.fromJson(Map<String, dynamic> json) =>
//       _$StudentInfoFromJson(json);
// }

// @freezed
// class Statistics with _$Statistics {
//   const factory Statistics({
//     required int totalBooks, // 總聯絡簿數量
//     required int signedCount, // 已簽名數量
//     required int unsignedCount, // 未簽名數量
//   }) = _Statistics;

//   factory Statistics.fromJson(Map<String, dynamic> json) =>
//       _$StatisticsFromJson(json);
// }

// @freezed
// class CalendarData with _$CalendarData {
//   const factory CalendarData({
//     required DateTime currentDate,
//     required DateRange dateRange,
//     required List<CalendarDate> dates,
//   }) = _CalendarData;

//   factory CalendarData.fromJson(Map<String, dynamic> json) =>
//       _$CalendarDataFromJson(json);
// }

@freezed
class ContactBook with _$ContactBook {
  const factory ContactBook({
    @JsonKey(name: 'ContactBookId') required int contactBookId,
    @JsonKey(name: 'StudentId') required int studentId,
    @JsonKey(name: 'StudentName') required String studentName,
    @JsonKey(name: 'TeacherId') required int teacherId,
    @JsonKey(name: 'TeacherName') required String teacherName,
    @JsonKey(name: 'LessonId') required int lessonId,
    @JsonKey(name: 'ClassId') required int classId,
    @JsonKey(name: 'LessonDate') required DateTime lessonDate,
    @JsonKey(name: 'Title') required String title,
    @JsonKey(name: 'Content') required String content,
    @JsonKey(name: 'Messages') required List<ContactBookMessage> messages,
  }) = _ContactBook;

  factory ContactBook.fromJson(Map<String, dynamic> json) =>
      _$ContactBookFromJson(json);
}

@freezed
class ContactBookMessage with _$ContactBookMessage {
  const factory ContactBookMessage({
    @JsonKey(name: 'message_id') required int messageId,
    @JsonKey(name: 'message_text') required String messageText,
    @JsonKey(name: 'message_type') required String messageType,
    @JsonKey(name: 'upload_file') required List<String> uploadFiles,
    @JsonKey(name: 'name') required String messageSender,
  }) = _ContactBookMessage;

  factory ContactBookMessage.fromJson(Map<String, dynamic> json) =>
      _$ContactBookMessageFromJson(json);
}

extension ContactBookUIHelpers on ContactBook {
  bool get hasAttachments => messages.any((msg) => msg.uploadFiles.isNotEmpty);

  String get displayDate => DateFormat('yyyy-MM-dd').format(lessonDate);

  bool get isToday {
    final now = DateTime.now();
    return lessonDate.year == now.year &&
        lessonDate.month == now.month &&
        lessonDate.day == now.day;
  }
}
