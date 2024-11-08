import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/attendance/attendance_models.dart';
import 'package:edutec_hub/presentation/screens/student/attendance/leave_dialog.dart';
import 'package:edutec_hub/state_management/cubit/attendance/attendance_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AttendanceRecordCard extends StatelessWidget {
  final AttendanceCourseRecord record;

  const AttendanceRecordCard({
    Key? key,
    required this.record,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 12.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12.r),
        onTap: _canApplyLeave() ? () => _showLeaveRequestDialog(context) : null,
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      record.courseName,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  _buildStatusChip(record.status),
                ],
              ),
              SizedBox(height: 8.h),
              Text(
                '${DateFormat('HH:mm').format(record.startTime)} - '
                '${DateFormat('HH:mm').format(record.endTime)}',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                '${'classroom'.tr()}: ${record.classroom}',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey[600],
                ),
              ),
              if (record.leaveRequest != null)
                _buildLeaveRequestInfo(record.leaveRequest!),
              if (_canApplyLeave())
                Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: Text(
                    'click_to_apply_leave'.tr(),
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.blue,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  bool _canApplyLeave() {
    // 判斷是否可以請假:
    // 1. 沒有請假紀錄
    // 2. 狀態為未出席
    // 3. 課程時間未結束（可選）
    final bool noExistingLeaveRequest = record.leaveRequest == null;
    final bool isNotAttended = record.status == AttendanceStatus.notAttended;
    final bool courseNotEnded = DateTime.now().isBefore(record.endTime);

    return noExistingLeaveRequest && isNotAttended && courseNotEnded;
  }

  Widget _buildStatusChip(AttendanceStatus status) {
    final colors = {
      AttendanceStatus.present: Colors.green,
      AttendanceStatus.notAttended: Colors.grey,
      AttendanceStatus.absent: Colors.red,
      AttendanceStatus.late: Colors.orange,
      AttendanceStatus.leave: Colors.blue,
    };

    final labels = {
      AttendanceStatus.present: 'present'.tr(),
      AttendanceStatus.notAttended: 'not_attended'.tr(),
      AttendanceStatus.absent: 'absent'.tr(),
      AttendanceStatus.late: 'late'.tr(),
      AttendanceStatus.leave: 'leave'.tr(),
    };

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: colors[status]!.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Text(
        labels[status]!,
        style: TextStyle(
          color: colors[status],
          fontSize: 12.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildLeaveRequestInfo(LeaveRequestRecord leaveRequest) {
    final statusColors = {
      LeaveStatus.pending: Colors.orange,
      LeaveStatus.approved: Colors.green,
      LeaveStatus.rejected: Colors.red,
    };

    final statusLabels = {
      LeaveStatus.pending: 'under_review'.tr(),
      LeaveStatus.approved: 'approved'.tr(),
      LeaveStatus.rejected: 'rejected'.tr(),
    };

    return Container(
      margin: EdgeInsets.only(top: 8.h),
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        color: statusColors[leaveRequest.status]!.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'leave_status'.tr(),
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey[600],
                ),
              ),
              Text(
                statusLabels[leaveRequest.status]!,
                style: TextStyle(
                  color: statusColors[leaveRequest.status],
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          if (leaveRequest.reason.isNotEmpty) ...[
            SizedBox(height: 4.h),
            Text(
              leaveRequest.reason,
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey[600],
              ),
            ),
          ],
        ],
      ),
    );
  }

  void _showLeaveRequestDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (dialogContext) => BlocProvider.value(
        value: context.read<AttendanceCubit>(),
        child: LeaveRequestDialog(
          courseRecord: record,
        ),
      ),
    );
  }
}
