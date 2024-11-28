// lib/presentation/screens/teacher/lesson/teacher_lesson_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/common/lesson.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/calendar.dart';
import 'package:edutec_hub/state_management/cubit/lesson/lesson_cubit.dart';

class TeacherLessonScreen extends StatefulWidget {
  const TeacherLessonScreen({Key? key}) : super(key: key);

  @override
  State<TeacherLessonScreen> createState() => _TeacherLessonScreenState();
}

class _TeacherLessonScreenState extends State<TeacherLessonScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      context.read<LessonCubit>()
        ..resetFilters()
        ..loadLessons();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          await context.read<LessonCubit>().loadLessons();
        },
        child: Column(
          children: [
            _buildTopBar(context),
            BlocBuilder<LessonCubit, LessonState>(
              buildWhen: (previous, current) =>
                  previous.selectedDate != current.selectedDate ||
                  previous.lessons != current.lessons,
              builder: (context, state) {
                return ReusableCalendar(
                  selectedDay: state.selectedDate,
                  onDaySelected: (selectedDay, focusedDay) {
                    context
                        .read<LessonCubit>()
                        .updateSelectedDate(selectedDay, focusedDay);
                  },
                  markerBuilder: (context, date, events) => context
                      .read<LessonCubit>()
                      .markerBuilder(context, date, events),
                );
              },
            ),
            _buildFilters(),
            Expanded(
              child: BlocBuilder<LessonCubit, LessonState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state.error != null) {
                    return Center(child: Text(state.error!));
                  }
                  return _buildLessonList(state);
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'teacher_lesson_schedule'.tr(),
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

  Widget _buildFilters() {
    return BlocBuilder<LessonCubit, LessonState>(
      buildWhen: (previous, current) =>
          previous.subjects != current.subjects ||
          previous.classrooms != current.classrooms ||
          previous.selectedSubject != current.selectedSubject ||
          previous.selectedClassroom != current.selectedClassroom,
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.all(16.w),
          child: Row(
            children: [
              Expanded(
                child: DropdownButtonFormField<String>(
                  isExpanded: true, // 讓下拉選單內容可以自動調整大小
                  decoration: InputDecoration(
                    labelText: 'select_subject'.tr(),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  value: state.selectedSubject,
                  items: [
                    DropdownMenuItem<String>(
                      value: null,
                      child: Text(
                        'all_subjects'.tr(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    ...state.subjects.map((subject) {
                      return DropdownMenuItem<String>(
                        value: subject,
                        child: Text(
                          subject,
                          overflow: TextOverflow.ellipsis,
                        ),
                      );
                    }),
                  ],
                  onChanged: (value) {
                    context.read<LessonCubit>().updateSubjectFilter(value);
                  },
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  decoration: InputDecoration(
                    labelText: 'select_classroom'.tr(),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  value: state.selectedClassroom,
                  items: [
                    DropdownMenuItem<String>(
                      value: null,
                      child: Text(
                        'all_classrooms'.tr(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    ...state.classrooms.map((classroom) {
                      return DropdownMenuItem<String>(
                        value: classroom,
                        child: Text(
                          classroom,
                          overflow: TextOverflow.ellipsis,
                        ),
                      );
                    }),
                  ],
                  onChanged: (value) {
                    context.read<LessonCubit>().updateClassroomFilter(value);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildLessonList(LessonState state) {
    if (state.filteredLessons.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.event_busy, size: 48.sp, color: Colors.grey[400]),
            SizedBox(height: 16.h),
            Text(
              'no_lessons'.tr(),
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemCount: state.filteredLessons.length,
      itemBuilder: (context, index) {
        final lesson = state.filteredLessons[index];
        return _buildLessonCard(lesson);
      },
    );
  }

  Widget _buildLessonCard(Lesson lesson) {
    final timeRange =
        '${lesson.startTime.substring(0, 5)} - ${lesson.endTime.substring(0, 5)}';

    return Card(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  lesson.lessonTitle,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: Text(
                    timeRange,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Text(
              lesson.courseName ?? '',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 4.h),
            Row(
              children: [
                Icon(Icons.location_on_outlined,
                    size: 16.sp, color: Colors.grey[600]),
                SizedBox(width: 4.w),
                Text(
                  lesson.classroomName ?? '',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
            if (lesson.lessonDescription != null) ...[
              SizedBox(height: 8.h),
              Text(
                lesson.lessonDescription!,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey[600],
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
