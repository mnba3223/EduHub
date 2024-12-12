import 'package:dio/dio.dart';
import 'package:edutec_hub/config/user_session.dart';
import 'package:edutec_hub/data/models/attendance/attendance_models.dart';
import 'package:edutec_hub/data/network/apis/student_api.dart';
import 'package:edutec_hub/data/network/core/dio_client.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';

class AttendanceRepository {
  final StudentApi _api;
  final bool useMock;

  AttendanceRepository({
    StudentApi? api,
    this.useMock = false,
  }) : _api = api ?? StudentApi(DioClient().dio);

  int? _getStudentId() {
    final userId = UserSession.instance.userId;
    if (userId == null) {
      throw ApiException('User not logged in');
    }
    return userId;
  }

  Future<AttendanceResponse> getAttendanceAndLeave() async {
    if (useMock) {
      return _getMockAttendanceResponse();
    }

    final studentId = _getStudentId();
    if (studentId == null) {
      throw ApiException('User not logged in');
    }

    try {
      final response = await _api.getAttendanceAndLeave(studentId: studentId);

      if (!response.success) {
        throw ApiException(
          response.message,
          errorCode: response.code.toString(),
        );
      }

      return response.data ?? const AttendanceResponse();
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  AttendanceResponse _getMockAttendanceResponse() {
    return AttendanceResponse(
      Attendance: [
        AttendanceRecord(
          attendanceId: 9,
          studentId: 15,
          attendanceDate: DateTime.parse("2024-11-28T09:29:37Z"),
          temperature: 36.4,
          attendanceStatus: "CheckIn",
          attendanceImage: "/uploads/a46d79d2-e119-4542-9c38-bdd5b09dc9b6.jpg",
          studentName: "teststudent11",
          studentCode: "TSST321123",
        ),
        AttendanceRecord(
          attendanceId: 23,
          studentId: 15,
          attendanceDate: DateTime.parse("2024-11-28T17:05:41Z"),
          temperature: 36.5,
          attendanceStatus: "CheckOut",
          attendanceImage: "/uploads/c8e5160f-da19-4c8b-911a-432632f144bd.jpg",
          studentName: "teststudent11",
          studentCode: "TSST321123",
        ),
      ],
      Leave: [
        StudentLeaveRecord(
          lessonId: 43,
          studentId: 15,
          status: "Leave",
          leaveRequested: 1,
          leaveStatus: "Approved",
          leaveReason: "出國",
          leaveRequestDate: DateTime.parse("2024-12-11T16:19:28.46Z"),
          adjustmentTypeId: 1,
          studentName: "teststudent11",
          className: "初階英文B班",
          lessonDate: DateTime.parse("2024-12-13T00:00:00Z"),
          startTime: "10:00:00",
          endTime: "12:00:00",
          adjustmentType: "MAKEUP",
          makeupArranged: 0,
        ),
      ],
    );
  }
}
