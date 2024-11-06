import 'package:edutec_hub/data/models/calendar/calendar_date.dart';
import 'package:edutec_hub/data/models/contact_book/contact_book_peview.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_book.freezed.dart';
part 'contact_book.g.dart';

@freezed
class ContactBook with _$ContactBook {
  const factory ContactBook({
    required StudentInfo studentInfo,
    required CalendarData calendar,
    required List<ContactBookPreview> contactBooks,
    Statistics? statistics,
  }) = _ContactBook;

  factory ContactBook.fromJson(Map<String, dynamic> json) =>
      _$ContactBookFromJson(json);
}

@freezed
class StudentInfo with _$StudentInfo {
  const factory StudentInfo({
    required String name,
    required String className,
    required String classTeacher,
  }) = _StudentInfo;

  factory StudentInfo.fromJson(Map<String, dynamic> json) =>
      _$StudentInfoFromJson(json);
}

@freezed
class Statistics with _$Statistics {
  const factory Statistics({
    required int totalBooks, // 總聯絡簿數量
    required int signedCount, // 已簽名數量
    required int unsignedCount, // 未簽名數量
  }) = _Statistics;

  factory Statistics.fromJson(Map<String, dynamic> json) =>
      _$StatisticsFromJson(json);
}

@freezed
class CalendarData with _$CalendarData {
  const factory CalendarData({
    required DateTime currentDate,
    required DateRange dateRange,
    required List<CalendarDate> dates,
  }) = _CalendarData;

  factory CalendarData.fromJson(Map<String, dynamic> json) =>
      _$CalendarDataFromJson(json);
}
