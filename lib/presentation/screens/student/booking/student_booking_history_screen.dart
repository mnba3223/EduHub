import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/booking/booking_state.dart';
import 'package:edutec_hub/data/models/booking/classroom_model.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/state_management/blocs/booking/booking_bloc.dart';
import 'package:edutec_hub/state_management/cubit/classroom/student_classroom_booking_history_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClassroomBookingHistoryScreen extends StatefulWidget {
  const ClassroomBookingHistoryScreen({Key? key}) : super(key: key);

  @override
  State<ClassroomBookingHistoryScreen> createState() =>
      _ClassroomBookingHistoryScreenState();
}

class _ClassroomBookingHistoryScreenState
    extends State<ClassroomBookingHistoryScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ClassroomBookingHistoryCubit>().loadBookingHistory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTopBar(context),
          Expanded(
            child: BlocBuilder<ClassroomBookingHistoryCubit,
                ClassroomBookingHistoryState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (state.error != null) {
                  return Center(child: Text(state.error!));
                }

                final pendingBookings = state.bookings
                    .where((booking) => booking.paymentStatus == 0)
                    .toList();
                final historyBookings = state.bookings
                    .where((booking) => booking.paymentStatus != 0)
                    .toList();

                return ListView(
                  padding: EdgeInsets.all(16.w),
                  children: [
                    _buildStatusSection('pending_review'.tr(), pendingBookings),
                    SizedBox(height: 24.h),
                    _buildStatusSection(
                        'booking_history'.tr(), historyBookings),
                  ],
                );
              },
            ),
          ),
        ],
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
                icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'booking_history'.tr(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 40.w),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusSection(
      String title, List<ClassroomBookingHistory> bookings) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 12.h),
        if (bookings.isEmpty)
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            child: Center(
              child: Text(
                'no_bookings'.tr(),
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14.sp,
                ),
              ),
            ),
          )
        else
          ...bookings.map((booking) => _buildBookingCard(booking)).toList(),
      ],
    );
  }

  Widget _buildBookingCard(ClassroomBookingHistory booking) {
    final statusColor = _getStatusColor(booking.paymentStatus);
    final statusText = _getStatusText(booking.paymentStatus);
    final formattedDate = DateFormat('yyyy-MM-dd').format(booking.bookingDate);
    final formattedTime = booking.bookingStartTime.substring(0, 5);

    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$formattedDate $formattedTime',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                  vertical: 4.h,
                ),
                decoration: BoxDecoration(
                  color: statusColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Text(
                  statusText,
                  style: TextStyle(
                    color: statusColor,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Icon(Icons.location_on, size: 16.sp, color: Colors.grey),
              SizedBox(width: 4.w),
              Text(
                booking.classroomName,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _getStatusText(int status) {
    switch (status) {
      case 0:
        return 'pending_review'.tr();
      case 1:
        return 'approved'.tr();
      case 2:
        return 'rejected'.tr();
      default:
        return 'unknown'.tr();
    }
  }

  Color _getStatusColor(int status) {
    switch (status) {
      case 0:
        return Colors.orange;
      case 1:
        return Colors.green;
      case 2:
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}
