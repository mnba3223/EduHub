import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_slot.freezed.dart';
part 'time_slot.g.dart';

enum TimeSlotStatus { available, booked, selectMultiple, unavailable }

@freezed
class TimeSlot with _$TimeSlot {
  const factory TimeSlot({
    required String time,
    required TimeSlotStatus status,
    @Default(false) bool isSelected,
  }) = _TimeSlot;

  factory TimeSlot.fromJson(Map<String, dynamic> json) =>
      _$TimeSlotFromJson(json);
}
