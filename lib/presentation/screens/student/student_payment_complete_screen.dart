import 'package:edutec_hub/presentation/ui/bar/top_bar.dart';
import 'package:edutec_hub/state_management/blocs/booking_bloc.dart';
import 'package:edutec_hub/state_management/cubit/signInCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'package:easy_localization/easy_localization.dart';

class PaymentCompleteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingBloc, BookingState>(
      builder: (context, state) {
        return Scaffold(
          body: Column(
            children: [
              _buildTopBar(context),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: SafeArea(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.w,
                        vertical: 16.h,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 16.h),
                          _buildSuccessIcon(),
                          SizedBox(height: 32.h),
                          _buildSuccessMessage(),
                          SizedBox(height: 40.h),
                          _buildBookingSummary(context),
                          SizedBox(height: 40.h),
                          _buildReturnButton(context),
                          SizedBox(height: 24.h), // 底部額外間距確保安全
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildTopBar(BuildContext context) {
    return FixedHeightSmoothTopBarV2(
      height: 130.h,
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(20.w, 40.h, 20.w, 20.h),
          child: Center(
            child: Text(
              'payment_complete'.tr(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSuccessIcon() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 120.w,
          height: 120.w,
          decoration: BoxDecoration(
            color: Colors.green.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: 100.w,
          height: 100.w,
          decoration: BoxDecoration(
            color: Colors.green.withOpacity(0.2),
            shape: BoxShape.circle,
          ),
        ),
        Icon(
          Icons.check_circle,
          color: Colors.green,
          size: 84.sp,
        ),
      ],
    );
  }

  Widget _buildSuccessMessage() {
    return Column(
      children: [
        Text(
          'payment_successful'.tr(),
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Text(
            'booking_confirmation_message'.tr(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.grey[600],
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBookingSummary(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: Colors.grey[200]!,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'booking_details'.tr(),
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 16.h),
          _buildSummaryItem(
            'booking_id'.tr(),
            '#${DateTime.now().millisecondsSinceEpoch.toString().substring(0, 8)}',
            Icons.confirmation_number,
          ),
          _buildDivider(),
          _buildSummaryItem(
            'amount_paid'.tr(),
            '\$100.00',
            Icons.attach_money,
          ),
          _buildDivider(),
          _buildSummaryItem(
            'payment_method'.tr(),
            'Credit Card',
            Icons.credit_card,
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryItem(String label, String value, IconData icon) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(
              icon,
              size: 20.sp,
              color: Colors.blue,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: Divider(
        color: Colors.grey[200],
        height: 1,
      ),
    );
  }

  Widget _buildReturnButton(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56.h,
      child: ElevatedButton(
        onPressed: () {
          context.read<BookingBloc>().add(CompletePayment());
          final authState = context.read<SignInCubit>().state;
          if (authState is SignInSuccess) {
            switch (authState.role) {
              case UserRole.student:
                context.go('/student-booking');
                break;
              case UserRole.parent:
                context.go('/parent-booking');
                break;
              default:
                context.go('/');
            }
          } else {
            context.go('/');
          }
        },
        style: ElevatedButton.styleFrom(
          // primary: Theme.of(context).primaryColor,
          backgroundColor: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          elevation: 2,
        ),
        child: Text(
          'return_to_booking'.tr(),
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
