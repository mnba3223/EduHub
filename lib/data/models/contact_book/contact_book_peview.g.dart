// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_book_peview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactBookPreviewImpl _$$ContactBookPreviewImplFromJson(
        Map<String, dynamic> json) =>
    _$ContactBookPreviewImpl(
      date: DateTime.parse(json['date'] as String),
      dayOfWeek: json['dayOfWeek'] as String,
      title: json['title'] as String,
      classType: json['classType'] as String,
      teacher: json['teacher'] as String,
      isSigned: json['isSigned'] as bool,
      summary: PreviewSummary.fromJson(json['summary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ContactBookPreviewImplToJson(
        _$ContactBookPreviewImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'dayOfWeek': instance.dayOfWeek,
      'title': instance.title,
      'classType': instance.classType,
      'teacher': instance.teacher,
      'isSigned': instance.isSigned,
      'summary': instance.summary,
    };

_$PreviewSummaryImpl _$$PreviewSummaryImplFromJson(Map<String, dynamic> json) =>
    _$PreviewSummaryImpl(
      hasHomework: json['hasHomework'] as bool,
      hasAnnouncement: json['hasAnnouncement'] as bool,
      subjects:
          (json['subjects'] as List<dynamic>).map((e) => e as String).toList(),
      imageCount: (json['imageCount'] as num).toInt(),
    );

Map<String, dynamic> _$$PreviewSummaryImplToJson(
        _$PreviewSummaryImpl instance) =>
    <String, dynamic>{
      'hasHomework': instance.hasHomework,
      'hasAnnouncement': instance.hasAnnouncement,
      'subjects': instance.subjects,
      'imageCount': instance.imageCount,
    };
