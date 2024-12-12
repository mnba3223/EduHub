import 'package:edutec_hub/data/models/attendance/attendance_models.dart';
import 'package:edutec_hub/data/models/attendance/leave_models.dart';
import 'package:edutec_hub/data/repositories/attendance_repository.dart';
import 'package:edutec_hub/presentation/screens/student/attendance/widgets/attendance_topbar.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/calendar.dart';
import 'package:edutec_hub/state_management/cubit/attendance/attendance_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:table_calendar/table_calendar.dart';

class StudentAttendanceScreen extends StatelessWidget {
  const StudentAttendanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AttendanceCubit(
        repository: AttendanceRepository(useMock: true),
      )..loadAttendanceData(),
      child: const _StudentAttendanceView(),
    );
  }
}

class _StudentAttendanceView extends StatelessWidget {
  const _StudentAttendanceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      // appBar: AppBar(
      //   title: Text('attendance_records'.tr()),
      //   backgroundColor: const Color(0xFF304F6B),
      // ),
      body: Column(
        children: [
          const AttendanceTopBar(),
          Expanded(
            child: BlocBuilder<AttendanceCubit, AttendanceState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state.error != null) {
                  return Center(child: Text(state.error!));
                }
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildStatistics(context),
                      _buildCalendar(context, state),
                      _buildDailyRecords(context, state),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatistics(BuildContext context) {
    final cubit = context.read<AttendanceCubit>();
    final checkInCount = cubit.getTotalCheckInCount();
    final leaveCount = cubit.getTotalLeaveCount();
    final totalCount = cubit.state.attendanceRecords.length;
    final attendanceRate = cubit.getAttendanceRate();

    return Container(
      margin: EdgeInsets.all(16.w),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            'attendance_statistics'.tr(),
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildStatItem(
                  'total_classes'.tr(), totalCount.toString(), Colors.blue),
              _buildStatItem(
                  'check_in'.tr(), checkInCount.toString(), Colors.green),
              _buildStatItem(
                  'leave'.tr(), leaveCount.toString(), Colors.orange),
            ],
          ),
          SizedBox(height: 12.h),
          SizedBox(
            width: 280.w,
            child: Column(
              children: [
                LinearProgressIndicator(
                  value: attendanceRate,
                  backgroundColor: Colors.grey[200],
                  color: Colors.blue,
                ),
                SizedBox(height: 8.h),
                Text(
                  '${'attendance_rate'.tr()}: ${(attendanceRate * 100).toStringAsFixed(1)}%',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCalendar(BuildContext context, AttendanceState state) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ReusableCalendar(
        selectedDay: state.selectedDate,
        onDaySelected: (selectedDay, focusedDay) {
          context.read<AttendanceCubit>().selectDate(selectedDay);
        },
        markerBuilder: (context, date, events) {
          final hasEvents =
              context.read<AttendanceCubit>().hasRecordsForDate(date);
          if (hasEvents) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              width: 8,
              height: 8,
              margin: const EdgeInsets.only(top: 20),
            );
          }
          return null;
        },
      ),
    );
  }

  Widget _buildDailyRecords(BuildContext context, AttendanceState state) {
    if (state.selectedDate == null) return const SizedBox.shrink();

    final cubit = context.read<AttendanceCubit>();
    final attendanceRecords =
        cubit.getAttendanceRecordsForDate(state.selectedDate!);
    final leaveRecords = cubit.getLeaveRecordsForDate(state.selectedDate!);

    if (attendanceRecords.isEmpty && leaveRecords.isEmpty) {
      return Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 32.h),
          child: Text(
            'no_records'.tr(),
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.grey,
            ),
          ),
        ),
      );
    }

    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            DateFormat('yyyy/MM/dd').format(state.selectedDate!),
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
            ),
          ),
          SizedBox(height: 8.h),
          ...attendanceRecords.map((record) => _buildAttendanceCard(record)),
          ...leaveRecords.map((record) => _buildLeaveCard(record)),
        ],
      ),
    );
  }

  Widget _buildStatItem(String label, String value, Color color) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          label,
          style: TextStyle(
            fontSize: 12.sp,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }

  Widget _buildAttendanceCard(AttendanceRecord record) {
    return Card(
      margin: EdgeInsets.only(bottom: 8.h),
      child: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  DateFormat('HH:mm').format(record.attendanceDate),
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                _buildStatusChip(record.attendanceStatus ?? ''),
              ],
            ),
            SizedBox(height: 8.h),
            Text(
              '體溫: ${record.temperature}°C',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLeaveCard(StudentLeaveRecord record) {
    return Card(
      margin: EdgeInsets.only(bottom: 8.h),
      child: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    record.className,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                _buildLeaveStatusChip(record.leaveStatus),
              ],
            ),
            SizedBox(height: 8.h),
            Text(
              '時間: ${record.startTime} - ${record.endTime}',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey[600],
              ),
            ),
            if (record.leaveReason.isNotEmpty) ...[
              SizedBox(height: 4.h),
              Text(
                '原因: ${record.leaveReason}',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildStatusChip(String status) {
    Color color;
    String label;

    switch (status) {
      case 'CheckIn':
        color = Colors.green;
        label = '簽到';
        break;
      case 'CheckOut':
        color = Colors.blue;
        label = '簽退';
        break;
      default:
        color = Colors.grey;
        label = status;
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontSize: 12.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildLeaveStatusChip(String status) {
    Color color;
    switch (status.toLowerCase()) {
      case 'approved':
        color = Colors.green;
        break;
      case 'rejected':
        color = Colors.red;
        break;
      default:
        color = Colors.orange;
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Text(
        status,
        style: TextStyle(
          color: color,
          fontSize: 12.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
