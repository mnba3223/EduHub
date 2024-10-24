import 'package:equatable/equatable.dart';

class BookingInfo extends Equatable {
  final DateTime? selectedDay;
  final String? selectedTime;
  final int? classroom;
  final String? paymentMethod;
  final String? proofImagePath;
  final bool isCompleted;

  const BookingInfo({
    this.selectedDay,
    this.selectedTime,
    this.classroom,
    this.paymentMethod,
    this.proofImagePath,
    this.isCompleted = false,
  });

  BookingInfo copyWith({
    DateTime? selectedDay,
    String? selectedTime,
    int? classroom,
    String? paymentMethod,
    String? proofImagePath,
    bool? isCompleted,
  }) {
    return BookingInfo(
      selectedDay: selectedDay ?? this.selectedDay,
      selectedTime: selectedTime ?? this.selectedTime,
      classroom: classroom ?? this.classroom,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      proofImagePath: proofImagePath ?? this.proofImagePath,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  @override
  List<Object?> get props => [
        selectedDay,
        selectedTime,
        classroom,
        paymentMethod,
        proofImagePath,
        isCompleted,
      ];
}
