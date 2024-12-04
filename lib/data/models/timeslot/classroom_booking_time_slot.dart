// models/booking/classroom_booking_time_slot.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'classroom_booking_time_slot.freezed.dart';
part 'classroom_booking_time_slot.g.dart';

enum ClassroomBookingStatus {
  available, // isOccupied = 0
  occupied // isOccupied = 1
}

@freezed
class ClassroomTimeSlot with _$ClassroomTimeSlot {
  const factory ClassroomTimeSlot({
    required String startTime,
    required String endTime,
    required ClassroomBookingStatus status,
    @Default(false) bool isSelected,
  }) = _ClassroomTimeSlot;

  factory ClassroomTimeSlot.fromJson(Map<String, dynamic> json) =>
      _$ClassroomTimeSlotFromJson(json);

  factory ClassroomTimeSlot.fromBooking(dynamic booking) {
    return ClassroomTimeSlot(
      startTime: booking.startTime,
      endTime: booking.endTime,
      status: booking.isOccupied == 1
          ? ClassroomBookingStatus.occupied
          : ClassroomBookingStatus.available,
    );
  }
}
