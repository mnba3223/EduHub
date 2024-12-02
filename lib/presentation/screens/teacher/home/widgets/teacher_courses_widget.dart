import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/common/lesson.dart';
import 'package:edutec_hub/data/models/teacher/teacher_home_state.dart';
import 'package:edutec_hub/state_management/cubit/home/teacher_home_cubit.dart';
import 'package:edutec_hub/state_management/cubit/lesson/lesson_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class TeacherCoursesWidget extends StatelessWidget {
  const TeacherCoursesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TeacherHomeCubit, TeacherHomeState>(
      builder: (context, state) {
        final todayLessons = state.todayCourses.where((lesson) {
          final lessonDate = lesson.lessonDate;
          final now = DateTime.now();
          return lessonDate.year == now.year &&
              lessonDate.month == now.month &&
              lessonDate.day == now.day;
        }).toList();

        return Container(
          margin: EdgeInsets.all(20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'teacher_today_courses'.tr(),
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () => context.push('/teacher-schedule'),
                    child: Text(
                      'teacher_view_more'.tr(),
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              if (todayLessons.isEmpty)
                Center(child: Text('no_lessons'.tr()))
              else
                ...todayLessons.map((lesson) => _buildCourseCard(
                      time: '${lesson.startTime}-${lesson.endTime}',
                      subject: lesson.lessonTitle ?? '',
                      className: lesson.classroomName ?? '',
                    )),
            ],
          ),
        );
      },
    );
  }

  Widget _buildCourseCard({
    required String time,
    required String subject,
    required String className,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      padding: EdgeInsets.all(15.w),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Text(
              time,
              style: const TextStyle(
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
                  subject,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  className,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
