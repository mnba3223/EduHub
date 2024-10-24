import 'package:equatable/equatable.dart';

abstract class BookingEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SelectTimeSlot extends BookingEvent {
  final DateTime selectedDay;
  final String selectedTime;
  final int classroom;

  SelectTimeSlot({
    required this.selectedDay,
    required this.selectedTime,
    required this.classroom,
  });

  @override
  List<Object> get props => [selectedDay, selectedTime, classroom];
}

class UploadPaymentProof extends BookingEvent {
  final String proofImagePath;

  UploadPaymentProof({required this.proofImagePath});

  @override
  List<Object> get props => [proofImagePath];
}

class CompleteBooking extends BookingEvent {}
