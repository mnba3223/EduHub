import 'package:dio/dio.dart';
import 'package:edutec_hub/data/models/booking/classroom_model.dart';

import 'package:edutec_hub/data/network/apis/booking/booking_api.dart';
import 'package:edutec_hub/data/network/core/dio_client.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';

class StudentClassroomBookingRepository {
  final BookingApi _api;
  final bool useMock;

  StudentClassroomBookingRepository({
    BookingApi? api,
    this.useMock = false,
  }) : _api = api ?? BookingApi(DioClient().dio);

  Future<List<Classroom>> getClassrooms() async {
    if (useMock) {
      return _getMockClassrooms();
    }

    try {
      final response = await _api.getClassrooms();
      if (response.success) {
        return response.data!;
      } else {
        throw ApiException(
          response.message,
          errorCode: response.code.toString(),
        );
      }
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  Future<void> createBooking(ClassroomBookingRequest request) async {
    if (useMock) {
      await Future.delayed(const Duration(seconds: 1));
      return;
    }

    try {
      final response = await _api.createBooking(
        request.studentId,
        request.classroomId,
        request.bookingDate.toIso8601String(),
        request.startTime,
        request.endTime,
        request.totalAmount,
      );

      if (!response.success) {
        throw ApiException(
          response.message,
          errorCode: response.code.toString(),
        );
      }
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  Future<List<ClassroomBookingHistory>> getClassroomBookingHistory(
      int studentId) async {
    if (useMock) {
      return _getMockBookingHistory();
    }

    try {
      final response = await _api.getBookingHistory(studentId);
      if (response.success) {
        return response.data!;
      } else {
        throw ApiException(
          response.message,
          errorCode: response.code.toString(),
        );
      }
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  List<ClassroomBookingHistory> _getMockBookingHistory() {
    return [
      // 模拟数据
    ];
  }

  List<Classroom> _getMockClassrooms() {
    return [
      Classroom(
        classroomId: 1,
        classroomName: 'room A',
        classroomDescription: 'Spacious classroom with modern facilities',
        peopleNumber: 55,
        weekdayPrice: 1000,
        weekendPrice: 2000,
        classroomImage: '/uploads/classroom1.png',
        bookings: [
          Booking(
            bookingId: 1,
            bookingDate: DateTime.now(),
            startTime: '10:00:00',
            endTime: '12:00:00',
            isOccupied: 1,
          ),
        ],
      ),
      Classroom(
        classroomId: 2,
        classroomName: 'room B',
        classroomDescription: 'Suitable for small group discussions',
        peopleNumber: 30,
        weekdayPrice: 800,
        weekendPrice: 1600,
        classroomImage: '/uploads/classroom2.png',
        bookings: [],
      ),
    ];
  }
}
