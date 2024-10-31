import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/booking/booking_state.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/state_management/blocs/booking_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTopBar(context),
          Expanded(
            child: BlocBuilder<BookingBloc, BookingState>(
              builder: (context, state) {
                return ListView(
                  padding: EdgeInsets.all(16.w),
                  children: [
                    _buildStatusSection(
                        'pending_review'.tr(), _buildPendingList()),
                    SizedBox(height: 24.h),
                    _buildStatusSection(
                        'booking_history'.tr(), _buildHistoryList()),
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
                icon: Icon(Icons.arrow_back_ios, color: Colors.white70),
                onPressed: () => Navigator.pop(context),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'booking_history'.tr(),
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 40.w), // 為了平衡左邊的返回按鈕
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusSection(String title, List<Widget> items) {
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
        ...items,
      ],
    );
  }

  List<Widget> _buildPendingList() {
    return [
      _buildBookingCard(
        date: '2024-02-20',
        time: '14:00',
        classroom: 'classroom_1'.tr(),
        status: 'pending_review'.tr(),
        statusColor: Colors.orange,
      ),
      // 更多待審核項目...
    ];
  }

  List<Widget> _buildHistoryList() {
    return [
      _buildBookingCard(
        date: '2024-02-19',
        time: '15:00',
        classroom: 'classroom_2'.tr(),
        status: 'approved'.tr(),
        statusColor: Colors.green,
      ),
      _buildBookingCard(
        date: '2024-02-18',
        time: '16:00',
        classroom: 'classroom_1'.tr(),
        status: 'rejected'.tr(),
        statusColor: Colors.red,
      ),
      // 更多歷史記錄...
    ];
  }

  Widget _buildBookingCard({
    required String date,
    required String time,
    required String classroom,
    required String status,
    required Color statusColor,
  }) {
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
                '$date $time',
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
                  status,
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
                classroom,
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
}
