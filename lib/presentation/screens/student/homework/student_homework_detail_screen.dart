import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/student/homework.dart';

import 'package:edutec_hub/data/repositories/homework/homework_repository.dart';

import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/download_ui.dart';
import 'package:edutec_hub/state_management/cubit/homework/homework_cubit.dart';
import 'package:edutec_hub/state_management/cubit/homework/homework_state.dart';
import 'package:edutec_hub/state_management/cubit/signInCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class StudentHomeworkDetailScreen extends StatefulWidget {
  final int homeworkId;

  const StudentHomeworkDetailScreen({
    required this.homeworkId,
    Key? key,
  }) : super(key: key);

  @override
  State<StudentHomeworkDetailScreen> createState() =>
      _StudentHomeworkDetailScreenState();
}

class _StudentHomeworkDetailScreenState
    extends State<StudentHomeworkDetailScreen> {
  @override
  void initState() {
    super.initState();
    // 使用已存在的 HomeworkCubit
    context.read<HomeworkCubit>().loadHomeworkDetail(widget.homeworkId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                .loadHomeworkDetail(widget.homeworkId);
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
                homework.className, // 使用 className 替代 lessonTitle
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _buildStatusChip(homework.status),
          ],
        ),
        SizedBox(height: 4.h),
        Text(
          homework.homeworkDescription, // 使用 homeworkDescription 作为副标题
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.grey[600],
          ),
        ),
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
          if (homework.submissionTime != null) ...[
            // 使用 submissionTime 替代 submitDate
            SizedBox(height: 8.h),
            _buildTimeRow(
              icon: Icons.check_circle_outline,
              label: 'submit_time'.tr(),
              time: homework.submissionTime!,
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
          homework.homeworkDescription,
          style: TextStyle(fontSize: 14.sp, height: 1.5),
        ),
        // if (homework.hasAttachment && homework.uploadFile != null) ...[
        //   SizedBox(height: 12.h),
        //   AttachmentDownloadButton(
        //     url: homework.uploadFile!,
        //     fileName: homework.uploadFile!.split('/').last,
        //   ),
        // ],
      ],
    );
  }

  Widget _buildStatusSection(
      BuildContext context, HomeworkSubmission homework) {
    switch (homework.status) {
      case HomeworkStatus.pending:
        return _buildPendingSection(context, homework);
      case HomeworkStatus.submit:
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
        if (homework.comment?.isNotEmpty == true) Text(homework.comment!),
        if (homework.uploadFileUrls?.isNotEmpty == true) ...[
          SizedBox(height: 16.h),
          Text(
            'attachments'.tr(),
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.h),
          _buildFilesList(homework.uploadFileUrls!),
        ],
      ],
    );
  }

  Widget _buildFilesList(List<String> fileUrls) {
    return Column(
      children: fileUrls.map((fileUrl) {
        // 從 URL 中提取檔案名稱
        final fileName = fileUrl.split('/').last;
        final fileType = _getFileType(fileName);

        return Card(
          margin: EdgeInsets.only(bottom: 8.h),
          child: ListTile(
            leading: _getFileIcon(fileType),
            title: Text(fileName),
            trailing: AttachmentDownloadButton(
              url: fileUrl,
              fileName: fileName,
            ),
          ),
        );
      }).toList(),
    );
  }

  Icon _getFileIcon(String fileType) {
    switch (fileType) {
      case 'pdf':
        return Icon(Icons.picture_as_pdf, color: Colors.red);
      case 'image':
        return Icon(Icons.image, color: Colors.blue);
      case 'video':
        return Icon(Icons.video_library, color: Colors.purple);
      default:
        return Icon(Icons.insert_drive_file, color: Colors.grey);
    }
  }

  String _getFileType(String fileName) {
    final extension = fileName.split('.').last.toLowerCase();
    if (['pdf'].contains(extension)) return 'pdf';
    if (['jpg', 'jpeg', 'png', 'gif'].contains(extension)) return 'image';
    if (['mp4', 'mov', 'avi'].contains(extension)) return 'video';
    return 'other';
  }

  Widget _buildGradedSection(HomeworkSubmission homework) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSubmittedSection(homework),
        if (homework.hasRating) ...[
          // 使用 hasRating 检查
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
                      'score'.tr(args: [
                        homework.rating?.toString() ?? '0'
                      ]), // 使用 rating 替代 score
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
      ],
    );
  }

  // Future<void> _showDownloadConfirmation(
  //     BuildContext context, String fileUrl, String fileName) async {
  //   return showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: Text('download_confirmation'.tr()),
  //         content: Text('download_file_confirmation'.tr(args: [fileName])),
  //         actions: [
  //           TextButton(
  //             child: Text('cancel'.tr()),
  //             onPressed: () => Navigator.of(context).pop(),
  //           ),
  //           TextButton(
  //             child: Text('download'.tr()),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //               _downloadFile(fileUrl, context);
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  Future<void> _downloadFile(String urlString, BuildContext context) async {
    try {
      final Uri url = Uri.parse(urlString);
      if (await canLaunchUrl(url)) {
        await launchUrl(
          url,
          mode: LaunchMode.externalApplication, // 使用外部應用程式開啟
        );
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      print('Error downloading file: $e');
      // 也許可以顯示一個錯誤提示給用戶
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('error_downloading_file'.tr()),
          backgroundColor: Colors.red,
        ),
      );
    }
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
    // final config = _getStatusConfig(status);
    final config = context.read<HomeworkCubit>().getStatusConfig(status);
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

  void _navigateToSubmit(BuildContext context, HomeworkSubmission homework) {
    context.pushNamed(
      'student-homework-submit',
      pathParameters: {
        'homework_id': homework.homeworkId.toString(), // 使用 homeworkId
      },
      extra: {
        'submissionId': homework.submissionId,
        'studentId': homework.studentId,
      },
    );
  }
}
