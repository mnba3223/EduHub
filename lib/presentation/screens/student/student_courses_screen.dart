import 'package:edutec_hub/presentation/ui_widget/custom_widget/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/card_list.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/slider.dart';

class StudentCoursesScreen extends StatefulWidget {
  const StudentCoursesScreen({super.key});

  @override
  State<StudentCoursesScreen> createState() => _StudentCoursesScreenState();
}

class _StudentCoursesScreenState extends State<StudentCoursesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTopBar(context),
          Expanded(
            child: _buildCourseList(),
          ),
        ],
      ),
    );
  }

  Widget _buildTopBar(BuildContext context) {
    return FixedHeightSmoothTopBarV2(
      height: 100.h,
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
              SizedBox(width: 20.w),
              Text(
                'all_courses'.tr(),
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

  Widget _buildCourseList() {
    return ListView(
      padding: EdgeInsets.all(20.w),
      children: [
        _buildSearchBar(),
        SizedBox(height: 20.h),
        ...coursesByCategory.entries
            .map((entry) => _buildCourseSection(entry.key, entry.value))
            .toList(),
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
          hintText: 'Search',
          border: InputBorder.none,
          icon: Icon(Icons.search),
        ),
      ),
    );
  }

  Widget _buildCourseSection(String title, List<CourseListData> courses) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Text(
            title,
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 216.h,
          child: SelfAnimatedCourseListView(
            courseList: courses,
          ),
        ),
        SizedBox(height: 20.h),
      ],
    );
  }

  Widget _buildAllCoursesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'All Courses',
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10.h),
        SelfAnimatedCourseListView(
          courseList: allCourses,
        ),
      ],
    );
  }
}
