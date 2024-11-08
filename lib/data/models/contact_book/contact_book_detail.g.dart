// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_book_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactBookDetailImpl _$$ContactBookDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$ContactBookDetailImpl(
      basicInfo: BasicInfo.fromJson(json['basicInfo'] as Map<String, dynamic>),
      contents: (json['contents'] as List<dynamic>)
          .map((e) => ContentItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      announcements: (json['announcements'] as List<dynamic>)
          .map((e) =>
              ContactBookAnnouncement.fromJson(e as Map<String, dynamic>))
          .toList(),
      signatureStatus: SignatureStatus.fromJson(
          json['signatureStatus'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ContactBookDetailImplToJson(
        _$ContactBookDetailImpl instance) =>
    <String, dynamic>{
      'basicInfo': instance.basicInfo,
      'contents': instance.contents,
      'announcements': instance.announcements,
      'signatureStatus': instance.signatureStatus,
    };

_$BasicInfoImpl _$$BasicInfoImplFromJson(Map<String, dynamic> json) =>
    _$BasicInfoImpl(
      date: DateTime.parse(json['date'] as String),
      dayOfWeek: json['dayOfWeek'] as String,
      title: json['title'] as String,
      classType: json['classType'] as String,
      teacher: json['teacher'] as String,
      postTime: DateTime.parse(json['postTime'] as String),
    );

Map<String, dynamic> _$$BasicInfoImplToJson(_$BasicInfoImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'dayOfWeek': instance.dayOfWeek,
      'title': instance.title,
      'classType': instance.classType,
      'teacher': instance.teacher,
      'postTime': instance.postTime.toIso8601String(),
    };

_$ContentItemImpl _$$ContentItemImplFromJson(Map<String, dynamic> json) =>
    _$ContentItemImpl(
      type: json['type'] as String,
      subject: json['subject'] as String,
      teacher: json['teacher'] as String? ?? '',
      items: (json['items'] as List<dynamic>)
          .map((e) => ContentDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ContentItemImplToJson(_$ContentItemImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'subject': instance.subject,
      'teacher': instance.teacher,
      'items': instance.items,
    };

_$ContentDetailImpl _$$ContentDetailImplFromJson(Map<String, dynamic> json) =>
    _$ContentDetailImpl(
      type: json['type'] as String,
      content: json['content'] as String,
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ContentDetailImplToJson(_$ContentDetailImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'content': instance.content,
      'dueDate': instance.dueDate?.toIso8601String(),
      'images': instance.images,
    };

_$ImageItemImpl _$$ImageItemImplFromJson(Map<String, dynamic> json) =>
    _$ImageItemImpl(
      url: json['url'] as String,
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$$ImageItemImplToJson(_$ImageItemImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'thumbnail': instance.thumbnail,
    };

_$ContactBookAnnouncementImpl _$$ContactBookAnnouncementImplFromJson(
        Map<String, dynamic> json) =>
    _$ContactBookAnnouncementImpl(
      type: json['type'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$ContactBookAnnouncementImplToJson(
        _$ContactBookAnnouncementImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'content': instance.content,
      'link': instance.link,
    };

_$SignatureStatusImpl _$$SignatureStatusImplFromJson(
        Map<String, dynamic> json) =>
    _$SignatureStatusImpl(
      isSigned: json['isSigned'] as bool,
      signTime: json['signTime'] == null
          ? null
          : DateTime.parse(json['signTime'] as String),
      comments: (json['comments'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SignatureStatusImplToJson(
        _$SignatureStatusImpl instance) =>
    <String, dynamic>{
      'isSigned': instance.isSigned,
      'signTime': instance.signTime?.toIso8601String(),
      'comments': instance.comments,
    };
