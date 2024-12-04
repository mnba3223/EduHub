import 'package:edutec_hub/data/models/booking/booking_info.dart';
import 'package:edutec_hub/data/models/booking/booking_state.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/state_management/blocs/booking/booking_bloc.dart';
import 'package:edutec_hub/state_management/cubit/payment/payment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'package:easy_localization/easy_localization.dart';

class BookingInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingBloc, BookingState>(
      builder: (context, state) {
        if (state is BookingProgress) {
          final bookingInfo = state.bookingInfo;
          if (bookingInfo.selectedDay == null ||
              bookingInfo.selectedTime == null ||
              bookingInfo.classroom == null) {
            return _buildErrorState(context);
          }

          return Scaffold(
            body: Column(
              children: [
                _buildTopBar(context),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildInfoCard(
                            context,
                            icon: Icons.calendar_today,
                            title: 'selected_date'.tr(),
                            value: DateFormat('yyyy-MM-dd')
                                .format(bookingInfo.selectedDay!),
                          ),
                          SizedBox(height: 16.h),
                          _buildInfoCard(
                            context,
                            icon: Icons.access_time,
                            title: 'selected_time'.tr(),
                            value: bookingInfo.selectedTime!,
                          ),
                          SizedBox(height: 16.h),
                          _buildInfoCard(
                            context,
                            icon: Icons.room,
                            title: 'classroom'.tr(),
                            value: bookingInfo.classroom.toString(),
                          ),
                          SizedBox(height: 24.h),
                          _buildPriceCard(context),
                          SizedBox(height: 32.h),
                          _buildPaymentButton(context, bookingInfo),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return _buildErrorState(context);
        }
      },
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
                    'booking_info'.tr(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
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

  Widget _buildInfoCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Container(
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
      child: Row(
        children: [
          Icon(icon, color: Theme.of(context).primaryColor),
          SizedBox(width: 16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                value,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPriceCard(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).primaryColor.withOpacity(0.8),
          ],
        ),
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'price'.tr(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            '\$100',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentButton(BuildContext context, BookingInfo bookingInfo) {
    return Container(
      width: double.infinity,
      height: 56.h,
      child: ElevatedButton(
        onPressed: () {
          // 使用現有的 BookingInfo 來初始化支付
          // context.read<PaymentCubit>().initiatePayment(
          //       selectedDay: bookingInfo.selectedDay!,
          //       selectedTime: bookingInfo.selectedTime!,
          //       classroom: bookingInfo.classroom!,
          //       amount: 100.0,
          //       courseId: 'COURSE_001',
          //     );
          context.push('/payment-upload');
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          elevation: 2,
        ),
        child: Text(
          'proceed_to_payment'.tr(),
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildErrorState(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTopBar(context),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_outline,
                    size: 64.sp,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'no_booking_selected'.tr(),
                    style: TextStyle(fontSize: 18.sp),
                  ),
                  SizedBox(height: 24.h),
                  ElevatedButton(
                    onPressed: () => context.go('/student-booking'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 32.w,
                        vertical: 16.h,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: Text('return_to_booking'.tr()),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
