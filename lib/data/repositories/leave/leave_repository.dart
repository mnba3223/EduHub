import 'package:dio/dio.dart';
import 'package:edutec_hub/config/user_session.dart';
import 'package:edutec_hub/data/models/attendance/leave_models.dart';

import 'package:edutec_hub/data/network/apis/student_api.dart';
import 'package:edutec_hub/data/network/core/dio_client.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';

class LeaveRepository {
  final StudentApi _api;
  final bool useMock;

  LeaveRepository({
    StudentApi? api,
    this.useMock = false,
  }) : _api = api ?? StudentApi(DioClient().dio);

  int? _getStudentId() {
    final userId = UserSession.instance.roleId;
    if (userId == null) {
      throw ApiException('User not logged in');
    }
    return userId;
  }

  // 獲取請假記錄
  Future<List<LeaveRecord>> getLeaveRecords() async {
    if (useMock) {
      return _getMockLeaveRecords();
    }

    final studentId = _getStudentId();
    if (studentId == null) {
      throw ApiException('User not logged in');
    }

    try {
      final response = await _api.getLeaveRecords(studentId: studentId);

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

  // 提交請假申請
  Future<void> submitLeaveRequest(LeaveRequest application) async {
    final studentId = _getStudentId();
    if (studentId == null) {
      throw ApiException('User not logged in');
    }

    try {
      final formData = FormData();

      // 为每个lessonId添加单独的field
      for (var id in application.lessonIds) {
        formData.fields.add(MapEntry('lesson_ids', id.toString()));
      }

      formData.fields.addAll([
        MapEntry('leave_reason', application.leaveReason),
        MapEntry('leave_type', application.leaveType),
      ]);

      final response = await _api.submitLeaveRequest(studentId, formData);

      if (!response.success) {
        throw ApiException(response.message);
      }
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  // Mock 數據
  List<LeaveRecord> _getMockLeaveRecords() {
    return [
      LeaveRecord(
        lessonId: 43,
        studentId: 15,
        status: 'Leave',
        leaveRequested: 1,
        leaveStatus: 'Approved',
        leaveReason: '出國',
        leaveRequestDate: DateTime.parse('2024-12-11T16:19:28.46Z'),
        studentName: 'teststudent11',
        className: '初階英文B班',
        lessonDate: DateTime.parse('2024-12-13T00:00:00Z'),
        startTime: '10:00:00',
        endTime: '12:00:00',
        makeupArranged: 0,
      ),
      // 可以添加更多模擬數據
    ];
  }
}
