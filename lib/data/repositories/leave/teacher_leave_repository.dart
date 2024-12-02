import 'package:dio/dio.dart';
import 'package:edutec_hub/data/models/teacher/teacher_leave.dart';
import 'package:edutec_hub/data/network/apis/teacher_api.dart';
import 'package:edutec_hub/data/network/core/dio_client.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';

abstract class TeacherLeaveRepository {
  Future<List<TeacherLeave>> getTeacherLeaves({
    required int teacherId,
    DateTime? startDate,
    DateTime? endDate,
  });

  Future<TeacherLeave> updateLeaveRequest(int lessonId);

  Future<void> cancelLeaveRequest(int lessonId);

  Future<TeacherLeave> createLeaveRequest(int lessonId);
}

class TeacherLeaveRepositoryImpl implements TeacherLeaveRepository {
  final TeacherApi _api;
  final bool useMock;

  TeacherLeaveRepositoryImpl({
    TeacherApi? api,
    this.useMock = false,
  }) : _api = api ?? TeacherApi(DioClient().dio);

  @override
  Future<List<TeacherLeave>> getTeacherLeaves({
    required int teacherId,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    if (useMock) {
      return _getMockLeaveData();
    }

    try {
      final response = await _api.getTeacherLeaves(
        teacherId,
        startTime: startDate?.toIso8601String(),
        endTime: endDate?.toIso8601String(),
      );

      if (response.success) {
        return response.data ?? [];
      } else {
        throw ApiException(
          response.message ?? 'Failed to get teacher leaves',
          errorCode: response.code.toString(),
        );
      }
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  @override
  Future<TeacherLeave> updateLeaveRequest(int lessonId) async {
    if (useMock) {
      return _getMockLeaveData().first;
    }

    try {
      final response = await _api.updateTeacherLeave(lessonId);

      if (response.success) {
        return response.data!;
      } else {
        throw ApiException(
          response.message ?? 'Failed to update leave request',
          errorCode: response.code.toString(),
        );
      }
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  @override
  Future<TeacherLeave> createLeaveRequest(int lessonId) async {
    try {
      final response = await _api.createTeacherLeave(lessonId);
      if (response.success) {
        return response.data!;
      } else {
        throw ApiException(
          response.message ?? 'Failed to create leave request',
          errorCode: response.code.toString(),
        );
      }
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  @override
  Future<void> cancelLeaveRequest(int lessonId) async {
    try {
      final response = await _api.cancelTeacherLeave(lessonId);
      if (!response.success) {
        throw ApiException(
          response.message ?? 'Failed to cancel leave request',
          errorCode: response.code.toString(),
        );
      }
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  List<TeacherLeave> _getMockLeaveData() {
    // Mock data for testing
    return [
      TeacherLeave(
        lessonId: 1,
        lessonTitle: "測試課程",
        lessonDescription: "課程描述",
        teacherId: 4,
        classroomId: 1,
        courseId: 4,
        lessonDate: DateTime.now(),
        startTime: "10:00:00",
        endTime: "12:00:00",
        lessonPrice: 3500,
        leaveRequested: 1,
        leaveStatus: "Pending",
        leaveRequestDate: DateTime.now(),
      ),
    ];
  }
}
