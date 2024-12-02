import 'package:edutec_hub/data/models/teacher/teacher_exam.dart';
import 'package:edutec_hub/state_management/cubit/exam/teacher_exam_cubit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
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
      context.read<TeacherExamCubit>()..loadExams();
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
            BlocBuilder<TeacherExamCubit, TeacherExamState>(
              buildWhen: (previous, current) =>
                  previous.selectedDate != current.selectedDate ||
                  previous.exams != current.exams,
              builder: (context, state) {
                return ReusableCalendar(
                  selectedDay: state.selectedDate,
                  onDaySelected: (selectedDay, focusedDay) {
                    context
                        .read<TeacherExamCubit>()
                        .updateSelectedDate(selectedDay, focusedDay);
                  },
                  markerBuilder: (context, date, events) => context
                      .read<TeacherExamCubit>()
                      .markerBuilder(context, date, events),
                );
              },
            ),
            _buildFilters(),
            Expanded(
              child: BlocBuilder<TeacherExamCubit, TeacherExamState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state.error != null) {
                    return Center(child: Text(state.error!));
                  }
                  return _buildExamList(state);
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/teacher-exam/create'),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildTopBar(BuildContext context) {
    return FixedHeightSmoothTopBarV2(
      height: 160.h,
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

  Widget _buildFilters() {
    return BlocBuilder<TeacherExamCubit, TeacherExamState>(
      buildWhen: (previous, current) =>
          previous.lessons != current.lessons ||
          previous.selectedLesson != current.selectedLesson,
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.all(16.w),
          child: DropdownButtonFormField<String>(
            isExpanded: true,
            decoration: InputDecoration(
              labelText: 'select_course'.tr(),
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
                child: Text(
                  'all_courses'.tr(),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              ...state.lessons.map((lesson) => DropdownMenuItem(
                    value: lesson,
                    child: Text(
                      lesson,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
            ],
            onChanged: (value) {
              context.read<TeacherExamCubit>().updateLessonFilter(value);
            },
          ),
        );
      },
    );
  }

  Widget _buildExamList(TeacherExamState state) {
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
      itemBuilder: (context, index) {
        final exam = state.filteredExams[index];
        return Card(
          margin: EdgeInsets.only(bottom: 16.h),
          child: InkWell(
            onTap: () =>
                context.push('/teacher-exam/${exam.examId}/detail'), // 添加點擊事件
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
                      _buildPopupMenu(context, exam),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    exam.lessonTitle,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    children: [
                      Icon(Icons.calendar_today,
                          size: 16.sp, color: Colors.grey[600]),
                      SizedBox(width: 4.w),
                      Text(
                        _formatDate(exam.examDate),
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
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(width: 16.w),
                      Text(
                        '${"graded".tr()}: ${exam.ratingCount}',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildPopupMenu(BuildContext context, TeacherExam exam) {
    return PopupMenuButton<String>(
      icon: Icon(Icons.more_vert, size: 24.sp),
      onSelected: (value) async {
        switch (value) {
          case 'detail':
            context.push('/teacher-exam/${exam.examId}/detail');
            break;
          case 'edit':
            await _handleEdit(context, exam);
            break;
          case 'delete':
            await _handleDelete(context, exam);
            break;
        }
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 'detail',
          child: Row(
            children: [
              Icon(Icons.visibility, size: 20.sp),
              SizedBox(width: 8.w),
              Text('view_detail'.tr()),
            ],
          ),
        ),
        PopupMenuItem(
          value: 'edit',
          child: Row(
            children: [
              Icon(Icons.edit, size: 20.sp),
              SizedBox(width: 8.w),
              Text('edit'.tr()),
            ],
          ),
        ),
        PopupMenuItem(
          value: 'delete',
          child: Row(
            children: [
              Icon(Icons.delete, size: 20.sp, color: Colors.red),
              SizedBox(width: 8.w),
              Text(
                'delete'.tr(),
                style: const TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> _handleEdit(BuildContext context, TeacherExam exam) async {
    // TODO: 實現編輯功能
    context.push('/teacher-exam/${exam.examId}/edit', extra: exam);
  }

  Future<void> _handleDelete(BuildContext context, TeacherExam exam) async {
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

  String _formatDate(DateTime date) {
    return DateFormat('yyyy/MM/dd').format(date);
  }
}
