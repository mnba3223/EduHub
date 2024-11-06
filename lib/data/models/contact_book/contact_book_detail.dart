import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_book_detail.freezed.dart';
part 'contact_book_detail.g.dart';

@freezed
class ContactBookDetail with _$ContactBookDetail {
  const factory ContactBookDetail({
    required BasicInfo basicInfo,
    required List<ContentItem> contents,
    required List<Announcement> announcements,
    required SignatureStatus signatureStatus,
  }) = _ContactBookDetail;

  factory ContactBookDetail.fromJson(Map<String, dynamic> json) =>
      _$ContactBookDetailFromJson(json);
}

@freezed
class BasicInfo with _$BasicInfo {
  const factory BasicInfo({
    required DateTime date,
    required String dayOfWeek,
    required String title,
    required String classType,
    required String teacher,
    required DateTime postTime,
  }) = _BasicInfo;

  factory BasicInfo.fromJson(Map<String, dynamic> json) =>
      _$BasicInfoFromJson(json);
}

@freezed
class ContentItem with _$ContentItem {
  const factory ContentItem({
    required String type,
    required String subject,
    @Default('') String teacher,
    required List<ContentDetail> items,
  }) = _ContentItem;

  factory ContentItem.fromJson(Map<String, dynamic> json) =>
      _$ContentItemFromJson(json);
}

@freezed
class ContentDetail with _$ContentDetail {
  const factory ContentDetail({
    required String type,
    required String content,
    DateTime? dueDate,
    List<ImageItem>? images,
  }) = _ContentDetail;

  factory ContentDetail.fromJson(Map<String, dynamic> json) =>
      _$ContentDetailFromJson(json);
}

@freezed
class ImageItem with _$ImageItem {
  const factory ImageItem({
    required String url,
    required String thumbnail,
  }) = _ImageItem;

  factory ImageItem.fromJson(Map<String, dynamic> json) =>
      _$ImageItemFromJson(json);
}

@freezed
class Announcement with _$Announcement {
  const factory Announcement({
    required String type,
    required String title,
    required String content,
    String? link,
  }) = _Announcement;

  factory Announcement.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementFromJson(json);
}

@freezed
class SignatureStatus with _$SignatureStatus {
  const factory SignatureStatus({
    required bool isSigned,
    DateTime? signTime,
    @Default([]) List<String> comments,
  }) = _SignatureStatus;

  factory SignatureStatus.fromJson(Map<String, dynamic> json) =>
      _$SignatureStatusFromJson(json);
}
