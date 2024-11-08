// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceCourseRecordImpl _$$AttendanceCourseRecordImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceCourseRecordImpl(
      id: json['id'] as String,
      courseId: json['courseId'] as String,
      courseName: json['courseName'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      classroom: json['classroom'] as String,
      teacherName: json['teacherName'] as String,
      status: $enumDecode(_$AttendanceStatusEnumMap, json['status']),
      leaveRequest: json['leaveRequest'] == null
          ? null
          : LeaveRequestRecord.fromJson(
              json['leaveRequest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AttendanceCourseRecordImplToJson(
        _$AttendanceCourseRecordImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'courseId': instance.courseId,
      'courseName': instance.courseName,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'classroom': instance.classroom,
      'teacherName': instance.teacherName,
      'status': _$AttendanceStatusEnumMap[instance.status]!,
      'leaveRequest': instance.leaveRequest,
    };

const _$AttendanceStatusEnumMap = {
  AttendanceStatus.present: 'present',
  AttendanceStatus.absent: 'absent',
  AttendanceStatus.late: 'late',
  AttendanceStatus.leave: 'leave',
};

_$LeaveRequestRecordImpl _$$LeaveRequestRecordImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaveRequestRecordImpl(
      id: json['id'] as String,
      attendanceRecordId: json['attendanceRecordId'] as String,
      reason: json['reason'] as String,
      requestTime: DateTime.parse(json['requestTime'] as String),
      status: $enumDecode(_$LeaveStatusEnumMap, json['status']),
      reviewTime: json['reviewTime'] == null
          ? null
          : DateTime.parse(json['reviewTime'] as String),
      reviewNote: json['reviewNote'] as String?,
    );

Map<String, dynamic> _$$LeaveRequestRecordImplToJson(
        _$LeaveRequestRecordImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attendanceRecordId': instance.attendanceRecordId,
      'reason': instance.reason,
      'requestTime': instance.requestTime.toIso8601String(),
      'status': _$LeaveStatusEnumMap[instance.status]!,
      'reviewTime': instance.reviewTime?.toIso8601String(),
      'reviewNote': instance.reviewNote,
    };

const _$LeaveStatusEnumMap = {
  LeaveStatus.pending: 'pending',
  LeaveStatus.approved: 'approved',
  LeaveStatus.rejected: 'rejected',
};

_$AttendanceStatisticsImpl _$$AttendanceStatisticsImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceStatisticsImpl(
      totalClasses: (json['totalClasses'] as num).toInt(),
      presentCount: (json['presentCount'] as num).toInt(),
      absentCount: (json['absentCount'] as num).toInt(),
      lateCount: (json['lateCount'] as num).toInt(),
      leaveCount: (json['leaveCount'] as num).toInt(),
      attendanceRate: (json['attendanceRate'] as num).toDouble(),
    );

Map<String, dynamic> _$$AttendanceStatisticsImplToJson(
        _$AttendanceStatisticsImpl instance) =>
    <String, dynamic>{
      'totalClasses': instance.totalClasses,
      'presentCount': instance.presentCount,
      'absentCount': instance.absentCount,
      'lateCount': instance.lateCount,
      'leaveCount': instance.leaveCount,
      'attendanceRate': instance.attendanceRate,
    };

_$LeaveRequestFormImpl _$$LeaveRequestFormImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaveRequestFormImpl(
      attendanceRecordId: json['attendanceRecordId'] as String,
      reason: json['reason'] as String,
      requestTime: DateTime.parse(json['requestTime'] as String),
    );

Map<String, dynamic> _$$LeaveRequestFormImplToJson(
        _$LeaveRequestFormImpl instance) =>
    <String, dynamic>{
      'attendanceRecordId': instance.attendanceRecordId,
      'reason': instance.reason,
      'requestTime': instance.requestTime.toIso8601String(),
    };
