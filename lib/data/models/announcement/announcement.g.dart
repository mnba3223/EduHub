// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnnouncementImpl _$$AnnouncementImplFromJson(Map<String, dynamic> json) =>
    _$AnnouncementImpl(
      announcementId: (json['announcement_id'] as num?)?.toInt(),
      createdBy: (json['created_by'] as num?)?.toInt(),
      content: json['Content'] as String,
      title: json['title'] as String?,
      uploadFile: json['upload_file'] as String?,
      schoolId: (json['school_id'] as num).toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$AnnouncementImplToJson(_$AnnouncementImpl instance) =>
    <String, dynamic>{
      'announcement_id': instance.announcementId,
      'created_by': instance.createdBy,
      'Content': instance.content,
      'title': instance.title,
      'upload_file': instance.uploadFile,
      'school_id': instance.schoolId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
