// student_booking_bloc.dart
import 'package:edutec_hub/config/user_session.dart';
import 'package:edutec_hub/data/models/booking/classroom_model.dart';
import 'package:edutec_hub/data/repositories/booking/student_classroom_booking_repository.dart';
import 'package:edutec_hub/state_management/blocs/booking/student_classroom_booking/classroom_booking_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StudentClassroomBookingBloc
    extends Bloc<ClassroomBookingEvent, ClassroomBookingState> {
  final StudentClassroomBookingRepository _repository;

  StudentClassroomBookingBloc({
    required StudentClassroomBookingRepository repository,
  })  : _repository = repository,
        super(const ClassroomBookingState()) {
    on<LoadClassrooms>(_onLoadClassrooms);
    on<SelectDate>(_onSelectDate);
    on<SelectTimeSlot>(_onSelectTimeSlot);
    on<SelectClassroom>(_onSelectClassroom);
    on<CreateBooking>(_onCreateBooking);
  }

  Future<void> _onLoadClassrooms(
    LoadClassrooms event,
    Emitter<ClassroomBookingState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      final classrooms = await _repository.getClassrooms();
      emit(state.copyWith(
        classrooms: classrooms,
        isLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: e.toString(),
      ));
    }
  }

  void _onSelectDate(
    SelectDate event,
    Emitter<ClassroomBookingState> emit,
  ) {
    emit(state.copyWith(
      selectedDate: event.date,
      error: null,
    ));
  }

  void _onSelectTimeSlot(
    SelectTimeSlot event,
    Emitter<ClassroomBookingState> emit,
  ) {
    if (event.time.isEmpty) {
      emit(state.copyWith(error: 'Invalid time slot'));
      return;
    }

    emit(state.copyWith(
      selectedDate: event.bookingDate,
      selectedTimeSlot: event.time,
      error: null,
    ));
  }

  void _onSelectClassroom(
    SelectClassroom event,
    Emitter<ClassroomBookingState> emit,
  ) {
    emit(state.copyWith(
      selectedClassroom: event.classroom,
      error: null,
    ));
  }

  Future<void> _onCreateBooking(
    CreateBooking event,
    Emitter<ClassroomBookingState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      // 記錄請求數據
      print('Creating booking with data:');
      print('Student ID: ${UserSession.instance.roleId}');
      print('Classroom ID: ${event.classroom.classroomId}');
      print('Booking Date: ${event.bookingDate}');
      print('Start Time: ${event.startTime}');
      print('End Time: ${event.endTime}');
      print(
          'Total Amount: ${_calculateAmount(event.classroom, event.bookingDate)}');

      final request = ClassroomBookingRequest(
        studentId: UserSession.instance.roleId!,
        classroomId: event.classroom.classroomId,
        bookingDate: event.bookingDate,
        startTime: event.startTime,
        endTime: event.endTime,
        totalAmount: _calculateAmount(
          event.classroom,
          event.bookingDate,
        ),
      );
      await _repository.createBooking(request);
      // 記錄序列化後的請求
      print('Serialized request: ${request.toJson()}');

      emit(state.copyWith(isLoading: false));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: e.toString(),
      ));
    }
  }

  String _calculateEndTime(String startTime) {
    final startDateTime = DateTime.parse('2000-01-01 $startTime');
    final endDateTime = startDateTime.add(const Duration(hours: 2));
    return '${endDateTime.hour.toString().padLeft(2, '0')}:${endDateTime.minute.toString().padLeft(2, '0')}';
  }

  double _calculateAmount(Classroom classroom, DateTime date) {
    final isWeekend =
        date.weekday == DateTime.saturday || date.weekday == DateTime.sunday;
    return isWeekend ? classroom.weekendPrice : classroom.weekdayPrice;
  }
}
