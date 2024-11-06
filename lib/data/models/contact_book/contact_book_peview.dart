import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_book_peview.freezed.dart';
part 'contact_book_peview.g.dart';

@freezed
class ContactBookPreview with _$ContactBookPreview {
  const factory ContactBookPreview({
    required DateTime date,
    required String dayOfWeek,
    required String title,
    required String classType,
    required String teacher,
    required bool isSigned,
    required PreviewSummary summary,
  }) = _ContactBookPreview;

  factory ContactBookPreview.fromJson(Map<String, dynamic> json) =>
      _$ContactBookPreviewFromJson(json);
}

@freezed
class PreviewSummary with _$PreviewSummary {
  const factory PreviewSummary({
    required bool hasHomework,
    required bool hasAnnouncement,
    required List<String> subjects,
    required int imageCount,
  }) = _PreviewSummary;

  factory PreviewSummary.fromJson(Map<String, dynamic> json) =>
      _$PreviewSummaryFromJson(json);
}
