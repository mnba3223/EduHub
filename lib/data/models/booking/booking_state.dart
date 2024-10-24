import 'package:equatable/equatable.dart';
import 'booking_info.dart';

abstract class BookingState extends Equatable {
  @override
  List<Object?> get props => [];
}

class BookingInitial extends BookingState {}

class BookingProgress extends BookingState {
  final BookingInfo bookingInfo;

  BookingProgress({
    required this.bookingInfo,
  });

  BookingProgress copyWith({
    BookingInfo? bookingInfo,
  }) {
    return BookingProgress(
      bookingInfo: bookingInfo ?? this.bookingInfo,
    );
  }

  @override
  List<Object?> get props => [bookingInfo];
}
