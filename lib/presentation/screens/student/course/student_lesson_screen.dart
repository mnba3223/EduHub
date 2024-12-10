import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/config/user_session.dart';
import 'package:edutec_hub/data/models/course/course.dart';
import 'package:edutec_hub/presentation/screens/student/home/widgets/student_home_course_screen.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/state_management/cubit/course/course_cubit.dart';
import 'package:edutec_hub/state_management/cubit/signInCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StudentLessonsScreen extends StatefulWidget {
  const StudentLessonsScreen({super.key});

  @override
  State<StudentLessonsScreen> createState() => _StudentLessonsScreenState();
}

class _StudentLessonsScreenState extends State<StudentLessonsScreen> {
  TextEditingController searchController = TextEditingController();
  String searchQuery = '';

  @override
  void initState() {
    super.initState();
    // 这里使用学生的 ID 获取课程列表
    context.read<CourseCubit>().loadStudentLessons();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTopBar(context),
          Expanded(
            child: _buildLessonsContent(),
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
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
              SizedBox(width: 20.w),
              Text(
                'my_lessons'.tr(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLessonsContent() {
    return BlocBuilder<CourseCubit, CourseState>(
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
                    context.read<CourseCubit>().loadStudentLessons();
                  },
                  child: Text('retry'.tr()),
                ),
              ],
            ),
          );
        }

        final lessonsBySubject = _groupLessonsBySubject(state.studentLessons);

        return RefreshIndicator(
          onRefresh: () async {
            context.read<CourseCubit>().loadStudentLessons();
          },
          child: ListView(
            children: [
              _buildSearchBar(),
              SizedBox(height: 20.h),
              ...lessonsBySubject.entries.map((entry) {
                final filteredLessons = entry.value.where((lesson) {
                  return lesson.courseName
                      .toLowerCase()
                      .contains(searchQuery.toLowerCase());
                }).toList();

                if (filteredLessons.isEmpty) {
                  return const SizedBox.shrink();
                }

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 10.h,
                      ),
                      child: Text(
                        entry.key,
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 220.h,
                      child: SelfAnimatedCourseListView(
                        items: filteredLessons,
                        isToday: true, // 使用 StudentLesson 卡片样式
                      ),
                    ),
                    SizedBox(height: 20.h),
                  ],
                );
              }).toList(),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSearchBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: TextField(
        controller: searchController,
        decoration: InputDecoration(
          hintText: 'search_lessons'.tr(),
          border: InputBorder.none,
          icon: const Icon(Icons.search),
        ),
        onChanged: (value) {
          setState(() {
            searchQuery = value.toLowerCase();
          });
        },
      ),
    );
  }

  Map<String, List<StudentLesson>> _groupLessonsBySubject(
      List<StudentLesson> lessons) {
    final map = <String, List<StudentLesson>>{};
    for (final lesson in lessons) {
      if (!map.containsKey(lesson.subjectName)) {
        map[lesson.subjectName] = [];
      }
      map[lesson.subjectName]!.add(lesson);
    }
    return map;
  }
}
