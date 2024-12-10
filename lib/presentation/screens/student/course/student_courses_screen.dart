import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/course/course.dart';
import 'package:edutec_hub/presentation/screens/student/course/widgets/course_grid_screen.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/state_management/cubit/course/course_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StudentCoursesScreen extends StatefulWidget {
  const StudentCoursesScreen({super.key});

  @override
  State<StudentCoursesScreen> createState() => _StudentCoursesScreenState();
}

class _StudentCoursesScreenState extends State<StudentCoursesScreen> {
  TextEditingController searchController = TextEditingController();
  String searchQuery = '';

  @override
  void initState() {
    super.initState();
    context.read<CourseCubit>().loadAllData();
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
            child: _buildCourseList(),
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
                'all_courses'.tr(),
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

  Widget _buildCourseList() {
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
                  onPressed: () => context.read<CourseCubit>().loadAllData(),
                  child: Text('retry'.tr()),
                ),
              ],
            ),
          );
        }

        // 按科目分组的课程
        final coursesBySubject = _groupCoursesBySubject(state.allCourses);

        return RefreshIndicator(
          onRefresh: () async {
            await context.read<CourseCubit>().loadAllData();
          },
          child: ListView(
            children: [
              _buildSearchBar(),
              SizedBox(height: 20.h),
              ...coursesBySubject.entries.map((entry) {
                final filteredCourses = entry.value.where((course) {
                  return course.courseName
                      .toLowerCase()
                      .contains(searchQuery.toLowerCase());
                }).toList();

                if (filteredCourses.isEmpty) {
                  return const SizedBox.shrink();
                }

                // return CourseGridView(
                //   courses: filteredCourses,
                //   subjectTitle: entry.key,
                // );
                return SubjectCourseList(
                  courses: filteredCourses,
                  subjectTitle: entry.key,
                );
              }).toList(),
              SizedBox(height: 20.h), // Bottom padding
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
          hintText: 'search_courses'.tr(),
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

  Map<String, List<Course>> _groupCoursesBySubject(List<Course> courses) {
    final map = <String, List<Course>>{};
    for (final course in courses) {
      final subject = course.subjectName ?? 'all_subjects'.tr();
      if (!map.containsKey(subject)) {
        map[subject] = [];
      }
      map[subject]!.add(course);
    }
    return map;
  }
}
