import 'dart:developer';

import 'package:edutec_hub/data/models/teacher/teacher_homework.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/download_ui.dart';
import 'package:edutec_hub/state_management/cubit/homework/teacher/teacher_homework_cubit.dart';
import 'package:edutec_hub/state_management/cubit/homework/teacher/teacher_homework_state.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class TeacherHomeworkDetailScreen extends StatefulWidget {
  final int homeworkId;

  const TeacherHomeworkDetailScreen({
    Key? key,
    required this.homeworkId,
  }) : super(key: key);

  @override
  State<TeacherHomeworkDetailScreen> createState() =>
      _TeacherHomeworkDetailScreenState();
}

class _TeacherHomeworkDetailScreenState
    extends State<TeacherHomeworkDetailScreen> {
  @override
  void initState() {
    super.initState();
    // 在 initState 中加載數據
    context.read<TeacherHomeworkCubit>().loadHomeworkDetail(widget.homeworkId);
  }

  @override
  Widget build(BuildContext context) {
    return const TeacherHomeworkDetailView();
  }
}

class TeacherHomeworkDetailView extends StatefulWidget {
  const TeacherHomeworkDetailView({Key? key}) : super(key: key);

  @override
  State<TeacherHomeworkDetailView> createState() =>
      _TeacherHomeworkDetailViewState();
}

