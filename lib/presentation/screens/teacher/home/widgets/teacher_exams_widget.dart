// widgets/teacher_exams_widget.dart
import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/teacher/teacher_exam.dart';
import 'package:edutec_hub/data/models/teacher/teacher_home_state.dart';
import 'package:edutec_hub/state_management/cubit/exam/teacher_exam_cubit.dart';
import 'package:edutec_hub/state_management/cubit/home/teacher_home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class TeacherExamsWidget extends StatelessWidget {
  const TeacherExamsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TeacherHomeCubit, TeacherHomeState>(
      builder: (context, state) {
        // final now = DateTime.now();
        // final weekStart = now.subtract(Duration(days: now.weekday - 1));
        // final weekEnd = weekStart.add(const Duration(days: 7));

        // final weeklyExams = state.weeklyExams.where((exam) {
        //   return exam.examDate.isAfter(weekStart) &&
        //       exam.examDate.isBefore(weekEnd);
        // }).toList();

        return Container(
          margin: EdgeInsets.all(20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'teacher_weekly_exams'.tr(),
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () => context.push('/teacher-exam'),
                    child: Text(
                      'teacher_view_more'.tr(),
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              if (state.weeklyExams.isEmpty)
                Center(child: Text('no_exam_records'.tr()))
              else
                ...state.weeklyExams.map((exam) => _buildExamCard(
                      date: DateFormat('MM/dd').format(exam.examDate),
                      subject: exam.examName,
                      className: exam.className,
                      context: context,
                      exam: exam,
                    )),
            ],
          ),
        );
      },
    );
  }

  Widget _buildExamCard({
    required BuildContext context,
    required String date,
    required String subject,
    required String className,
    required TeacherExam exam,
  }) {
    return GestureDetector(
      onTap: () => context.push('/teacher-exam/${exam.examId}/detail'),
      child: Container(
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
                color: Colors.orange,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Text(
                date,
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
            Icon(Icons.chevron_right, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
