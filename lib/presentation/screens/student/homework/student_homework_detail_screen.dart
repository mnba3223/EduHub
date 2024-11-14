import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/student/homework.dart';

import 'package:edutec_hub/data/repositories/homework_repository.dart';

import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/state_management/cubit/homework/homework_cubit.dart';
import 'package:edutec_hub/state_management/cubit/homework/homework_state.dart';
import 'package:edutec_hub/state_management/cubit/signInCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class StudentHomeworkDetailScreen extends StatelessWidget {
  final int homeworkId;

  const StudentHomeworkDetailScreen({
    required this.homeworkId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeworkCubit(
        repository: context.read<HomeworkRepository>(),
        // studentId: userId,
      )..loadHomeworkDetail(homeworkId),
      child: Scaffold(
        appBar: null,
        body: Column(
          children: [
            _buildTopBar(context),
            Expanded(
              child: BlocBuilder<HomeworkCubit, HomeworkState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (state.error != null) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(state.error!),
                          SizedBox(height: 16.h),
                          ElevatedButton(
                            onPressed: () {
                              context
                                  .read<HomeworkCubit>()
                                  .loadHomeworkDetail(homeworkId);
                            },
                            child: Text('retry'.tr()),
                          ),
                        ],
                      ),
                    );
                  }

                  final homework = state.currentHomework;
                  if (homework == null) return const SizedBox();

                  return SingleChildScrollView(
                    padding: EdgeInsets.all(16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildHeader(homework),
                        SizedBox(height: 16.h),
                        _buildTimeInfo(homework),
                        SizedBox(height: 24.h),
                        _buildDescription(homework),
                        SizedBox(height: 24.h),
                        _buildStatusSection(context, homework),
                      ],
                    ),
                  );
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios,
                    color: Colors.white70, size: 24.sp),
                onPressed: () => Navigator.pop(context),
              ),
              Text(
                'homework_detail'.tr(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 48.w),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(HomeworkSubmission homework) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                homework.lessonTitle,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _buildStatusChip(homework.status),
          ],
        ),
        if (homework.lessonDescription != null) ...[
          SizedBox(height: 4.h),
          Text(
            homework.lessonDescription!,
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.grey[600],
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildTimeInfo(HomeworkSubmission homework) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        children: [
          _buildTimeRow(
            icon: Icons.play_circle_outline,
            label: 'start_time'.tr(),
            time: homework.startTime,
          ),
          SizedBox(height: 8.h),
          _buildTimeRow(
            icon: Icons.timer_outlined,
            label: 'due_time'.tr(),
            time: homework.endTime,
          ),
          if (homework.submitDate != null) ...[
            SizedBox(height: 8.h),
            _buildTimeRow(
              icon: Icons.check_circle_outline,
              label: 'submit_time'.tr(),
              time: homework.submitDate!,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildTimeRow({
    required IconData icon,
    required String label,
    required DateTime time,
  }) {
    return Row(
      children: [
        Icon(icon, size: 20.sp, color: Colors.grey[600]),
        SizedBox(width: 8.w),
        Text(
          '$label:',
          style: TextStyle(color: Colors.grey[600]),
        ),
        SizedBox(width: 8.w),
        Text(DateFormat('yyyy-MM-dd HH:mm').format(time)),
      ],
    );
  }

  Widget _buildDescription(HomeworkSubmission homework) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'description'.tr(),
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          homework.description,
          style: TextStyle(fontSize: 14.sp, height: 1.5),
        ),
      ],
    );
  }

  Widget _buildStatusSection(
      BuildContext context, HomeworkSubmission homework) {
    switch (homework.status) {
      case HomeworkStatus.pending:
        return _buildPendingSection(context, homework);
      case HomeworkStatus.submitted:
        return _buildSubmittedSection(homework);
      case HomeworkStatus.graded:
        return _buildGradedSection(homework);
      case HomeworkStatus.overdue:
        return _buildOverdueSection(homework);
    }
  }

  Widget _buildPendingSection(
      BuildContext context, HomeworkSubmission homework) {
    final now = DateTime.now();
    final isOverdue = now.isAfter(homework.endTime);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isOverdue)
          Container(
            padding: EdgeInsets.all(12.w),
            margin: EdgeInsets.only(bottom: 16.h),
            decoration: BoxDecoration(
              color: Colors.red[50],
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: Colors.red[200]!),
            ),
            child: Row(
              children: [
                Icon(Icons.warning_amber_rounded,
                    color: Colors.red, size: 20.sp),
                SizedBox(width: 8.w),
                Expanded(
                  child: Text(
                    'homework_overdue_warning'.tr(),
                    style: TextStyle(color: Colors.red[700]),
                  ),
                ),
              ],
            ),
          ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => _navigateToSubmit(context, homework),
            child: Text('submit_homework'.tr()),
          ),
        ),
      ],
    );
  }

  Widget _buildSubmittedSection(HomeworkSubmission homework) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'submitted_content'.tr(),
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.h),
        Text(homework.comment ?? ''),
        if (homework.uploadFile != null) ...[
          SizedBox(height: 16.h),
          Text(
            'attachments'.tr(),
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.h),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]!),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: ListTile(
              leading: Icon(Icons.attach_file),
              title: Text(homework.uploadFile!.split('/').last),
              trailing: Icon(Icons.download),
              onTap: () {
                // TODO: 處理附件下載
              },
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildGradedSection(HomeworkSubmission homework) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSubmittedSection(homework),
        SizedBox(height: 16.h),
        Container(
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: Colors.green[50],
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: Colors.green[200]!),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.grade, color: Colors.amber),
                  SizedBox(width: 8.w),
                  Text(
                    'score'.tr(args: [homework.score?.toString() ?? '0']),
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              if (homework.comment != null) ...[
                SizedBox(height: 8.h),
                Text(
                  'teacher_comment'.tr(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4.h),
                Text(homework.comment!),
              ],
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildOverdueSection(HomeworkSubmission homework) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.red[50],
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: Colors.red[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.warning_amber_rounded, color: Colors.red),
              SizedBox(width: 8.w),
              Text(
                'homework_overdue'.tr(),
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            'homework_overdue_message'.tr(),
            style: TextStyle(color: Colors.red[700]),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusChip(HomeworkStatus status) {
    final config = _getStatusConfig(status);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: config.color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Text(
        config.text,
        style: TextStyle(
          color: config.color,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  StatusConfig _getStatusConfig(HomeworkStatus status) {
    switch (status) {
      case HomeworkStatus.pending:
        return StatusConfig(Colors.orange, 'pending'.tr());
      case HomeworkStatus.submitted:
        return StatusConfig(Colors.blue, 'submitted'.tr());
      case HomeworkStatus.graded:
        return StatusConfig(Colors.green, 'graded'.tr());
      case HomeworkStatus.overdue:
        return StatusConfig(Colors.red, 'overdue'.tr());
    }
  }

  void _navigateToSubmit(BuildContext context, HomeworkSubmission homework) {
    context.pushNamed(
      'student-homework-submit',
      pathParameters: {
        'homework_id': homework.homework_id.toString(),
      },
      extra: {
        'submissionId': homework.submissionId,
        'studentId': homework.studentId,
      },
    );
  }
}

class StatusConfig {
  final Color color;
  final String text;

  const StatusConfig(this.color, this.text);
}
