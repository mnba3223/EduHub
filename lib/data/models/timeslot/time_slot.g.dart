// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_slot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimeSlotImpl _$$TimeSlotImplFromJson(Map<String, dynamic> json) =>
    _$TimeSlotImpl(
      time: json['time'] as String,
      status: $enumDecode(_$TimeSlotStatusEnumMap, json['status']),
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$$TimeSlotImplToJson(_$TimeSlotImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'status': _$TimeSlotStatusEnumMap[instance.status]!,
      'isSelected': instance.isSelected,
    };

const _$TimeSlotStatusEnumMap = {
  TimeSlotStatus.available: 'available',
  TimeSlotStatus.booked: 'booked',
  TimeSlotStatus.selectMultiple: 'selectMultiple',
  TimeSlotStatus.unavailable: 'unavailable',
};
