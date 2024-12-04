import 'package:edutec_hub/data/models/exam/student_eaxm_state.dart';
import 'package:edutec_hub/data/models/exam/student_exam.dart';
import 'package:edutec_hub/presentation/screens/student/exam/exam_details_bottom_sheet.dart';
import 'package:edutec_hub/presentation/screens/student/exam/exam.card.dart';
import 'package:edutec_hub/presentation/screens/student/exam/exam_top_bar.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/calendar.dart';
import 'package:edutec_hub/state_management/cubit/exam/student_exam_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:table_calendar/table_calendar.dart';

class StudentExamScreen extends StatelessWidget {
  const StudentExamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _ExamView();
  }
}

class _ExamView extends StatelessWidget {
  const _ExamView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ExamTopBar(),
          Expanded(
            child: BlocConsumer<StudentExamCubit, StudentExamState>(
              listener: (context, state) {
                if (state is StudentExamStateError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(state.message)),
                  );
                }
              },
              builder: (context, state) {
                if (state is StudentExamStateLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state is StudentExamStateLoaded) {
                  return SingleChildScrollView(
                    child: _buildContent(context, state),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context, StudentExamStateLoaded state) {
    return Column(
      children: [
        _buildCalendar(context, state),
        _buildExamList(state),
      ],
    );
  }

  Widget _buildCalendar(BuildContext context, StudentExamStateLoaded state) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ReusableCalendar(
        selectedDay: state.selectedDate,
        onDaySelected: (selectedDay, focusedDay) {
          context.read<StudentExamCubit>().selectDate(selectedDay);
        },
        markerBuilder: (context, date, events) {
          final examsOnDay = state.exams
              .where((exam) => isSameDay(exam.examDate, date))
              .toList();

          if (examsOnDay.isNotEmpty) {
            return Positioned(
              right: 4,
              top: 2,
              child: Container(
                padding: EdgeInsets.all(4.w),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Text(
                  examsOnDay.length.toString(),
                  style: TextStyle(
                    color: Colors.blue.shade900,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          }
          return null;
        },
      ),
    );
  }

  Widget _buildExamList(StudentExamStateLoaded state) {
    final exams = state.exams
        .where((exam) => isSameDay(exam.examDate, state.selectedDate))
        .toList();

    if (exams.isEmpty) {
      return Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 32.h),
          child: Text(
            'no_exam_records'.tr(),
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.grey,
            ),
          ),
        ),
      );
    }

    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: exams.length,
      itemBuilder: (context, index) {
        return ExamCard(
          exam: exams[index],
        );
      },
    );
  }
}
