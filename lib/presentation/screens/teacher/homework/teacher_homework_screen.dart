import 'package:edutec_hub/data/models/teacher/teacher_homework.dart';
import 'package:edutec_hub/data/repositories/homework/teacher_homework_repository.dart';
import 'package:edutec_hub/presentation/screens/teacher/homework/widgets/teacher_homework_card.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/presentation/ui_widget/button/custom_button.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/calendar.dart';
import 'package:edutec_hub/state_management/cubit/homework/teacher/teacher_homework_cubit.dart';
import 'package:edutec_hub/state_management/cubit/homework/teacher/teacher_homework_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:go_router/go_router.dart';
import 'package:table_calendar/table_calendar.dart';

class TeacherHomeworkListScreen extends StatefulWidget {
  const TeacherHomeworkListScreen({Key? key}) : super(key: key);

  @override
  State<TeacherHomeworkListScreen> createState() =>
      _TeacherHomeworkListScreenState();
}

class _TeacherHomeworkListScreenState extends State<TeacherHomeworkListScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => false; // 不保持狀態，每次進入都重新加載
  @override
  void initState() {
    super.initState();
    // 初始加載數據
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _loadData();
    });
  }

  void _loadData() {
    final cubit = context.read<TeacherHomeworkCubit>();
    cubit
      ..resetFilters() // 重置過濾器
      ..loadHomeworks(); // 重新加載數據
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: RefreshIndicator(
        onRefresh: () async {
          await context.read<TeacherHomeworkCubit>().loadHomeworks();
        },
        child: Column(
          children: [
            _buildTopBar(context),
            BlocBuilder<TeacherHomeworkCubit, TeacherHomeworkState>(
              buildWhen: (previous, current) =>
                  previous.selectedDate != current.selectedDate ||
                  previous.homeworks != current.homeworks,
              builder: (context, state) {
                return ReusableCalendar(
                  selectedDay: state.selectedDate,
                  onDaySelected: (selectedDay, focusedDay) {
                    context
                        .read<TeacherHomeworkCubit>()
                        .updateSelectedDate(selectedDay, focusedDay);
                  },
                  markerBuilder:
                      context.read<TeacherHomeworkCubit>().markerBuilder,
                );
              },
            ),
            _buildFilters(),
            Expanded(
              child: BlocBuilder<TeacherHomeworkCubit, TeacherHomeworkState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state.error != null) {
                    return Center(child: Text(state.error!));
                  }
                  return _buildHomeworkList(context, state);
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showCreateHomework(context),
        child: Icon(Icons.add, size: 24.sp),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
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
              // IconButton(
              //   icon: Icon(Icons.arrow_back_ios,
              //       color: Colors.white70, size: 24.sp),
              //   onPressed: () => Navigator.pop(context),
              // ),
              Text(
                'teacher_home_title'.tr(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // SizedBox(width: 48.w),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFilters() {
    return BlocBuilder<TeacherHomeworkCubit, TeacherHomeworkState>(
      buildWhen: (previous, current) =>
          previous.classrooms != current.classrooms ||
          previous.lessons != current.lessons ||
          previous.selectedClassroom != current.selectedClassroom ||
          previous.selectedLesson != current.selectedLesson,
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.all(16.w),
          child: Row(
            children: [
              Expanded(
                child: DropdownButtonFormField<String>(
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
                    DropdownMenuItem(
                      value: null,
                      child: Text('all_classrooms'.tr()),
                    ),
                    ...state.classrooms.map((classroom) {
                      return DropdownMenuItem(
                        value: classroom,
                        child: Text(classroom),
                      );
                    }),
                  ],
                  onChanged: (value) {
                    context
                        .read<TeacherHomeworkCubit>()
                        .updateClassroomFilter(value);
                  },
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'select_lesson'.tr(),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  value: state.selectedLesson,
                  items: [
                    DropdownMenuItem(
                      value: null,
                      child: Text('all_lessons'.tr()),
                    ),
                    ...state.lessons.map((lesson) {
                      return DropdownMenuItem(
                        value: lesson,
                        child: Text(lesson),
                      );
                    }),
                  ],
                  onChanged: (value) {
                    context
                        .read<TeacherHomeworkCubit>()
                        .updateLessonFilter(value);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildHomeworkList(BuildContext context, TeacherHomeworkState state) {
    if (state.filteredHomeworks.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.assignment_outlined,
                size: 48.sp, color: Colors.grey[400]),
            SizedBox(height: 16.h),
            Text(
              'no_homework'.tr(),
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
      itemCount: state.filteredHomeworks.length,
      itemBuilder: (context, index) {
        final homework = state.filteredHomeworks[index];
        return TeacherHomeworkCard(
          homework: homework,
          onTap: () => _navigateToHomeworkDetail(context, homework),
        );
      },
    );
  }

  void _navigateToHomeworkDetail(
      BuildContext context, TeacherHomeworkListItem homework) {
    context.read<TeacherHomeworkCubit>().setSelectedHomework(homework);
    context.pushNamed(
      'teacher-homework-detail',
      pathParameters: {'id': homework.homeworkId.toString()},
    );
    // context.push('/teacher-homework/${homework.homeworkId}');
  }

  void _showCreateHomework(BuildContext context) {
    context.pushNamed('create-teacher-homework');
  }
}
