import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:edutec_hub/data/models/booking/classroom_model.dart';

part 'classroom_booking_event.freezed.dart';

@freezed
class ClassroomBookingEvent with _$ClassroomBookingEvent {
  const factory ClassroomBookingEvent.loadClassrooms() = LoadClassrooms;

  const factory ClassroomBookingEvent.selectDate({
    required DateTime date,
  }) = SelectDate;

  const factory ClassroomBookingEvent.selectTimeSlot({
    required String time,
    required DateTime bookingDate,
    required int classroom,
  }) = SelectTimeSlot;

  const factory ClassroomBookingEvent.selectClassroom({
    required Classroom classroom,
  }) = SelectClassroom;

  const factory ClassroomBookingEvent.createBooking() = CreateBooking;
}
