import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/exam/student_exam.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(context),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSection(
                    'exam_subject'.tr(),
                    exam.subject,
                    icon: Icons.book,
                  ),
                  _buildSection(
                    'exam_time'.tr(),
                    DateFormat('yyyy/MM/dd HH:mm').format(exam.examDate),
                    icon: Icons.access_time,
                  ),
                  _buildSection(
                    'exam_location'.tr(),
                    exam.location,
                    icon: Icons.location_on,
                  ),
                  _buildSection(
                    'exam_description'.tr(),
                    exam.description,
                    icon: Icons.description,
                  ),
                  _buildSection(
                    'required_items'.tr(),
                    '${'stationery'.tr()}, ${'calculator'.tr()}, ${'student_id'.tr()}',
                    icon: Icons.inventory,
                  ),
                  _buildSection(
                    'exam_notes'.tr(),
                    '1. ${'please_arrive_early'.tr()}\n2. ${'no_phones_allowed'.tr()}\n3. ${'bring_student_id'.tr()}',
                    icon: Icons.warning,
                  ),
                ],
              ),
            ),
          ),
          if (!exam.isCompleted)
            Padding(
              padding: EdgeInsets.all(16.w),
              child: ElevatedButton(
                onPressed: () {
                  context
                      .read<StudentExamCubit>()
                      .updateExamStatus(exam.id, true);
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 48.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                child: Text('confirm_completion'.tr()),
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
            'exam_details'.tr(),
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
}
