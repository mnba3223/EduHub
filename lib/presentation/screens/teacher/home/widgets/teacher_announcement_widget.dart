import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class TeacherAnnouncementWidget extends StatelessWidget {
  const TeacherAnnouncementWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'teacher_announcements'.tr(),
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
              // GestureDetector(
              //   onTap: () => context.push('/teacher-announcements'),
              //   child: Text(
              //     'teacher_view_more'.tr(),
              //     style: TextStyle(color: Colors.blue),
              //   ),
              // ),
            ],
          ),
          SizedBox(height: 10.h),
          _buildAnnouncementCard(
            date: '2024/03/19',
            title: 'teacher_meeting_notice'.tr(),
            description: '週五下午3點在會議室舉行本週教師會議...',
          ),
        ],
      ),
    );
  }

  Widget _buildAnnouncementCard({
    required String date,
    required String title,
    required String description,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      padding: EdgeInsets.all(15.w),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: TextStyle(color: Colors.grey[600], fontSize: 14.sp),
          ),
          SizedBox(height: 5.h),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            description,
            style: TextStyle(fontSize: 14.sp),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
