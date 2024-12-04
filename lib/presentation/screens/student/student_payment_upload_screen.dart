import 'package:edutec_hub/data/models/booking/booking_event.dart';
import 'package:edutec_hub/data/models/booking/booking_state.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/presentation/ui_widget/border/dashborder.dart';
import 'package:edutec_hub/state_management/blocs/booking/booking_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:image_picker/image_picker.dart';

class PaymentUploadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTopBar(context),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20.w),
                child: _buildUploadSection(context),
              ),
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
                    'upload_payment_proof'.tr(),
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

  Widget _buildUploadSection(BuildContext context) {
    return BlocBuilder<BookingBloc, BookingState>(
      builder: (context, state) {
        if (state is BookingProgress) {
          final hasProofUploaded = state.bookingInfo.proofImagePath != null;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 32.h),
              Text(
                'payment_upload_instruction'.tr(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 32.h),
              GestureDetector(
                onTap: () async {
                  final ImagePicker picker = ImagePicker();
                  final XFile? image = await picker.pickImage(
                    source: ImageSource.gallery,
                  );

                  if (image != null) {
                    // TODO: 可以加入預覽圖片的功能
                    context.read<BookingBloc>().add(
                          UploadPaymentProof(proofImagePath: image.path),
                        );
                  }
                },
                child: CustomPaint(
                  painter: hasProofUploaded
                      ? null
                      : DashedBorderPainter(
                          color: Colors.grey[300]!,
                          strokeWidth: 1,
                          gap: 5,
                        ),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(32.w),
                    decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.circular(12.r),
                      border: hasProofUploaded
                          ? Border.all(
                              color: Colors.grey[300]!,
                            )
                          : null,
                    ),
                    child: hasProofUploaded
                        ? Column(
                            children: [
                              Icon(
                                Icons.check_circle,
                                size: 64.sp,
                                color: Colors.green,
                              ),
                              SizedBox(height: 16.h),
                              Text(
                                'proof_uploaded'.tr(),
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                'tap_to_change'.tr(),
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 14.sp,
                                ),
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              Icon(
                                Icons.cloud_upload_outlined,
                                size: 64.sp,
                                color: Colors.grey[600],
                              ),
                              SizedBox(height: 16.h),
                              Text(
                                'click_to_upload'.tr(),
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                  ),
                ),
              ),
              SizedBox(height: 40.h),
              Container(
                width: double.infinity,
                height: 56.h,
                child: ElevatedButton(
                  onPressed: hasProofUploaded
                      ? () => context.go('/payment-complete')
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    elevation: 2,
                  ),
                  child: Text(
                    'confirm_payment'.tr(),
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          );
        }

        // 如果沒有找到 BookingProgress 狀態，顯示錯誤狀態
        return Center(
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
                'no_booking_found'.tr(),
                style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.grey[600],
                ),
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
        );
      },
    );
  }
}
