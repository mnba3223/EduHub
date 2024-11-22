import 'package:edutec_hub/data/models/teacher/teacher_homework.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/state_management/cubit/homework/teacher/teacher_homework_cubit.dart';
import 'package:edutec_hub/state_management/cubit/homework/teacher/teacher_homework_state.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
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

class TeacherHomeworkDetailView extends StatelessWidget {
  const TeacherHomeworkDetailView({Key? key}) : super(key: key);

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
              SizedBox(height: 16.h),
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
                    child: InkWell(
                      onTap: () {
                        // TODO: Handle file download
                      },
                      child: Text(
                        'download_attachment'.tr(),
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
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

  Widget _buildSubmissionList(List<TeacherHomeworkSubmission> submissions) {
    return ListView.builder(
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
              backgroundColor: submission.status.statusColor.withOpacity(0.1),
              child: Icon(
                submission.status.statusIcon,
                color: submission.status.statusColor,
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
                if (submission.submissionTime != null) ...[
                  SizedBox(height: 4.h),
                  Text(
                    '${'submitted_on'.tr()}: ${DateFormat('yyyy/MM/dd HH:mm').format(submission.submissionTime!)}',
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
            trailing: submission.hasAttachment
                ? IconButton(
                    icon: Icon(Icons.attach_file, size: 20.sp),
                    onPressed: () {
                      // TODO: 處理附件預覽
                    },
                  )
                : null,
            onTap: () {
              // TODO: 導航到提交詳情
            },
          ),
        );
      },
    );
  }
}
