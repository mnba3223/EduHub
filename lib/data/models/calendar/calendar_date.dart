import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_date.freezed.dart';
part 'calendar_date.g.dart';

@freezed
class CalendarDate with _$CalendarDate {
  const factory CalendarDate({
    required DateTime date,
    required String dayOfWeek,
    required bool hasContactBook,
    required bool isSigned,
    required PreviewInfo? preview,
  }) = _CalendarDate;

  factory CalendarDate.fromJson(Map<String, dynamic> json) =>
      _$CalendarDateFromJson(json);
}

@freezed
class PreviewInfo with _$PreviewInfo {
  const factory PreviewInfo({
    required String title,
    required String classType,
    required bool hasHomework,
    required bool hasAnnouncement,
    required List<String> subjects,
  }) = _PreviewInfo;

  factory PreviewInfo.fromJson(Map<String, dynamic> json) =>
      _$PreviewInfoFromJson(json);
}

// models/date_range.dart
@freezed
class DateRange with _$DateRange {
  const factory DateRange({
    required DateTime start,
    required DateTime end,
  }) = _DateRange;

  factory DateRange.fromJson(Map<String, dynamic> json) =>
      _$DateRangeFromJson(json);
}
