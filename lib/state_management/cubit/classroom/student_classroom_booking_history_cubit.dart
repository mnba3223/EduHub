// classroom_booking_history_cubit.dart
import 'package:edutec_hub/config/user_session.dart';
import 'package:edutec_hub/data/models/booking/classroom_model.dart';
import 'package:edutec_hub/data/repositories/booking/student_classroom_booking_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClassroomBookingHistoryCubit extends Cubit<ClassroomBookingHistoryState> {
  final StudentClassroomBookingRepository _repository;

  ClassroomBookingHistoryCubit({
    required StudentClassroomBookingRepository repository,
  })  : _repository = repository,
        super(const ClassroomBookingHistoryState());

  Future<void> loadBookingHistory() async {
    emit(state.copyWith(isLoading: true));
    try {
      final bookings = await _repository.getClassroomBookingHistory(
        UserSession.instance.roleId!,
      );
      emit(state.copyWith(
        bookings: bookings,
        isLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: e.toString(),
      ));
    }
  }
}
