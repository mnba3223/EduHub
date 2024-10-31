import 'package:carousel_slider/carousel_slider.dart';
import 'package:edutec_hub/data/models/card_list.dart';
import 'package:edutec_hub/data/models/student/homework.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/presentation/ui_widget/card/card.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/slider.dart';
import 'package:edutec_hub/state_management/cubit/homework/homework_cubit.dart';
import 'package:edutec_hub/state_management/cubit/homework/homework_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:go_router/go_router.dart';

class StudentHomeScreen extends StatefulWidget {
  @override
  State<StudentHomeScreen> createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends State<StudentHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTopBar(),
          Expanded(
            child: ListView(
              children: [
                CustomCarouselWithIndicator(),
                _buildTodaysCourse(),
                _buildMyCourse(),
                _buildContactBook(),
                _buildHomework(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopBar() {
    return FixedHeightSmoothTopBarV2(
      height: 160.h,
      // ellipticalRadius: 40.r,
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(20.w, 40.h, 20.w, 60.h),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.amber,
                    radius: 25,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '陳小明',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                            ),
                          ),
                          Text(
                            'student@gmail.com',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(Icons.settings, color: Colors.white),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTodaysCourse() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h, bottom: 10.h),
          child: Text(
            'todays_course'.tr(),
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
        ),
        SelfAnimatedCourseListView(
          courseList: CourseListData.todaysCourseList,
        ),
      ],
    );
  }

  Widget _buildMyCourse() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h, bottom: 10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'my_courses'.tr(),
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () => context.push('/student-courses'),
                child: Text(
                  'more'.tr(),
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
        SelfAnimatedCourseListView(
          courseList: CourseListData.myCourseList,
        ),
      ],
    );
  }

  Widget _buildContactBook() {
    return Container(
      margin: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('contact_book'.tr(),
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
              GestureDetector(
                onTap: () => context.push('/message-board'),
                child: Text(
                  'more'.tr(),
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Container(
            padding: EdgeInsets.all(15.w),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('date'.tr()),
                Text('course'.tr()),
                Text('${('more'.tr())}→'),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            padding: EdgeInsets.all(15.w),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('date'.tr()),
                Text('course'.tr()),
                Text('${('more'.tr())}→'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHomework() {
    return Container(
      margin: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'homework'.tr(),
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () => context.push('/student-homework'),
                child: Text(
                  'more'.tr(),
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          BlocBuilder<HomeworkCubit, HomeworkState>(
            builder: (context, state) {
              if (state.isLoading) {
                return Center(child: CircularProgressIndicator());
              }

              // 獲取未來7天內的待完成作業
              final pendingHomeworks = state.homeworks
                  .where((homework) =>
                      homework.status == HomeworkStatus.pending &&
                      homework.dueDate.difference(DateTime.now()).inDays <= 7)
                  .toList();

              if (pendingHomeworks.isEmpty) {
                return Container(
                  padding: EdgeInsets.all(15.w),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.check_circle, color: Colors.green),
                      SizedBox(width: 8.w),
                      Text('no_pending_homework'.tr()),
                    ],
                  ),
                );
              }

              // 只顯示最多3個作業
              final displayHomeworks = pendingHomeworks.take(3).toList();

              return Column(
                children: displayHomeworks.map((homework) {
                  final daysLeft =
                      homework.dueDate.difference(DateTime.now()).inDays;

                  return Container(
                    margin: EdgeInsets.only(bottom: 8.h),
                    padding: EdgeInsets.all(12.w),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                        color: daysLeft <= 1
                            ? Colors.red[100]!
                            : Colors.transparent,
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        context.pushNamed(
                          'student-homework-detail',
                          pathParameters: {'id': homework.id},
                        );
                      },
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8.w),
                            decoration: BoxDecoration(
                              color: _getDueDateColor(daysLeft),
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: Text(
                              '$daysLeft天',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(width: 12.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  homework.courseName,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                Text(
                                  homework.title,
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          Icon(Icons.chevron_right, color: Colors.grey),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              );
            },
          ),
        ],
      ),
    );
  }

  Color _getDueDateColor(int daysLeft) {
    if (daysLeft <= 1) {
      return Colors.red;
    } else if (daysLeft <= 3) {
      return Colors.orange;
    } else {
      return Colors.blue;
    }
  }

  Widget _buildInfoCard(String title, Color color) {
    return Container(
      margin: EdgeInsets.all(20.w),
      padding: EdgeInsets.all(15.w),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
          SizedBox(height: 10.h),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Icon(Icons.egg_alt, color: Colors.orange),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Breakfast',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Bread, Peanut butter, Apple'),
                    Text('525 kcal',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
