import 'package:edutec_hub/data/models/exam/eaxm_state.dart';
import 'package:edutec_hub/data/repositories/exam_repository.dart';
import 'package:edutec_hub/presentation/screens/student/exam/exam.card.dart';
import 'package:edutec_hub/presentation/screens/student/exam/exam_top_bar.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/calendar.dart';
import 'package:edutec_hub/state_management/cubit/exam/exam_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:table_calendar/table_calendar.dart';

class ExamScreen extends StatelessWidget {
  const ExamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 移除 BlocProvider，因為已經在路由中提供
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
            child: BlocConsumer<ExamCubit, ExamState>(
              listener: (context, state) {
                if (state is ExamStateError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(state.message)),
                  );
                }
              },
              builder: (context, state) {
                if (state is ExamStateLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state is ExamStateLoaded) {
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

  Widget _buildContent(BuildContext context, ExamStateLoaded state) {
    return Column(
      children: [
        _buildCalendar(context, state),
        _buildExamList(state),
      ],
    );
  }

  Widget _buildCalendar(BuildContext context, ExamStateLoaded state) {
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
          context.read<ExamCubit>().selectDate(selectedDay);
        },
        markerBuilder: (context, date, events) {
          final hasExam = state.exams
              .where((exam) => isSameDay(exam.examDate, date))
              .isNotEmpty;

          if (hasExam) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              width: 8,
              height: 8,
              margin: const EdgeInsets.only(top: 20),
            );
          }
          return null;
        },
      ),
    );
  }

  Widget _buildExamList(ExamStateLoaded state) {
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
        return ExamCard(exam: exams[index]);
      },
    );
  }
}
