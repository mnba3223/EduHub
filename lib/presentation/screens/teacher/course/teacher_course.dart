// lib/presentation/screens/teacher/course/teacher_course_screen.dart
import 'package:edutec_hub/data/models/common/course.dart';
import 'package:edutec_hub/state_management/cubit/course/course_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/calendar.dart';

class TeacherCourseScreen extends StatefulWidget {
  const TeacherCourseScreen({Key? key}) : super(key: key);

  @override
  State<TeacherCourseScreen> createState() => _TeacherCourseScreenState();
}

class _TeacherCourseScreenState extends State<TeacherCourseScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      context.read<TeacherCourseCubit>()
        ..resetFilters()
        ..loadCourses();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          await context.read<TeacherCourseCubit>().loadCourses();
        },
        child: Column(
          children: [
            _buildTopBar(context),
            BlocBuilder<TeacherCourseCubit, CourseState>(
              buildWhen: (previous, current) =>
                  previous.selectedDate != current.selectedDate ||
                  previous.courses != current.courses,
              builder: (context, state) {
                return ReusableCalendar(
                  selectedDay: state.selectedDate,
                  onDaySelected: (selectedDay, focusedDay) {
                    context
                        .read<TeacherCourseCubit>()
                        .updateSelectedDate(selectedDay, focusedDay);
                  },
                  markerBuilder:
                      context.read<TeacherCourseCubit>().markerBuilder,
                );
              },
            ),
            _buildFilters(),
            Expanded(
              child: BlocBuilder<TeacherCourseCubit, CourseState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state.error != null) {
                    return Center(child: Text(state.error!));
                  }
                  return _buildCourseList(state);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopBar(BuildContext context) {
    return FixedHeightSmoothTopBarV2(
      height: 130.h,
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'teacher_course_schedule'.tr(),
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

  Widget _buildFilters() {
    return BlocBuilder<TeacherCourseCubit, CourseState>(
      buildWhen: (previous, current) =>
          previous.subjects != current.subjects ||
          previous.selectedSubject != current.selectedSubject,
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.all(16.w),
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
              labelText: 'select_subject'.tr(),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            value: state.selectedSubject,
            items: [
              DropdownMenuItem(
                value: null,
                child: Text('all_subjects'.tr()),
              ),
              ...state.subjects.map((subject) {
                return DropdownMenuItem(
                  value: subject,
                  child: Text(subject),
                );
              }),
            ],
            onChanged: (value) {
              context.read<TeacherCourseCubit>().updateSubjectFilter(value);
            },
          ),
        );
      },
    );
  }

  Widget _buildCourseList(CourseState state) {
    if (state.filteredCourses.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.school_outlined, size: 48.sp, color: Colors.grey[400]),
            SizedBox(height: 16.h),
            Text(
              'no_courses'.tr(),
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemCount: state.filteredCourses.length,
      itemBuilder: (context, index) {
        final course = state.filteredCourses[index];
        return _buildCourseCard(course);
      },
    );
  }

  Widget _buildCourseCard(Course course) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(
              color:
                  Color(int.parse(course.courseColor.replaceAll('#', '0xFF'))),
              width: 4.w,
            ),
          ),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.all(16.w),
          title: Text(
            course.courseName,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8.h),
              Text(
                course.subjectName,
                style: TextStyle(fontSize: 14.sp),
              ),
              if (course.courseDescription != null) ...[
                SizedBox(height: 4.h),
                Text(
                  course.courseDescription!,
                  style: TextStyle(fontSize: 12.sp),
                ),
              ],
            ],
          ),
          trailing: Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(4.r),
            ),
            child: Text(
              course.courseType,
              style: TextStyle(fontSize: 12.sp),
            ),
          ),
        ),
      ),
    );
  }
}
