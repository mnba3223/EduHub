// 考試管理頁面
import 'package:edutec_hub/data/models/teacher/teacher_exam.dart';
import 'package:edutec_hub/state_management/cubit/exam/teacher_exam_cubit.dart';
import 'package:flutter/material.dart';

// class TeacherExamsScreen extends StatelessWidget {
//   const TeacherExamsScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('考試管理'),
//       ),
//       body: const Center(
//         child: Text('考試管理頁面'),
//       ),
//     );
//   }
// }

// screens/teacher/exam/teacher_exam_list_screen.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/calendar.dart';
import 'package:table_calendar/table_calendar.dart';

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
      if (mounted) {
        context.read<TeacherExamCubit>().loadExams();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
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
                  markerBuilder: _buildExamMarker,
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
      height: 130,
      child: SafeArea(
        child: Center(
          child: Text(
            '考試管理',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
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
          padding: const EdgeInsets.all(16.0),
          child: DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              labelText: '選擇課程',
              border: OutlineInputBorder(),
            ),
            value: state.selectedLesson,
            items: [
              const DropdownMenuItem(
                value: null,
                child: Text('全部課程'),
              ),
              ...state.lessons.map((lesson) => DropdownMenuItem(
                    value: lesson,
                    child: Text(lesson),
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
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.assignment_outlined, size: 48, color: Colors.grey),
            SizedBox(height: 16),
            Text('暫無考試', style: TextStyle(color: Colors.grey)),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: state.filteredExams.length,
      itemBuilder: (context, index) {
        final exam = state.filteredExams[index];
        return Card(
          child: ListTile(
            title: Text(exam.examName),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(exam.lessonTitle),
                Text('考試日期: ${_formatDate(exam.examDate)}'),
              ],
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () =>
                      context.push('/teacher-exam/${exam.examId}/edit'),
                ),
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () => _showDeleteConfirmDialog(context, exam),
                ),
              ],
            ),
            onTap: () => context.push('/teacher-exam/${exam.examId}'),
          ),
        );
      },
    );
  }

  Widget? _buildExamMarker(BuildContext context, DateTime date, List events) {
    final count = context
        .read<TeacherExamCubit>()
        .state
        .exams
        .where((exam) => isSameDay(exam.examDate, date))
        .length;

    if (count == 0) return null;

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        shape: BoxShape.circle,
      ),
      width: 16,
      height: 16,
      child: Center(
        child: Text(
          count.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.year}/${date.month}/${date.day}';
  }

  Future<void> _showDeleteConfirmDialog(
    BuildContext context,
    TeacherExam exam,
  ) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('確認刪除'),
        content: Text('確定要刪除考試「${exam.examName}」嗎？'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('取消'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('確定'),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      if (!mounted) return;
      try {
        await context.read<TeacherExamCubit>().deleteExam(exam.examId);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('刪除成功')),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('刪除失敗: ${e.toString()}')),
        );
      }
    }
  }
}
