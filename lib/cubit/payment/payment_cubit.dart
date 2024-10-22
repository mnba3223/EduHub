import 'package:edutec_hub/data/repositories/payment_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

// Events
abstract class PaymentEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class InitiatePayment extends PaymentEvent {
  final DateTime selectedDay;
  final String selectedTime;
  final int classroom;
  final double amount;
  final String courseId;

  InitiatePayment({
    required this.selectedDay,
    required this.selectedTime,
    required this.classroom,
    required this.amount,
    required this.courseId,
  });

  @override
  List<Object> get props =>
      [selectedDay, selectedTime, classroom, amount, courseId];
}

class SelectPaymentMethod extends PaymentEvent {
  final String paymentMethod;

  SelectPaymentMethod({required this.paymentMethod});

  @override
  List<Object> get props => [paymentMethod];
}

class CompletePayment extends PaymentEvent {}

// States
abstract class PaymentState extends Equatable {
  @override
  List<Object?> get props => [];
}

class PaymentInitial extends PaymentState {}

class PaymentInProgress extends PaymentState {
  final DateTime selectedDay;
  final String selectedTime;
  final int classroom;
  final double amount;
  final String courseId;
  final String? paymentMethod;

  PaymentInProgress({
    required this.selectedDay,
    required this.selectedTime,
    required this.classroom,
    required this.amount,
    required this.courseId,
    this.paymentMethod,
  });

  @override
  List<Object?> get props =>
      [selectedDay, selectedTime, classroom, amount, courseId, paymentMethod];
}

class PaymentMethodSelected extends PaymentState {
  final PaymentInProgress previousState;
  final String paymentMethod;

  PaymentMethodSelected(
      {required this.previousState, required this.paymentMethod});

  @override
  List<Object> get props => [previousState, paymentMethod];
}

class PaymentCompleted extends PaymentState {}

class PaymentError extends PaymentState {
  final String error;

  PaymentError(this.error);

  @override
  List<Object> get props => [error];
}

class PaymentCubit extends Cubit<PaymentState> {
  final PaymentRepository _paymentRepository;

  PaymentCubit(this._paymentRepository) : super(PaymentInitial());

  void initiatePayment({
    required DateTime selectedDay,
    required String selectedTime,
    required int classroom,
    required double amount,
    required String courseId,
  }) {
    emit(PaymentInProgress(
      selectedDay: selectedDay,
      selectedTime: selectedTime,
      classroom: classroom,
      amount: amount,
      courseId: courseId,
    ));
  }

  void selectPaymentMethod(String paymentMethod) {
    if (state is PaymentInProgress) {
      final currentState = state as PaymentInProgress;
      emit(PaymentMethodSelected(
        previousState: currentState,
        paymentMethod: paymentMethod,
      ));
    }
  }

  Future<void> completePayment() async {
    if (state is PaymentMethodSelected) {
      final currentState = state as PaymentMethodSelected;
      try {
        final success = await _paymentRepository.processPayment(
          paymentMethod: currentState.paymentMethod,
          amount: currentState.previousState.amount,
          courseId: currentState.previousState.courseId,
        );
        if (success) {
          emit(PaymentCompleted());
        } else {
          emit(PaymentError('Payment processing failed'));
        }
      } catch (e) {
        emit(PaymentError(e.toString()));
      }
    } else {
      emit(PaymentError('Invalid state for payment completion'));
    }
  }
}
