import 'package:edutec_hub/data/models/attendance/attendance_models.dart';
import 'package:edutec_hub/data/repositories/attendance_repository.dart';
import 'package:edutec_hub/presentation/screens/student/attendance/attendance_records.dart';
import 'package:edutec_hub/presentation/screens/student/attendance/attendance_topbar.dart';

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
      body: Column(
        children: [
          const AttendanceTopBar(),
          Expanded(
            child: BlocConsumer<AttendanceCubit, AttendanceState>(
              listener: (context, state) {
                if (state is AttendanceError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(state.message)),
                  );
                }
              },
              builder: (context, state) {
                if (state is AttendanceLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state is AttendanceLoaded) {
                  return SingleChildScrollView(
                    child: _buildContent(context, state),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context, AttendanceLoaded state) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: _buildStatistics(state.statistics),
        ),
        _buildCalendar(context, state),
        _buildDailyRecords(state),
      ],
    );
  }

  Widget _buildStatistics(AttendanceStatistics statistics) {
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
                'total_classes'.tr(),
                statistics.totalClasses.toString(),
                Colors.blue,
              ),
              SizedBox(width: 16.w),
              _buildStatItem(
                'present'.tr(),
                statistics.presentCount.toString(),
                Colors.green,
              ),
              SizedBox(width: 16.w),
              _buildStatItem(
                'absent'.tr(),
                statistics.absentCount.toString(),
                Colors.red,
              ),
              SizedBox(width: 16.w),
              _buildStatItem(
                'leave'.tr(),
                statistics.leaveCount.toString(),
                Colors.orange,
              ),
            ],
          ),
          SizedBox(height: 12.h),
          SizedBox(
            width: 280.w,
            child: Column(
              children: [
                LinearProgressIndicator(
                  value: statistics.attendanceRate,
                  backgroundColor: Colors.grey[200],
                  color: Colors.blue,
                ),
                SizedBox(height: 8.h),
                Text(
                  '${'attendance_rate'.tr()}: ${(statistics.attendanceRate * 100).toStringAsFixed(1)}%',
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

  Widget _buildCalendar(BuildContext context, AttendanceLoaded state) {
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
          final hasEvents = state.records
              .where((record) => isSameDay(record.startTime, date))
              .isNotEmpty;

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

  Widget _buildDailyRecords(AttendanceLoaded state) {
    final records = state.getRecordsForDate(state.selectedDate);

    if (records.isEmpty) {
      return Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 32.h),
          child: Text(
            'no_course_records'.tr(),
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.grey,
            ),
          ),
        ),
      );
    }

    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: records.length,
      itemBuilder: (context, index) {
        final record = records[index];
        return AttendanceRecordCard(record: record);
      },
    );
  }
}
