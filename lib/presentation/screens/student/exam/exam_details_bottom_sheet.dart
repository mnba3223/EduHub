import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/exam/student_exam.dart';
import 'package:edutec_hub/presentation/ui_widget/button/custom_button.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/download_ui.dart';
import 'package:edutec_hub/state_management/cubit/download/downloadFileCubit.dart';
import 'package:edutec_hub/state_management/cubit/download/download_state.dart';
import 'package:edutec_hub/state_management/cubit/exam/student_exam_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExamDetailsBottomSheet extends StatefulWidget {
  final StudentExam exam;
  final BuildContext context;
  const ExamDetailsBottomSheet({
    super.key,
    required this.exam,
    required this.context,
  });

  @override
  State<ExamDetailsBottomSheet> createState() => _ExamDetailsBottomSheetState();
}

class _ExamDetailsBottomSheetState extends State<ExamDetailsBottomSheet> {
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
                    'exam_name'.tr(),
                    widget.exam.examName,
                    icon: Icons.assignment,
                  ),
                  _buildSection(
                    'exam_subject'.tr(),
                    widget.exam.lessonTitle,
                    icon: Icons.book,
                  ),
                  _buildSection(
                    'exam_time'.tr(),
                    DateFormat('yyyy/MM/dd HH:mm').format(widget.exam.examDate),
                    icon: Icons.access_time,
                  ),
                  _buildSection(
                    'teacher'.tr(),
                    widget.exam.teacherName,
                    icon: Icons.person,
                  ),
                  _buildSection(
                    'exam_description'.tr(),
                    widget.exam.examDescription,
                    icon: Icons.description,
                  ),
                  if (widget.exam.isScore) _buildScoreSection(),
                  if (widget.exam.uploadFile != null)
                    _buildAttachmentSection(context, widget.context),
                ],
              ),
            ),
          ),
          // if (exam.uploadFile?.isNotEmpty == true && !exam.isScore)
          // Padding(
          //   padding: EdgeInsets.all(16.w),
          //   child: ExamFileDownloadButton(fileUrl: widget.exam.uploadFile!),
          // ),
        ],
      ),
    );
  }

  // Widget _buildAttachmentSection(BuildContext context) {
  Widget _buildAttachmentSection(
      BuildContext context, BuildContext downloadContext) {
    final fileName = widget.exam.uploadFile!.split('/').last;

    return BlocConsumer<DownloadCubit, DownloadState>(
      listenWhen: (previous, current) {
        log('Previous state: ${previous.successMessage}, ${previous.error}');
        log('Current state: ${current.successMessage}, ${current.error}');
        return current.successMessage != previous.successMessage ||
            current.error != previous.error;
      },
      listener: (downloadContext, state) {
        log('Listener triggered with state: ${state.successMessage}, ${state.error}');
        if (state.successMessage != null || state.error != null) {
          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(
          //     content: Text(state.successMessage ?? state.error ?? ''),
          //     backgroundColor:
          //         state.successMessage != null ? Colors.green : Colors.red,
          //   ),
          // );
          //show success message below the attachment section
        }
      },
      builder: (downloadContext, state) {
        return Padding(
          padding: EdgeInsets.only(bottom: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.attach_file, size: 20.sp, color: Colors.blue),
                  SizedBox(width: 8.w),
                  Text(
                    'attachment'.tr(),
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              GestureDetector(
                onTap: () {
                  context.read<DownloadCubit>().downloadMultipleFiles(
                    urls: [widget.exam.uploadFile!],
                    fileNames: [fileName],
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: Colors.grey[300]!),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.insert_drive_file,
                          color: Colors.blue, size: 24.sp),
                      SizedBox(width: 8.w),
                      Expanded(
                        child: Text(
                          fileName,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.blue,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Icon(Icons.download, color: Colors.blue, size: 24.sp),
                    ],
                  ),
                ),
              ),
              if (state.successMessage != null || state.error != null)
                Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: Text(
                    state.successMessage ?? state.error ?? '',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: state.successMessage != null
                          ? Colors.green
                          : Colors.red,
                    ),
                  ),
                ),
            ],
          ),
        );
      },
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
    final isUpcoming = widget.exam.examDate.isAfter(now);

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
          if (widget.exam.isScore)
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
          'score'.tr(args: [""]),
          widget.exam.score?.toString() ?? 'not_graded'.tr(),
          icon: Icons.grade,
        ),
        if (widget.exam.scoreDesc != null)
          _buildSection(
            'teacher_comment'.tr(),
            widget.exam.scoreDesc!,
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
    if (widget.exam.isScore) {
      return Colors.green;
    }
    final now = DateTime.now();
    return widget.exam.examDate.isAfter(now) ? Colors.blue : Colors.orange;
  }

  IconData _getStatusIcon() {
    if (widget.exam.isScore) {
      return Icons.check_circle;
    }
    final now = DateTime.now();
    return widget.exam.examDate.isAfter(now) ? Icons.upcoming : Icons.pending;
  }

  String _getStatusText(bool isUpcoming) {
    if (widget.exam.isScore) {
      return 'exam_graded'.tr();
    }
    return isUpcoming ? 'upcoming'.tr() : 'exam_pending'.tr();
  }
}
