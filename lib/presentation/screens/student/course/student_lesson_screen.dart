import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/config/user_session.dart';
import 'package:edutec_hub/data/models/course/course.dart';
import 'package:edutec_hub/presentation/screens/student/course/widgets/leeson_grid_screen.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';

import 'package:edutec_hub/state_management/cubit/course/course_cubit.dart';
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
  DateTime selectedDate = DateTime.now();

  @override
  void initState() {
    super.initState();
    _loadLessons();
  }

  void _loadLessons() {
    final studentId = UserSession.instance.roleId;
    if (studentId != null) {
      context.read<CourseCubit>().loadStudentLessons();
    }
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
            child: _buildContent(),
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

  Widget _buildContent() {
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
                SizedBox(height: 16.h),
                ElevatedButton(
                  onPressed: _loadLessons,
                  child: Text('retry'.tr()),
                ),
              ],
            ),
          );
        }

        if (state.studentLessons.isEmpty) {
          return Center(
            child: Text(
              'no_lessons'.tr(),
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey,
              ),
            ),
          );
        }

        final lessonsBySubject = _groupLessonsBySubject(state.studentLessons);
        final filteredLessonsBySubject = _filterLessons(lessonsBySubject);

        return RefreshIndicator(
          onRefresh: () async {
            await context.read<CourseCubit>().loadStudentLessons();
          },
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    _buildSearchBar(),
                    if (filteredLessonsBySubject.isEmpty)
                      Padding(
                        padding: EdgeInsets.only(top: 32.h),
                        child: Center(
                          child: Text(
                            'no_search_results'.tr(),
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    if (filteredLessonsBySubject.isEmpty) {
                      return const SizedBox.shrink();
                    }
                    final subject =
                        filteredLessonsBySubject.keys.elementAt(index);
                    final lessons = filteredLessonsBySubject[subject]!;
                    // return LessonGridView(
                    //   lessons: lessons,
                    //   subjectName: subject,
                    // );
                    return ExpandableLessonGridView(
                      lessons: lessons,
                      subjectName: subject,
                    );
                  },
                  childCount: filteredLessonsBySubject.length,
                ),
              ),
              SliverPadding(padding: EdgeInsets.only(bottom: 20.h)),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSearchBar() {
    return Container(
      margin: EdgeInsets.all(20.w),
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
          suffixIcon: searchQuery.isNotEmpty
              ? IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    setState(() {
                      searchController.clear();
                      searchQuery = '';
                    });
                  },
                )
              : null,
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
    // Sort lessons by date within each subject
    map.forEach((_, lessonList) {
      lessonList.sort((a, b) => a.lessonDate.compareTo(b.lessonDate));
    });
    return map;
  }

  Map<String, List<StudentLesson>> _filterLessons(
      Map<String, List<StudentLesson>> lessonsBySubject) {
    if (searchQuery.isEmpty) return lessonsBySubject;

    final filteredMap = <String, List<StudentLesson>>{};
    lessonsBySubject.forEach((subject, lessons) {
      final filteredLessons = lessons.where((lesson) {
        return lesson.courseName.toLowerCase().contains(searchQuery) ||
            lesson.className.toLowerCase().contains(searchQuery) ||
            lesson.classroomName.toLowerCase().contains(searchQuery);
      }).toList();

      if (filteredLessons.isNotEmpty) {
        filteredMap[subject] = filteredLessons;
      }
    });
    return filteredMap;
  }
}
