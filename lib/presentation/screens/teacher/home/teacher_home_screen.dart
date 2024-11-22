// 基本的老師首頁
import 'package:edutec_hub/presentation/screens/teacher/home/widgets/teacher_announcement_widget.dart';
import 'package:edutec_hub/presentation/screens/teacher/home/widgets/teacher_courses_widget.dart';
import 'package:edutec_hub/presentation/screens/teacher/home/widgets/teacher_exams_widget.dart';
import 'package:edutec_hub/presentation/screens/teacher/home/widgets/teacher_homework_widget.dart';
import 'package:flutter/material.dart';

import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class TeacherHomeScreen extends StatelessWidget {
  const TeacherHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 直接返回 TeacherHomeContent，移除 MultiBlocProvider
    return const TeacherHomeContent();
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
            child: ListView(
              children: const [
                TeacherAnnouncementWidget(),
                TeacherCoursesWidget(),
                TeacherExamsWidget(),
                TeacherHomeworkWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopBar() {
    return FixedHeightSmoothTopBarV2(
      height: 160.h,
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(20.w, 40.h, 20.w, 60.h),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 25,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '王老師',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                            ),
                          ),
                          Text(
                            'teacher@gmail.com',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(Icons.settings, color: Colors.white),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