class _TeacherHomeworkDetailViewState extends State<TeacherHomeworkDetailView> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        context.read<TeacherHomeworkCubit>().clearHomeworkDetail();
      },
      child: Scaffold(
        body: Column(
          children: [
            _buildTopBar(context),
            Expanded(
              child: BlocBuilder<TeacherHomeworkCubit, TeacherHomeworkState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state.error != null) {
                    return Center(child: Text(state.error!));
                  }
                  if (state.selectedHomework == null) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('no_data'.tr()),
                          SizedBox(height: 16.h),
                          ElevatedButton(
                            onPressed: () {
                              final homeworkId = int.parse(
                                  GoRouterState.of(context)
                                      .pathParameters['id']!);
                              context
                                  .read<TeacherHomeworkCubit>()
                                  .loadHomeworkDetail(homeworkId);
                            },
                            child: Text('retry'.tr()),
                          ),
                        ],
                      ),
                    );
                  }
                  return _buildContent(context, state);
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  // 置中標題
                  Center(
                    child: Text(
                      'homework_detail'.tr(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // 左側返回按鈕
                  Positioned(
                    left: 0,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios,
                          color: Colors.white, size: 24.sp),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, TeacherHomeworkState state) {
    final homework = state.selectedHomework!;
    final stats = TeacherHomeworkStats(
      total: homework.totalStudents,
      submitted: homework.submittedCount,
      graded: homework.ratingCount,
    );

    return RefreshIndicator(
      onRefresh: () async {
        context
            .read<TeacherHomeworkCubit>()
            .loadHomeworkDetail(homework.homeworkId);
      },
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSummaryCard(homework),
              SizedBox(height: 16.h),
              _buildSubmissionOverview(stats),
              SizedBox(height: 24.h),
              Text(
                'student_submissions'.tr(),
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // SizedBox(height: 16.h),
              _buildSubmissionList(state.submissions),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSummaryCard(TeacherHomeworkListItem homework) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              homework.homeworkDescription, // 改用 description 作為標題
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.h),
            if (homework.classroomName != null) ...[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Text(
                  '${homework.classroomName} - ${homework.lessonTitle}',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ],
            SizedBox(height: 16.h),
            Text(
              'assignment_details'.tr(),
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              homework.lessonDescription,
              style: TextStyle(
                fontSize: 15.sp,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                Icon(Icons.calendar_today, size: 20.sp, color: Colors.blue),
                SizedBox(width: 8.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'due_date_time'.tr(),
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.grey[600],
                        ),
                      ),
                      Text(
                        '${DateFormat('yyyy/MM/dd HH:mm').format(homework.startTime)} - ${DateFormat('yyyy/MM/dd HH:mm').format(homework.endTime)}',
                        style: TextStyle(fontSize: 14.sp),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (homework.uploadFile != null) ...[
              SizedBox(height: 16.h),
              Row(
                children: [
                  Icon(Icons.attachment, size: 20.sp, color: Colors.blue),
                  SizedBox(width: 8.w),
                  Expanded(
                    child:
                        BlocBuilder<TeacherHomeworkCubit, TeacherHomeworkState>(
                      builder: (context, state) {
                        final isDownloading = state.isDownloading;
                        final progress =
                            state.downloadProgress[homework.uploadFile];

                        if (isDownloading && progress != null) {
                          return LinearProgressIndicator(value: progress);
                        }

                        return TextButton.icon(
                          onPressed: () {
                            // context.read<TeacherHomeworkCubit>().downloadSubmissionFiles(
                            //       homework.uploadFile!,
                            //       'homework_instruction.${homework.uploadFile!.split('.').last}',
                            //     );
                          },
                          icon: const Icon(Icons.download),
                          label: Text('download_attachment'.tr()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildSubmissionOverview(TeacherHomeworkStats stats) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue[700]!, Colors.blue[500]!],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'submission_overview'.tr(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildStatItem(
                'total_students'.tr(),
                stats.total.toString(),
                Icons.people_outline,
              ),
              _buildStatItem(
                'submitted'.tr(),
                '${stats.submitted}/${stats.total}',
                Icons.assignment_turned_in_outlined,
              ),
              _buildStatItem(
                'graded'.tr(),
                '${stats.graded}/${stats.total}',
                Icons.grade_outlined,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(String label, String value, IconData icon) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 24.sp),
        SizedBox(height: 8.h),
        Text(
          value,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          label,
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 12.sp,
          ),
        ),
      ],
    );
  }

  // Widget _buildSubmissionList(List<TeacherHomeworkSubmission> submissions) {
  Widget _buildSubmissionList(List<TeacherHomeworkSubmission> submissions) {
    return Column(
      children: [
        // // 批量下载按钮
        // if (submissions.any((s) => s.uploadFileUrls?.isNotEmpty ?? false)) ...[
        //   ElevatedButton.icon(
        //     onPressed: () {
        //       context.read<TeacherHomeworkCubit>().downloadAllSubmissions();
        //     },
        //     icon: const Icon(Icons.download),
        //     label: Text('download_all'.tr()),
        //   ),
        //   SizedBox(height: 16.h),
        // ],

        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: submissions.length,
          itemBuilder: (context, index) {
            final submission = submissions[index];

            return Card(
              margin: EdgeInsets.only(bottom: 12.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 8.h,
                ),
                leading: CircleAvatar(
                  backgroundColor: _getStatusColor(submission).withOpacity(0.1),
                  child: Icon(
                    _getStatusIcon(submission),
                    color: _getStatusColor(submission),
                  ),
                ),
                title: Text(
                  submission.studentName,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      submission.status.toDisplayString(),
                      style: TextStyle(
                        color: _getStatusColor(submission),
                        fontSize: 12.sp,
                      ),
                    ),
                    if (submission.submissionTime != null) ...[
                      SizedBox(height: 4.h),
                      Text(
                        '${'submitted_time'.tr()}: ${DateFormat('yyyy/MM/dd HH:mm').format(submission.submissionTime!)}',
                        style: TextStyle(fontSize: 12.sp),
                      ),
                    ],
                    if (submission.grade != null) ...[
                      SizedBox(height: 4.h),
                      Text(
                        '${'student_score'.tr()}: ${submission.grade}',
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ],
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (submission.uploadFileUrls?.isNotEmpty ?? false)
                      DownloadButton(
                        urls: submission.uploadFileUrls!,
                        fileNames: submission.uploadFileUrls!.map((url) {
                          final fileName = url.split('/').last;
                          return '${submission.studentName}_$fileName';
                        }).toList(),
                        customPath: 'submission_${submission.submissionId}',
                      ),
                    // if (submission.uploadFileUrls?.isNotEmpty ?? false)
                    //   BlocBuilder<TeacherHomeworkCubit, TeacherHomeworkState>(
                    //     builder: (context, state) {
                    //       final isDownloading = state.isDownloading;
                    //       final progress = state.downloadProgress[
                    //           '${submission.studentName}_file'];

                    //       if (isDownloading && progress != null) {
                    //         return SizedBox(
                    //           width: 24.w,
                    //           height: 24.w,
                    //           child: CircularProgressIndicator(
                    //             value: progress,
                    //             strokeWidth: 2,
                    //           ),
                    //         );
                    //       }

                    //       return IconButton(
                    //         icon: const Icon(Icons.download),
                    //         onPressed: () {
                    //           log('Upload URLs: ${submission.uploadFileUrls}');
                    //           context
                    //               .read<TeacherHomeworkCubit>()
                    //               .downloadSubmissionFiles(submission);
                    //         },
                    //       );
                    //     },
                    //   ),
                    // 显示评分按钮/已评分图标
                    if (submission.status == SubmissionStatus.submitted)
                      IconButton(
                        icon: submission.grade != null
                            ? const Icon(Icons.check_circle,
                                color: Colors.green)
                            : const Icon(Icons.grade, color: Colors.orange),
                        onPressed: () => _showGradeDialog(context, submission),
                      ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Color _getStatusColor(TeacherHomeworkSubmission submission) {
    if (submission.status == SubmissionStatus.submitted) {
      return submission.grade != null ? Colors.green : Colors.blue;
    }
    return Colors.grey; // pending status
  }

  IconData _getStatusIcon(TeacherHomeworkSubmission submission) {
    if (submission.status == SubmissionStatus.submitted) {
      return submission.grade != null
          ? Icons.check_circle
          : Icons.assignment_turned_in;
    }
    return Icons.assignment_late; // pending status
  }

  void _showGradeDialog(
      BuildContext context, TeacherHomeworkSubmission submission) {
    final gradeController = TextEditingController(
      text: submission.grade?.toString() ?? '',
    );
    final commentController = TextEditingController(
      text: submission.comment ?? '',
    );

    showDialog(
      context: context,
      barrierDismissible: false, // 防止點擊外部關閉對話框
      builder: (dialogContext) => AlertDialog(
        title: Text('grade_homework'.tr()),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: gradeController,
              decoration: InputDecoration(
                labelText: 'student_score'.tr(),
                hintText: 'enter_score'.tr(),
              ),
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
              ],
            ),
            SizedBox(height: 16.h),
            TextField(
              controller: commentController,
              decoration: InputDecoration(
                labelText: 'comment'.tr(),
                hintText: 'enter_comment'.tr(),
              ),
              maxLines: 3,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text('cancel'.tr()),
          ),
          ElevatedButton(
            onPressed: () async {
              try {
                final grade = int.tryParse(gradeController.text);
                if (grade == null || grade <= 0 || grade > 100) {
                  throw Exception('Invalid grade value');
                }

                // 顯示加載指示器
                if (dialogContext.mounted) {
                  showDialog(
                    context: dialogContext,
                    barrierDismissible: false,
                    builder: (_) =>
                        const Center(child: CircularProgressIndicator()),
                  );
                }

                await context.read<TeacherHomeworkCubit>().updateGrade(
                      submissionId: submission.submissionId,
                      rating: grade,
                      comment: commentController.text.trim(),
                    );

                // 關閉加載指示器和評分對話框
                if (dialogContext.mounted) {
                  Navigator.pop(dialogContext); // 關閉加載指示器
                  Navigator.pop(dialogContext); // 關閉評分對話框
                }

                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('grading_success'.tr()),
                      backgroundColor: Colors.green,
                    ),
                  );
                }
              } catch (e) {
                // 確保加載指示器被關閉
                if (dialogContext.mounted && Navigator.canPop(dialogContext)) {
                  Navigator.pop(dialogContext);
                }

                // 顯示詳細錯誤訊息
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content:
                          Text('grading_failed'.tr() + ': ${e.toString()}'),
                      backgroundColor: Colors.red,
                      duration: const Duration(seconds: 5),
                      action: SnackBarAction(
                        label: 'Dismiss',
                        textColor: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  );
                }
              }
            },
            child: Text('confirm'.tr()),
          ),
        ],
      ),
    );
  }
}
