import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/teacher/teacher_exam.dart';
import 'package:edutec_hub/data/repositories/exam/teacher_exam_repository.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/state_management/cubit/exam/teacher_exam_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class TeacherExamDetailScreen extends StatefulWidget {
  final int examId;

  const TeacherExamDetailScreen({
    Key? key,
    required this.examId,
  }) : super(key: key);

  @override
  State<TeacherExamDetailScreen> createState() =>
      _TeacherExamDetailScreenState();
}

class _TeacherExamDetailScreenState extends State<TeacherExamDetailScreen> {
  @override
  void initState() {
    super.initState();
    // Load exam registrations when screen initializes
    context.read<TeacherExamCubit>().loadExamRegistrations(widget.examId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTopBar(context),
          Expanded(
            child: BlocBuilder<TeacherExamCubit, TeacherExamState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (state.error != null) {
                  return Center(child: Text('error_loading_data'.tr()));
                }

                if (state.registrations.isEmpty) {
                  return Center(child: Text('no_registrations'.tr()));
                }

                return _buildContent(state.registrations);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopBar(BuildContext context) {
    return FixedHeightSmoothTopBarV2(
      height: 130.h,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                    onPressed: () => context.pop(),
                  ),
                  Expanded(
                    child: BlocBuilder<TeacherExamCubit, TeacherExamState>(
                      builder: (context, state) {
                        final registration = state.registrations.isNotEmpty
                            ? state.registrations.first
                            : null;

                        return Text(
                          'exam_detail'.tr(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent(List<TeacherExamRegistration> registrations) {
    final examInfo = registrations.first; // 使用第一筆資料獲取考試資訊

    return Column(
      children: [
        _buildExamInfo(examInfo),
        _buildProgressCard(registrations),
        Expanded(
          child: _buildRegistrationsList(registrations),
        ),
      ],
    );
  }

  Widget _buildExamInfo(TeacherExamRegistration exam) {
    return Card(
      margin: EdgeInsets.all(16.w),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              exam.examName,
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
            SizedBox(height: 12.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.class_,
                    size: 24.sp, color: Theme.of(context).primaryColor),
                SizedBox(width: 8.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        exam.className,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (exam.lessonDescription != null) ...[
                        SizedBox(height: 4.h),
                        Text(
                          exam.lessonDescription!,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            Row(
              children: [
                Icon(Icons.calendar_today,
                    size: 20.sp, color: Theme.of(context).primaryColor),
                SizedBox(width: 8.w),
                Text(
                  DateFormat('yyyy/MM/dd').format(exam.examDate),
                  style: TextStyle(fontSize: 14.sp),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Text(
              exam.examDescription,
              style: TextStyle(fontSize: 14.sp),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressCard(List<TeacherExamRegistration> registrations) {
    final totalStudents = registrations.length;
    final gradedCount = registrations.where((r) => r.score != null).length;
    final averageScore = registrations
        .where((r) => r.score != null)
        .map((r) => r.score!)
        .average();

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Row(
          children: [
            _buildProgressItem(
              'teacher_exam_total_students'.tr(),
              totalStudents.toString(),
              Icons.groups,
            ),
            SizedBox(width: 16.w),
            _buildProgressItem(
              'teacher_exam_graded_count'.tr(),
              '$gradedCount/$totalStudents',
              Icons.assignment_turned_in,
            ),
            SizedBox(width: 16.w),
            _buildProgressItem(
              'teacher_exam_score'.tr(),
              averageScore != null
                  ? averageScore.toInt().toString()
                  : '-', // 改用 toInt()
              Icons.analytics,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressItem(String label, String value, IconData icon) {
    return Expanded(
      child: Column(
        children: [
          Icon(icon, color: Theme.of(context).primaryColor, size: 24.sp),
          SizedBox(height: 8.h),
          Text(
            value,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            label,
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.grey[600],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildRegistrationsList(List<TeacherExamRegistration> registrations) {
    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemCount: registrations.length,
      itemBuilder: (context, index) {
        final registration = registrations[index];
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
              child: Text(
                registration.studentName.characters.first,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            title: Text(
              registration.studentName,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              registration.score == null
                  ? 'teacher_exam_not_graded'.tr()
                  : '${'teacher_exam_score'.tr()}: ${registration.score}',
              style: TextStyle(
                color: registration.score == null
                    ? Colors.grey[600]
                    : Theme.of(context).primaryColor,
              ),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () => _showGradeDialog(registration),
            ),
          ),
        );
      },
    );
  }

  Future<void> _showGradeDialog(TeacherExamRegistration registration) async {
    final scoreController = TextEditingController(
      text: registration.score?.toStringAsFixed(0) ?? '',
    );

    final result = await showDialog<int>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('grade_exam'.tr()),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'student_name'.tr(), // '學生姓名'
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              registration.studentName,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.h),
            TextField(
              controller: scoreController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'enter_score'.tr(), // '輸入分數'
                hintText: '0-100',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                prefixIcon: Icon(Icons.grade, size: 20.sp),
              ),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(3),
              ],
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('cancel'.tr()),
          ),
          ElevatedButton(
            onPressed: () {
              final score = int.tryParse(scoreController.text);
              if (score != null && score >= 0 && score <= 100) {
                Navigator.pop(context, score);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text('score_validate'.tr())), // '請輸入0-100的分數'
                );
              }
            },
            child: Text('confirm'.tr()),
          ),
        ],
      ),
    );

    if (result != null) {
      try {
        await context
            .read<TeacherExamCubit>()
            .gradeExam(registration.registrationId, result);

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('teacher_exam_grade_success'.tr())),
          );
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'teacher_exam_grade_failed'.tr(args: [e.toString()]),
              ),
            ),
          );
        }
      }
    }
  }
}

extension IterableNumberExtension on Iterable<num> {
  int? average() {
    if (isEmpty) return null;
    num sum = fold(0, (a, b) => a + b);
    return (sum / length).round();
  }
}
