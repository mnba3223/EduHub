import 'package:edutec_hub/data/models/booking/booking_event.dart';
import 'package:edutec_hub/data/models/booking/booking_info.dart';
import 'package:edutec_hub/data/models/booking/booking_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

// Events
class BookingBloc extends Bloc<BookingEvent, BookingState> {
  BookingBloc() : super(BookingInitial()) {
    on<SelectTimeSlot>((event, emit) {
      if (state is BookingProgress) {
        final currentState = state as BookingProgress;
        emit(currentState.copyWith(
          bookingInfo: currentState.bookingInfo.copyWith(
            selectedDay: event.selectedDay,
            selectedTime: event.selectedTime,
            classroom: event.classroom,
          ),
        ));
      } else {
        emit(BookingProgress(
          bookingInfo: BookingInfo(
            selectedDay: event.selectedDay,
            selectedTime: event.selectedTime,
            classroom: event.classroom,
          ),
        ));
      }
    });

    on<UploadPaymentProof>((event, emit) {
      if (state is BookingProgress) {
        final currentState = state as BookingProgress;
        emit(currentState.copyWith(
          bookingInfo: currentState.bookingInfo.copyWith(
            proofImagePath: event.proofImagePath,
          ),
        ));
      }
    });

    on<CompleteBooking>((event, emit) {
      if (state is BookingProgress) {
        final currentState = state as BookingProgress;
        emit(currentState.copyWith(
          bookingInfo: currentState.bookingInfo.copyWith(
            isCompleted: true,
          ),
        ));
      }
    });
  }
}
