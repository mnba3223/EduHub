import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/student/homework.dart';
import 'package:edutec_hub/data/repositories/homework_repository.dart';
import 'package:edutec_hub/presentation/screens/student/homework/student_homwork_submit_screen.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/state_management/cubit/homework/homework_cubit.dart';
import 'package:edutec_hub/state_management/cubit/homework/homework_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// lib/presentation/screens/student/student_homework_detail_screen.dart
class StudentHomeworkDetailScreen extends StatelessWidget {
  final String homeworkId;

  const StudentHomeworkDetailScreen({
    required this.homeworkId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeworkCubit(
        homeworkRepository: context.read<HomeworkRepository>(),
      )..loadHomeworkDetail(homeworkId),
      child: Scaffold(
        appBar: null,
        body: Column(
          children: [
            _buildTopBar(context),
            BlocBuilder<HomeworkCubit, HomeworkState>(
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
                      // 課程信息
                      Text(
                        homework.courseName,
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      // 作業標題
                      Text(
                        homework.title,
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.grey[800],
                        ),
                      ),
                      SizedBox(height: 16.h),
                      // 截止日期
                      Row(
                        children: [
                          Icon(Icons.access_time, size: 20.sp),
                          SizedBox(width: 8.w),
                          Text(
                            'due_date'.tr(args: [
                              DateFormat('yyyy-MM-dd HH:mm')
                                  .format(homework.dueDate)
                            ]),
                          ),
                        ],
                      ),
                      Text(DateFormat('yyyy-MM-dd HH:mm')
                          .format(homework.dueDate)),
                      SizedBox(height: 16.h),
                      // 作業內容
                      Text(
                        'description'.tr(),
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(homework.description),
                      SizedBox(height: 24.h),
                      // 根據狀態顯示不同內容
                      if (homework.status == HomeworkStatus.pending)
                        _buildPendingSection(context, homework)
                      else if (homework.status == HomeworkStatus.submitted)
                        _buildSubmittedSection(homework)
                      else if (homework.status == HomeworkStatus.graded)
                        _buildGradedSection(homework),
                    ],
                  ),
                );
              },
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.white70),
                onPressed: () => Navigator.pop(context),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'homework_detail'.tr(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 40.w), // 為了平衡左邊的返回按鈕
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPendingSection(BuildContext context, Homework homework) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeworkSubmitScreen(
                homeworkId: homework.id,
                onSubmit: (content, attachments) async {
                  try {
                    await context.read<HomeworkCubit>().submitHomework(
                          homeworkId: homework.id,
                          content: content,
                          files: attachments,
                        );
                  } catch (e) {
                    print('Submit Error in Detail: $e'); // 添加日誌
                    rethrow; // 確保錯誤能傳遞到 HomeworkSubmitScreen
                  }
                },
              ),
            ),
          );

          if (result == true) {
            // 重新加載作業詳情
            context.read<HomeworkCubit>().loadHomeworkDetail(homework.id);
          }
        },
        child: Text('submit_homework'.tr()),
      ),
    );
  }

  Widget _buildSubmittedSection(Homework homework) {
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
        Text(homework.submitContent ?? ''),
        if (homework.attachmentUrls?.isNotEmpty ?? false) ...[
          SizedBox(height: 16.h),
          Text(
            'attachments'.tr(),
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.h),
          ...homework.attachmentUrls!.map((url) => ListTile(
                leading: Icon(Icons.attach_file),
                title: Text(url.split('/').last),
                onTap: () {
                  // TODO: 處理附件下載
                },
              )),
        ],
      ],
    );
  }

  Widget _buildGradedSection(Homework homework) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSubmittedSection(homework),
        SizedBox(height: 16.h),
        Container(
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(8.r),
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
              if (homework.teacherComment != null) ...[
                SizedBox(height: 8.h),
                Text(
                  'teacher_comment'.tr(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4.h),
                Text(homework.teacherComment!),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
