import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExamTopBar extends StatelessWidget {
  const ExamTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FixedHeightSmoothTopBarV2(
      height: 130.h,
      // decoration: BoxDecoration(
      //   color: Colors.blue,
      //   boxShadow: [
      //     BoxShadow(
      //       color: Colors.black.withOpacity(0.1),
      //       blurRadius: 4,
      //       offset: const Offset(0, 2),
      //     ),
      //   ],
      // ),
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
                onPressed: () => Navigator.of(context).pop(),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'exam_records'.tr(),
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
