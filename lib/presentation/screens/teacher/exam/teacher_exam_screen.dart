import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/common/lesson.dart';
import 'package:edutec_hub/data/models/teacher/teacher_exam.dart';
import 'package:edutec_hub/state_management/cubit/exam/teacher_exam_cubit.dart';
import 'package:edutec_hub/state_management/cubit/lesson/lesson_cubit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/calendar.dart';

class TeacherExamListScreen extends StatefulWidget {
  const TeacherExamListScreen({Key? key}) : super(key: key);

  @override
  State<TeacherExamListScreen> createState() => _TeacherExamListScreenState();
}

class _TeacherExamListScreenState extends State<TeacherExamListScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      context.read<TeacherExamCubit>().loadExams();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          await context.read<TeacherExamCubit>().loadExams();
        },
        child: Column(
          children: [
            _buildTopBar(context),
            _buildCalendarSection(),
            _buildLessonFilterSection(),
            Expanded(child: _buildExamContent()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showExamCreationFlow(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildTopBar(BuildContext context) {
    return FixedHeightSmoothTopBarV2(
      height: 140.h,
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'teacher_exam_management'.tr(),
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

  Widget _buildCalendarSection() {
    return BlocBuilder<TeacherExamCubit, TeacherExamState>(
      buildWhen: (previous, current) =>
          previous.selectedDate != current.selectedDate ||
          previous.exams != current.exams,
      builder: (context, state) {
        return ReusableCalendar(
          selectedDay: state.selectedDate,
          onDaySelected: (selectedDay, focusedDay) {
            context.read<TeacherExamCubit>().setSelectedDate(selectedDay);
          },
          markerBuilder: (context, date, events) => context
              .read<TeacherExamCubit>()
              .markerBuilder(context, date, events),
        );
      },
    );
  }

  Widget _buildLessonFilterSection() {
    return Builder(
      builder: (context) {
        final examState = context.watch<TeacherExamCubit>().state;
        final lessonState = context.watch<LessonCubit>().state;

        // 根据选中日期筛选课程
        final dateFilteredLessons = lessonState.lessons.where((lesson) {
          return lesson.lessonDate.year == examState.focusedDay.year &&
              lesson.lessonDate.month == examState.focusedDay.month &&
              lesson.lessonDate.day == examState.focusedDay.day;
        }).toList();

        if (dateFilteredLessons.isEmpty) {
          return Padding(
            padding: EdgeInsets.all(16.w),
            child: Text('no_lessons'.tr()),
          );
        }

        return Padding(
          padding: EdgeInsets.all(16.w),
          child: DropdownButtonFormField<int>(
            isExpanded: true,
            decoration: InputDecoration(
              labelText: 'select_lesson'.tr(),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 8.h,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            value: examState.lessons.isNotEmpty
                ? examState.lessons.first.lessonId
                : null,
            items: [
              DropdownMenuItem<int>(
                value: null,
                child: Text('all_lessons'.tr()),
              ),
              ...dateFilteredLessons.map((lesson) => DropdownMenuItem(
                    value: lesson.lessonId,
                    child: Text(
                      '${lesson.className} (${lesson.startTime}-${lesson.endTime})',
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
            ],
            onChanged: (lessonId) {
              if (lessonId != null) {
                final selectedLesson = dateFilteredLessons
                    .firstWhere((l) => l.lessonId == lessonId);
                context
                    .read<TeacherExamCubit>()
                    .updateLessonFilter(selectedLesson);
              } else {
                context.read<TeacherExamCubit>().updateLessonFilter(null);
              }
            },
          ),
        );
      },
    );
  }

  Widget _buildExamList() {
    return BlocBuilder<TeacherExamCubit, TeacherExamState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.error != null) {
          return Center(child: Text(state.error!));
        }

        final filteredExams = state.filteredExams;

        if (filteredExams.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.assignment_outlined,
                    size: 48.sp, color: Colors.grey[400]),
                SizedBox(height: 16.h),
                Text(
                  'no_exams'.tr(),
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
          itemCount: filteredExams.length,
          itemBuilder: (context, index) => _buildExamCard(filteredExams[index]),
        );
      },
    );
  }

  Widget _buildExamContent() {
    return BlocBuilder<TeacherExamCubit, TeacherExamState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.error != null) {
          return Center(child: Text(state.error!));
        }

        if (state.filteredExams.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.assignment_outlined,
                    size: 48.sp, color: Colors.grey[400]),
                SizedBox(height: 16.h),
                Text(
                  'no_exams'.tr(),
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
          itemCount: state.filteredExams.length,
          itemBuilder: (context, index) =>
              _buildExamCard(state.filteredExams[index]),
        );
      },
    );
  }

  Widget _buildExamCard(TeacherExam exam) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.h),
      child: InkWell(
        onTap: () => context.push('/teacher-exam/${exam.examId}/detail'),
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      exam.examName,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  _buildExamActions(exam),
                ],
              ),
              SizedBox(height: 8.h),
              Text(
                exam.className,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 4.h),
              _buildExamInfo(exam),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExamInfo(TeacherExam exam) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.calendar_today, size: 16.sp, color: Colors.grey[600]),
            SizedBox(width: 4.w),
            Text(
              DateFormat('yyyy/MM/dd').format(exam.examDate),
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
        if (exam.examDescription.isNotEmpty) ...[
          SizedBox(height: 8.h),
          Text(
            exam.examDescription,
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.grey[600],
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
        SizedBox(height: 8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '${"students".tr()}: ${exam.totalStudents}',
              style: TextStyle(fontSize: 12.sp, color: Colors.grey[600]),
            ),
            SizedBox(width: 16.w),
            Text(
              '${"graded".tr()}: ${exam.ratingCount}',
              style: TextStyle(fontSize: 12.sp, color: Colors.grey[600]),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildExamActions(TeacherExam exam) {
    return PopupMenuButton<String>(
      icon: Icon(Icons.more_vert, size: 24.sp),
      onSelected: (value) => _handleExamAction(value, exam),
      itemBuilder: (context) => [
        _buildPopupMenuItem('detail', Icons.visibility, 'view_detail'.tr()),
        _buildPopupMenuItem('edit', Icons.edit, 'edit'.tr()),
        _buildPopupMenuItem('delete', Icons.delete, 'delete'.tr(),
            color: Colors.red),
      ],
    );
  }

  PopupMenuItem<String> _buildPopupMenuItem(
    String value,
    IconData icon,
    String text, {
    Color? color,
  }) {
    return PopupMenuItem(
      value: value,
      child: Row(
        children: [
          Icon(icon, size: 20.sp, color: color),
          SizedBox(width: 8.w),
          Text(
            text,
            style: TextStyle(color: color),
          ),
        ],
      ),
    );
  }

  Future<void> _handleExamAction(String action, TeacherExam exam) async {
    switch (action) {
      case 'detail':
        context.push('/teacher-exam/${exam.examId}/detail');
        break;
      case 'edit':
        context.push('/teacher-exam/${exam.examId}/edit', extra: exam);
        break;
      case 'delete':
        await _confirmAndDeleteExam(exam);
        break;
    }
  }

  Future<void> _confirmAndDeleteExam(TeacherExam exam) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('confirm_delete'.tr()),
        content: Text('confirm_delete_exam'.tr(args: [exam.examName])),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text('cancel'.tr()),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(
              'confirm'.tr(),
              style: const TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );

    if (confirmed == true && mounted) {
      try {
        await context.read<TeacherExamCubit>().deleteExam(exam.examId);
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('delete_success'.tr())),
          );
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('delete_failed'.tr(args: [e.toString()]))),
          );
        }
      }
    }
  }

  void _showExamCreationFlow(BuildContext context) {
    context.push('/teacher-exam/create');
  }
}
