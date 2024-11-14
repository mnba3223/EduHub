import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement.freezed.dart';
part 'announcement.g.dart';

@freezed
class Announcement with _$Announcement {
  const factory Announcement({
    @JsonKey(name: 'announcement_id') int? announcementId,
    @JsonKey(name: 'created_by') int? createdBy,
    @JsonKey(name: 'Content') required String content,
    String? title,
    @JsonKey(name: 'upload_file') String? uploadFile,
    @JsonKey(name: 'school_id') required int schoolId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Announcement;

  factory Announcement.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementFromJson(json);
}
