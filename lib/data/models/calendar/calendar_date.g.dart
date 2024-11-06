// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_date.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalendarDateImpl _$$CalendarDateImplFromJson(Map<String, dynamic> json) =>
    _$CalendarDateImpl(
      date: DateTime.parse(json['date'] as String),
      dayOfWeek: json['dayOfWeek'] as String,
      hasContactBook: json['hasContactBook'] as bool,
      isSigned: json['isSigned'] as bool,
      preview: json['preview'] == null
          ? null
          : PreviewInfo.fromJson(json['preview'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CalendarDateImplToJson(_$CalendarDateImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'dayOfWeek': instance.dayOfWeek,
      'hasContactBook': instance.hasContactBook,
      'isSigned': instance.isSigned,
      'preview': instance.preview,
    };

_$PreviewInfoImpl _$$PreviewInfoImplFromJson(Map<String, dynamic> json) =>
    _$PreviewInfoImpl(
      title: json['title'] as String,
      classType: json['classType'] as String,
      hasHomework: json['hasHomework'] as bool,
      hasAnnouncement: json['hasAnnouncement'] as bool,
      subjects:
          (json['subjects'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PreviewInfoImplToJson(_$PreviewInfoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'classType': instance.classType,
      'hasHomework': instance.hasHomework,
      'hasAnnouncement': instance.hasAnnouncement,
      'subjects': instance.subjects,
    };

_$DateRangeImpl _$$DateRangeImplFromJson(Map<String, dynamic> json) =>
    _$DateRangeImpl(
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
    );

Map<String, dynamic> _$$DateRangeImplToJson(_$DateRangeImpl instance) =>
    <String, dynamic>{
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
    };
