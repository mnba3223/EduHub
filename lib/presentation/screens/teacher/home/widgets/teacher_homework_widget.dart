import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/teacher/teacher_home_state.dart';
import 'package:edutec_hub/state_management/cubit/home/teacher_home_cubit.dart';
import 'package:edutec_hub/state_management/cubit/homework/teacher/teacher_homework_cubit.dart';
import 'package:edutec_hub/state_management/cubit/homework/teacher/teacher_homework_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class TeacherHomeworkWidget extends StatelessWidget {
  const TeacherHomeworkWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TeacherHomeCubit, TeacherHomeState>(
      builder: (context, state) {
        final now = DateTime.now();
        final weekStart = now.subtract(Duration(days: now.weekday - 1));
        final weekEnd = weekStart.add(const Duration(days: 7));

        final weeklyHomework = state.weeklyHomework.where((homework) {
          return homework.endTime.isAfter(weekStart) &&
              homework.endTime.isBefore(weekEnd);
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
                    'teacher_weekly_homework'.tr(),
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () => context.push('/teacher-homework'),
                    child: Text(
                      'teacher_view_more'.tr(),
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              if (weeklyHomework.isEmpty)
                Center(child: Text('no_homework'.tr()))
              else
                ...weeklyHomework.map((homework) => _buildHomeworkCard(
                      dueDate: DateFormat('MM/dd').format(homework.endTime),
                      subject: homework.lessonTitle ?? '',
                      className: homework.classroomName ?? '',
                      pendingCount:
                          homework.totalStudents - homework.submittedCount,
                    )),
            ],
          ),
        );
      },
    );
  }

  Widget _buildHomeworkCard({
    required String dueDate,
    required String subject,
    required String className,
    required int pendingCount,
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
              color: Colors.green,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Text(
              dueDate,
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
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        className,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.grey[600],
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      'teacher_pending_submissions'
                          .tr(namedArgs: {'count': pendingCount.toString()}),
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Icon(Icons.chevron_right, color: Colors.grey),
        ],
      ),
    );
  }
}
