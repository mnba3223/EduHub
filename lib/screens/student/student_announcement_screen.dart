import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:edutec_hub/ui/bar/top_bar.dart';
import 'package:easy_localization/easy_localization.dart';

class StudentAnnouncementsScreen extends StatelessWidget {
  const StudentAnnouncementsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTopBar(context),
          Expanded(
            child: _buildAnnouncementsList(),
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
          // padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // IconButton(
              //   icon: Icon(Icons.arrow_back, color: Colors.white),
              //   onPressed: () => Navigator.of(context).pop(),
              // ),
              // SizedBox(width: 20.w),
              Text(
                'announcements_screen_title'.tr(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnnouncementsList() {
    return ListView(
      padding: EdgeInsets.all(20.w),
      children: [
        // _buildSearchBar(),
        SizedBox(height: 20.h),
        _buildAnnouncementItem('公告 1', '这是第第一個公告的内容...'),
        _buildAnnouncementItem('公告 2', '这是第第二個公告的内容...'),
        // Add more announcement items here
      ],
    );
  }

  Widget _buildSearchBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search'.tr(),
          border: InputBorder.none,
          icon: Icon(Icons.search),
        ),
      ),
    );
  }

  Widget _buildAnnouncementItem(String title, String content) {
    return Card(
      margin: EdgeInsets.only(bottom: 15.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
      elevation: 3,
      child: Padding(
        padding: EdgeInsets.all(15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              content,
              style: TextStyle(fontSize: 14.sp),
            ),
          ],
        ),
      ),
    );
  }
}
