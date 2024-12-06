// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classroom_booking_time_slot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassroomTimeSlotImpl _$$ClassroomTimeSlotImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassroomTimeSlotImpl(
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
      status: $enumDecode(_$ClassroomBookingStatusEnumMap, json['status']),
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$$ClassroomTimeSlotImplToJson(
        _$ClassroomTimeSlotImpl instance) =>
    <String, dynamic>{
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'status': _$ClassroomBookingStatusEnumMap[instance.status]!,
      'isSelected': instance.isSelected,
    };

const _$ClassroomBookingStatusEnumMap = {
  ClassroomBookingStatus.available: 'available',
  ClassroomBookingStatus.occupied: 'occupied',
};
