import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/exam/student_exam.dart';
import 'package:edutec_hub/presentation/ui_widget/button/custom_button.dart';
import 'package:edutec_hub/state_management/cubit/exam/student_exam_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExamDetailsBottomSheet extends StatelessWidget {
  final StudentExam exam;

  const ExamDetailsBottomSheet({
    Key? key,
    required this.exam,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: Column(
        children: [
          _buildHeader(context),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildExamStatus(),
                  SizedBox(height: 16.h),
                  _buildSection(
                    'exam_subject'.tr(),
                    exam.lessonTitle,
                    icon: Icons.book,
                  ),
                  _buildSection(
                    'exam_time'.tr(),
                    DateFormat('yyyy/MM/dd HH:mm').format(exam.examDate),
                    icon: Icons.access_time,
                  ),
                  _buildSection(
                    'teacher'.tr(),
                    exam.teacherName,
                    icon: Icons.person,
                  ),
                  _buildSection(
                    'exam_description'.tr(),
                    exam.examDescription,
                    icon: Icons.description,
                  ),
                  if (exam.isScore) _buildScoreSection(),
                ],
              ),
            ),
          ),
          if (exam.uploadFile != null && !exam.isScore)
            Padding(
              padding: EdgeInsets.all(16.w),
              child: CustomButton(
                onPressed: () {},
                text: 'download_attachment'.tr(),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[200]!,
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'exam_detail'.tr(),
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.pop(context),
            tooltip: 'button_close'.tr(),
          ),
        ],
      ),
    );
  }

  Widget _buildExamStatus() {
    final now = DateTime.now();
    final isUpcoming = exam.examDate.isAfter(now);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: _getStatusColor().withOpacity(0.1),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            _getStatusIcon(),
            color: _getStatusColor(),
            size: 20.sp,
          ),
          SizedBox(width: 8.w),
          Text(
            _getStatusText(isUpcoming),
            style: TextStyle(
              color: _getStatusColor(),
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildScoreSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSection(
          'score'.tr(),
          exam.score?.toString() ?? 'not_graded'.tr(),
          icon: Icons.grade,
        ),
        if (exam.scoreDesc != null)
          _buildSection(
            'teacher_comment'.tr(),
            exam.scoreDesc!,
            icon: Icons.comment,
          ),
      ],
    );
  }

  Widget _buildSection(String title, String content, {IconData? icon}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              if (icon != null) ...[
                Icon(icon, size: 20.sp, color: Colors.blue),
                SizedBox(width: 8.w),
              ],
              Text(
                title,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            content,
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.grey[600],
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Color _getStatusColor() {
    if (exam.isScore) {
      return Colors.green;
    }
    final now = DateTime.now();
    return exam.examDate.isAfter(now) ? Colors.blue : Colors.orange;
  }

  IconData _getStatusIcon() {
    if (exam.isScore) {
      return Icons.check_circle;
    }
    final now = DateTime.now();
    return exam.examDate.isAfter(now) ? Icons.upcoming : Icons.pending;
  }

  String _getStatusText(bool isUpcoming) {
    if (exam.isScore) {
      return 'completed'.tr();
    }
    return isUpcoming ? 'upcoming'.tr() : 'pending'.tr();
  }
}
