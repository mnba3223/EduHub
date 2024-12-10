import 'package:freezed_annotation/freezed_annotation.dart';

part 'classroom_model.freezed.dart';
part 'classroom_model.g.dart';

@freezed
class Classroom with _$Classroom {
  const factory Classroom({
    @JsonKey(name: 'classroom_id') required int classroomId,
    @JsonKey(name: 'classroom_name') required String classroomName,
    @JsonKey(name: 'classroom_description') String? classroomDescription,
    @JsonKey(name: 'classroom_people_number') required int peopleNumber,
    @JsonKey(name: 'weekday_price') required double weekdayPrice,
    @JsonKey(name: 'weekend_price') required double weekendPrice,
    @JsonKey(name: 'classroom_image') String? classroomImage,
    @JsonKey(name: 'Bookings') List<Booking>? bookings,

    // 添加新字段
    @JsonKey(name: 'AvailableTimeSlots') List<String>? availableTimeSlots,
  }) = _Classroom;

  factory Classroom.fromJson(Map<String, dynamic> json) =>
      _$ClassroomFromJson(json);
}

@freezed
class Booking with _$Booking {
  const factory Booking({
    @JsonKey(name: 'booking_id') required int bookingId,
    @JsonKey(name: 'booking_date') required DateTime bookingDate,
    @JsonKey(name: 'booking_start_time') String? startTime,
    @JsonKey(name: 'booking_end_time') String? endTime,
    @JsonKey(name: 'isOccupied') required int isOccupied,
  }) = _Booking;

  factory Booking.fromJson(Map<String, dynamic> json) =>
      _$BookingFromJson(json);
}

@freezed
class ClassroomBookingState with _$ClassroomBookingState {
  const factory ClassroomBookingState({
    @Default([]) List<Classroom> classrooms,
    DateTime? selectedDate,
    String? selectedTimeSlot,
    Classroom? selectedClassroom,
    @Default(false) bool isLoading,
    String? error,
  }) = _ClassroomBookingState;
}

@freezed
class ClassroomBookingHistoryState with _$ClassroomBookingHistoryState {
  const factory ClassroomBookingHistoryState({
    @Default([]) List<ClassroomBookingHistory> bookings,
    @Default(false) bool isLoading,
    String? error,
  }) = _ClassroomBookingHistoryState;
}

@freezed
class ClassroomBookingRequest with _$ClassroomBookingRequest {
  const factory ClassroomBookingRequest({
    @JsonKey(name: 'student_id') required int studentId,
    @JsonKey(name: 'classroom_id') required int classroomId,
    @JsonKey(name: 'booking_date') required DateTime bookingDate,
    @JsonKey(name: 'booking_start_time') required String startTime,
    @JsonKey(name: 'booking_end_time') required String endTime,
    @JsonKey(name: 'total_amount') required double totalAmount,
  }) = _ClassroomBookingRequest;

  factory ClassroomBookingRequest.fromJson(Map<String, dynamic> json) =>
      _$ClassroomBookingRequestFromJson(json);
}

@freezed
class ClassroomBookingHistory with _$ClassroomBookingHistory {
  const factory ClassroomBookingHistory({
    @JsonKey(name: 'booking_id') required int bookingId,
    @JsonKey(name: 'student_id') required int studentId,
    @JsonKey(name: 'classroom_id') required int classroomId,
    @JsonKey(name: 'booking_date') required DateTime bookingDate,
    @JsonKey(name: 'booking_start_time') required String bookingStartTime,
    @JsonKey(name: 'booking_end_time') required String bookingEndTime,
    @JsonKey(name: 'total_amount') required double totalAmount,
    @JsonKey(name: 'payment_status') required int paymentStatus,
    @JsonKey(name: 'isOccupied') required int isOccupied,
    @JsonKey(name: 'classroom_name') required String classroomName,
  }) = _ClassroomBookingHistory;

  factory ClassroomBookingHistory.fromJson(Map<String, dynamic> json) =>
      _$ClassroomBookingHistoryFromJson(json);
}
