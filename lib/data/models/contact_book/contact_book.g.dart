// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactBookImpl _$$ContactBookImplFromJson(Map<String, dynamic> json) =>
    _$ContactBookImpl(
      studentInfo:
          StudentInfo.fromJson(json['studentInfo'] as Map<String, dynamic>),
      calendar: CalendarData.fromJson(json['calendar'] as Map<String, dynamic>),
      contactBooks: (json['contactBooks'] as List<dynamic>)
          .map((e) => ContactBookPreview.fromJson(e as Map<String, dynamic>))
          .toList(),
      statistics: json['statistics'] == null
          ? null
          : Statistics.fromJson(json['statistics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ContactBookImplToJson(_$ContactBookImpl instance) =>
    <String, dynamic>{
      'studentInfo': instance.studentInfo,
      'calendar': instance.calendar,
      'contactBooks': instance.contactBooks,
      'statistics': instance.statistics,
    };

_$StudentInfoImpl _$$StudentInfoImplFromJson(Map<String, dynamic> json) =>
    _$StudentInfoImpl(
      name: json['name'] as String,
      className: json['className'] as String,
      classTeacher: json['classTeacher'] as String,
    );

Map<String, dynamic> _$$StudentInfoImplToJson(_$StudentInfoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'className': instance.className,
      'classTeacher': instance.classTeacher,
    };

_$StatisticsImpl _$$StatisticsImplFromJson(Map<String, dynamic> json) =>
    _$StatisticsImpl(
      totalBooks: (json['totalBooks'] as num).toInt(),
      signedCount: (json['signedCount'] as num).toInt(),
      unsignedCount: (json['unsignedCount'] as num).toInt(),
    );

Map<String, dynamic> _$$StatisticsImplToJson(_$StatisticsImpl instance) =>
    <String, dynamic>{
      'totalBooks': instance.totalBooks,
      'signedCount': instance.signedCount,
      'unsignedCount': instance.unsignedCount,
    };

_$CalendarDataImpl _$$CalendarDataImplFromJson(Map<String, dynamic> json) =>
    _$CalendarDataImpl(
      currentDate: DateTime.parse(json['currentDate'] as String),
      dateRange: DateRange.fromJson(json['dateRange'] as Map<String, dynamic>),
      dates: (json['dates'] as List<dynamic>)
          .map((e) => CalendarDate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CalendarDataImplToJson(_$CalendarDataImpl instance) =>
    <String, dynamic>{
      'currentDate': instance.currentDate.toIso8601String(),
      'dateRange': instance.dateRange,
      'dates': instance.dates,
    };
