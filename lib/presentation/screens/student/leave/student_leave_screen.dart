import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/attendance/leave_models.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/calendar.dart';
import 'package:edutec_hub/state_management/cubit/leave/leave_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LeaveListScreen extends StatefulWidget {
  const LeaveListScreen({Key? key}) : super(key: key);

  @override
  State<LeaveListScreen> createState() => _LeaveListScreenState();
}

class _LeaveListScreenState extends State<LeaveListScreen> {
  @override
  void initState() {
    context.read<LeaveCubit>().loadLeaveRecords();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTopBar(context),
          Expanded(
            child: _LeaveListView(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF304F6B),
        onPressed: () {
          context.push('/student-leave/create');
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildTopBar(BuildContext context) {
    return FixedHeightSmoothTopBarV2(
      height: 130.h,
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(20.w, 40.h, 20.w, 20.h),
          child: Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 24.sp,
                ),
                onPressed: () => context.pop(),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'leave_requests'.tr(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 48.w),
            ],
          ),
        ),
      ),
    );
  }
}

class _LeaveListView extends StatelessWidget {
  const _LeaveListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LeaveCubit, LeaveState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.error != null) {
          return Center(child: Text(state.error!));
        }

        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: _buildCalendar(context, state),
            ),
            if (state.selectedDate != null) ...[
              SliverPadding(
                padding: EdgeInsets.all(16.w),
                sliver: _buildLeaveList(context, state),
              ),
            ],
          ],
        );
      },
    );
  }

  Widget _buildCalendar(BuildContext context, LeaveState state) {
    return Container(
      margin: EdgeInsets.all(16.w),
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
          context.read<LeaveCubit>().selectDate(selectedDay);
        },
        markerBuilder: (context, date, events) {
          final hasRecords = context.read<LeaveCubit>().hasRecordsForDate(date);
          if (hasRecords) {
            return Container(
              decoration: BoxDecoration(
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

  Widget _buildLeaveList(BuildContext context, LeaveState state) {
    final dateRecords =
        context.read<LeaveCubit>().getRecordsForDate(state.selectedDate!);

    if (dateRecords.isEmpty) {
      return SliverToBoxAdapter(
        child: Center(
          child: Text('no_leave_requests'.tr()),
        ),
      );
    }

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => _LeaveRecordCard(record: dateRecords[index]),
        childCount: dateRecords.length,
      ),
    );
  }
}

class _LeaveRecordCard extends StatelessWidget {
  final LeaveRecord record;

  const _LeaveRecordCard({
    Key? key,
    required this.record,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 8.h),
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
                    record.className,
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
              '時間: ${record.startTime} - ${record.endTime}',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              '原因: ${record.leaveReason}',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              '申請時間: ${DateFormat('yyyy/MM/dd HH:mm').format(record.leaveRequestDate)}',
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusChip(String status) {
    Color color;
    String label;

    switch (status) {
      case 'Normal':
        color = Colors.orange;
        label = '審核中';
        break;
      case 'Leave':
        color = Colors.green;
        label = '已核准';
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
}
