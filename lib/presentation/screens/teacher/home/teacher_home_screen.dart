// 基本的老師首頁
import 'package:edutec_hub/config/user_session.dart';
import 'package:edutec_hub/data/models/teacher/teacher_home_state.dart';
import 'package:edutec_hub/presentation/screens/teacher/home/widgets/teacher_announcement_widget.dart';
import 'package:edutec_hub/presentation/screens/teacher/home/widgets/teacher_courses_widget.dart';
import 'package:edutec_hub/presentation/screens/teacher/home/widgets/teacher_exams_widget.dart';
import 'package:edutec_hub/presentation/screens/teacher/home/widgets/teacher_homework_widget.dart';
import 'package:edutec_hub/presentation/screens/teacher/home/widgets/teacher_setting_dialog.dart';
import 'package:edutec_hub/state_management/cubit/exam/teacher_exam_cubit.dart';
import 'package:edutec_hub/state_management/cubit/home/teacher_home_cubit.dart';
import 'package:edutec_hub/state_management/cubit/homework/teacher/teacher_homework_cubit.dart';
import 'package:edutec_hub/state_management/cubit/lesson/lesson_cubit.dart';
import 'package:edutec_hub/state_management/cubit/signInCubit.dart';
import 'package:flutter/material.dart';

import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class TeacherHomeScreen extends StatelessWidget {
  const TeacherHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TeacherHomeCubit(
        examCubit: context.read<TeacherExamCubit>(),
        homeworkCubit: context.read<TeacherHomeworkCubit>(),
        lessonCubit: context.read<LessonCubit>(),
      )..loadAllData(),
      child: const TeacherHomeContent(),
    );
  }
}

class TeacherHomeContent extends StatefulWidget {
  const TeacherHomeContent({Key? key}) : super(key: key);

  @override
  State<TeacherHomeContent> createState() => _TeacherHomeContentState();
}

class _TeacherHomeContentState extends State<TeacherHomeContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTopBar(),
          Expanded(
            child: BlocBuilder<TeacherHomeCubit, TeacherHomeState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (state.error != null) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(state.error!),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () =>
                              context.read<TeacherHomeCubit>().loadAllData(),
                          child: const Text('Retry'),
                        ),
                      ],
                    ),
                  );
                }

                return ListView(
                  children: const [
                    TeacherAnnouncementWidget(),
                    TeacherCoursesWidget(),
                    TeacherExamsWidget(),
                    TeacherHomeworkWidget(),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopBar() {
    final String username = UserSession.instance.username ?? 'Unknown Teacher';

    return FixedHeightSmoothTopBarV2(
      height: 140.h,
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(20.w, 40.h, 20.w, 0.w),
          child: Column(
            children: [
              Row(
                children: [
                  // 顯示使用者頭像縮寫
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 25,
                    child: Text(
                      username.isNotEmpty ? username[0].toUpperCase() : 'T',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            username,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                            ),
                          ),
                          // // 可以顯示 Role ID 或其他信息
                          // if (UserSession.instance.roleId != null)
                          //   Text(
                          //     'Teacher ID: ${UserSession.instance.roleId}',
                          //     style: TextStyle(
                          //       color: Colors.white70,
                          //       fontSize: 14.sp,
                          //     ),
                          //   ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.settings, color: Colors.white),
                    onPressed: _showSettingsDialog,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showSettingsDialog() {
    // 取得上層的 SignInCubit
    final signInCubit = context.read<SignInCubit>();

    showDialog(
      context: context,
      builder: (dialogContext) => BlocProvider.value(
        value: signInCubit, // 將已存在的 SignInCubit 傳遞給對話框
        child: const TeacherSettingsDialog(),
      ),
    );
  }
}
