import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

// Events
abstract class BookingEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SelectTimeSlot extends BookingEvent {
  final DateTime selectedDay;
  final String selectedTime;
  final int classroom;

  SelectTimeSlot(
      {required this.selectedDay,
      required this.selectedTime,
      required this.classroom});

  @override
  List<Object> get props => [selectedDay, selectedTime, classroom];
}

class SelectPaymentMethod extends BookingEvent {
  final String paymentMethod;

  SelectPaymentMethod({required this.paymentMethod});

  @override
  List<Object> get props => [paymentMethod];
}

class CompletePayment extends BookingEvent {}

// States
abstract class BookingState extends Equatable {
  @override
  List<Object?> get props => [];
}

class BookingInitial extends BookingState {}

class TimeSlotSelected extends BookingState {
  final DateTime selectedDay;
  final String selectedTime;
  final int classroom;

  TimeSlotSelected(
      {required this.selectedDay,
      required this.selectedTime,
      required this.classroom});

  @override
  List<Object> get props => [selectedDay, selectedTime, classroom];
}

class PaymentMethodSelected extends BookingState {
  final String paymentMethod;

  PaymentMethodSelected({required this.paymentMethod});

  @override
  List<Object> get props => [paymentMethod];
}

class PaymentCompleted extends BookingState {}

// BLoC
class BookingBloc extends Bloc<BookingEvent, BookingState> {
  BookingBloc() : super(BookingInitial()) {
    on<SelectTimeSlot>((event, emit) {
      emit(TimeSlotSelected(
        selectedDay: event.selectedDay,
        selectedTime: event.selectedTime,
        classroom: event.classroom,
      ));
    });

    on<SelectPaymentMethod>((event, emit) {
      emit(PaymentMethodSelected(paymentMethod: event.paymentMethod));
    });

    on<CompletePayment>((event, emit) {
      emit(PaymentCompleted());
    });
  }
}
