import 'package:dio/dio.dart';

import 'package:edutec_hub/config/user_session.dart';

import 'package:edutec_hub/data/models/attendance/attendance_models.dart';
import 'package:edutec_hub/data/network/apis/student_api.dart';
import 'package:edutec_hub/data/network/core/dio_client.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';

class AttendanceRepository {
  final api = StudentApi(DioClient().dio);
  final bool useMock;
  static List<AttendanceCourseRecord> _mockRecords = [];
  static List<LeaveRequestRecord> _mockLeaveRequests = [];
  AttendanceRepository({
    this.useMock = false,
  }) {
    if (_mockRecords.isEmpty) {
      _mockRecords = _initMockAttendanceRecords();
    }
  }

  String? _getStudentId() {
    final state = UserSession.instance.userId;
    if (state == null) {
      return null;
    }
    return state.toString();
  }

  Future<List<AttendanceCourseRecord>> getAttendanceRecords({
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    if (useMock) {
      await Future.delayed(const Duration(milliseconds: 500));
      return _mockRecords;
    }

    final studentId = _getStudentId();
    if (studentId == null) {
      throw ApiException('User not logged in');
    }

    try {
      final response = await api.getAttendanceRecords(
        studentId,
        startDate.toIso8601String(),
        endDate.toIso8601String(),
      );

      if (!response.success) {
        throw ApiException(
          response.message,
          errorCode: response.code.toString(),
        );
      }

      return response.data ?? [];
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  Future<AttendanceStatistics> getAttendanceStatistics({
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    if (useMock) {
      await Future.delayed(const Duration(milliseconds: 500));
      return _getMockStatistics();
    }

    final studentId = _getStudentId();
    if (studentId == null) {
      throw ApiException('User not logged in');
    }

    try {
      final response = await api.getAttendanceStatistics(
        studentId,
        startDate.toIso8601String(),
        endDate.toIso8601String(),
      );

      if (!response.success) {
        throw ApiException(
          response.message,
          errorCode: response.code.toString(),
        );
      }

      return response.data!;
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  Future<void> submitLeaveRequest(LeaveRequestForm form) async {
    if (useMock) {
      await Future.delayed(const Duration(milliseconds: 500));

      // 找到並更新對應的記錄
      final recordIndex = _mockRecords
          .indexWhere((record) => record.id == form.attendanceRecordId);

      if (recordIndex != -1) {
        final leaveRequest = LeaveRequestRecord(
          id: 'leave_${DateTime.now().millisecond}',
          attendanceRecordId: form.attendanceRecordId,
          reason: form.reason,
          requestTime: form.requestTime,
          status: LeaveStatus.pending,
        );

        _mockRecords[recordIndex] = _mockRecords[recordIndex].copyWith(
          status: AttendanceStatus.leave,
          leaveRequest: leaveRequest,
        );
      }
      return;
    }

    final studentId = _getStudentId();
    if (studentId == null) {
      throw ApiException('User not logged in');
    }

    try {
      final response = await api.submitLeaveRequest(
        studentId,
        form.toJson(),
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

  Future<void> cancelLeaveRequest(String leaveRequestId) async {
    if (useMock) {
      await Future.delayed(const Duration(milliseconds: 500));
      return;
    }

    final studentId = _getStudentId();
    if (studentId == null) {
      throw ApiException('User not logged in');
    }

    try {
      final response = await api.cancelLeaveRequest(
        studentId,
        leaveRequestId,
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

  Future<List<LeaveRequestRecord>> getLeaveRequestHistory() async {
    if (useMock) {
      await Future.delayed(const Duration(milliseconds: 500));
      return _getMockLeaveRequests();
    }

    final studentId = _getStudentId();
    if (studentId == null) {
      throw ApiException('User not logged in');
    }

    try {
      final response = await api.getLeaveRequestHistory(studentId);

      if (!response.success) {
        throw ApiException(
          response.message,
          errorCode: response.code.toString(),
        );
      }

      return response.data ?? [];
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  Future<AttendanceCourseRecord> getAttendanceDetail(String recordId) async {
    if (useMock) {
      await Future.delayed(const Duration(milliseconds: 500));
      return _getMockAttendanceRecord();
    }

    try {
      final response = await api.getAttendanceDetail(recordId);

      if (!response.success) {
        throw ApiException(
          response.message,
          errorCode: response.code.toString(),
        );
      }

      return response.data!;
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

/*************  ✨ Codeium Command ⭐  *************/
  /// Returns a list of mock attendance records for testing purposes.
  ///
  /// The records cover various scenarios, including:
  ///
  /// 1. 未出席且可請假的課程（今天的未來課程）
  /// 2. 未出席但已請假的課程
  /// 3. 已缺席的課程（過去的課程）
  /// 4. 出席的課程
  /// 5. 遲到的課程
/******  89a317f0-d853-4fdb-921a-e3d4c8833639  *******/ // Mock data methods

  List<AttendanceCourseRecord> _initMockAttendanceRecords() {
    final now = DateTime.now();

    return [
      // 未出席且可請假的課程（今天的未來課程）
      AttendanceCourseRecord(
        id: 'record_1',
        courseId: 'course_1',
        courseName: '程式設計',
        startTime: now.add(const Duration(hours: 2)),
        endTime: now.add(const Duration(hours: 4)),
        classroom: 'Room 101',
        teacherName: '王老師',
        status: AttendanceStatus.notAttended,
        leaveRequest: null,
      ),

      // 未出席但已請假的課程
      AttendanceCourseRecord(
        id: 'record_2',
        courseId: 'course_2',
        courseName: '資料結構',
        startTime: now.add(const Duration(hours: 4)),
        endTime: now.add(const Duration(hours: 6)),
        classroom: 'Room 102',
        teacherName: '李老師',
        status: AttendanceStatus.leave,
        leaveRequest: LeaveRequestRecord(
          id: 'leave_1',
          attendanceRecordId: 'record_2',
          reason: '身體不適需要看醫生',
          requestTime: now.subtract(const Duration(days: 1)),
          status: LeaveStatus.approved,
        ),
      ),

      // 已缺席的課程（過去的課程）
      AttendanceCourseRecord(
        id: 'record_3',
        courseId: 'course_3',
        courseName: '計算機概論',
        startTime: now.subtract(const Duration(hours: 3)),
        endTime: now.subtract(const Duration(hours: 1)),
        classroom: 'Room 103',
        teacherName: '張老師',
        status: AttendanceStatus.absent,
        leaveRequest: null,
      ),

      // 出席的課程
      AttendanceCourseRecord(
        id: 'record_4',
        courseId: 'course_4',
        courseName: '人工智慧',
        startTime: now.subtract(const Duration(hours: 5)),
        endTime: now.subtract(const Duration(hours: 3)),
        classroom: 'Room 104',
        teacherName: '陳老師',
        status: AttendanceStatus.present,
        leaveRequest: null,
      ),

      // 遲到的課程
      AttendanceCourseRecord(
        id: 'record_5',
        courseId: 'course_5',
        courseName: '機器學習',
        startTime: now.subtract(const Duration(hours: 7)),
        endTime: now.subtract(const Duration(hours: 5)),
        classroom: 'Room 105',
        teacherName: '林老師',
        status: AttendanceStatus.late,
        leaveRequest: null,
      ),
    ];
  }

  List<LeaveRequestRecord> _getMockLeaveRequests() {
    return List.generate(
      3,
      (index) => LeaveRequestRecord(
        id: 'leave_$index',
        attendanceRecordId: 'record_$index',
        reason: '請假原因 ${index + 1}',
        requestTime: DateTime.now().subtract(Duration(days: index)),
        status: LeaveStatus.values[index % LeaveStatus.values.length],
      ),
    );
  }

  AttendanceStatistics _getMockStatistics() {
    return AttendanceStatistics(
      totalClasses: 100,
      presentCount: 85,
      absentCount: 5,
      lateCount: 3,
      leaveCount: 7,
      attendanceRate: 0.85,
    );
  }

  AttendanceCourseRecord _getMockAttendanceRecord() {
    return AttendanceCourseRecord(
      id: 'record_detail',
      courseId: 'course_1',
      courseName: '數學課程',
      startTime: DateTime.now(),
      endTime: DateTime.now().add(const Duration(hours: 2)),
      classroom: 'Room 101',
      teacherName: '王老師',
      status: AttendanceStatus.present,
      leaveRequest: null,
    );
  }
}
