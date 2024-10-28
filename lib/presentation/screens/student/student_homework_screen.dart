// lib/presentation/screens/student/student_homework_list_screen.dart
import 'package:edutec_hub/data/models/student/homework.dart';
import 'package:edutec_hub/data/repositories/homework_repository.dart';
import 'package:edutec_hub/state_management/cubit/homework/homework_cubit.dart';
import 'package:edutec_hub/state_management/cubit/homework/homework_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:go_router/go_router.dart';
import 'package:table_calendar/table_calendar.dart';

class StudentHomeworkListScreen extends StatefulWidget {
  const StudentHomeworkListScreen({Key? key}) : super(key: key);

  @override
  State<StudentHomeworkListScreen> createState() =>
      _StudentHomeworkListScreenState();
}

class _StudentHomeworkListScreenState extends State<StudentHomeworkListScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  CalendarFormat _calendarFormat = CalendarFormat.month;

  // 模擬數據
  final List<Homework> mockHomeworks = [
    Homework(
      id: '1',
      title: '數學作業 - 微積分練習',
      description: '請完成課本第三章習題 1-10',
      dueDate: DateTime.now().add(const Duration(days: 3)),
      createdAt: DateTime.now(),
      courseId: 'MATH101',
      courseName: '微積分',
      status: HomeworkStatus.pending,
    ),
    Homework(
      id: '2',
      title: '英文作業 - Essay',
      description: 'Write a 500-word essay about your summer vacation',
      dueDate: DateTime.now().add(const Duration(days: 5)),
      createdAt: DateTime.now(),
      courseId: 'ENG101',
      courseName: '英文寫作',
      status: HomeworkStatus.pending,
    ),
    Homework(
      id: '3',
      title: '物理作業 - 運動學',
      description: '完成實驗報告',
      dueDate: DateTime.now().subtract(const Duration(days: 2)),
      createdAt: DateTime.now().subtract(const Duration(days: 7)),
      courseId: 'PHY101',
      courseName: '普通物理',
      status: HomeworkStatus.submitted,
      submitContent: '已完成實驗報告書',
      submitDate: DateTime.now().subtract(const Duration(days: 2)),
    ),
    Homework(
      id: '4',
      title: '化學作業 - 元素週期表',
      description: '完成元素特性分析',
      dueDate: DateTime.now().subtract(const Duration(days: 5)),
      createdAt: DateTime.now().subtract(const Duration(days: 10)),
      courseId: 'CHE101',
      courseName: '普通化學',
      status: HomeworkStatus.graded,
      submitContent: '元素特性分析報告',
      submitDate: DateTime.now().subtract(const Duration(days: 5)),
      score: 95,
      teacherComment: '報告內容詳實，分析透徹',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _selectedDay = _focusedDay;
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeworkCubit(
        homeworkRepository: context.read<HomeworkRepository>(),
      )..loadHomeworks(),
      child: BlocBuilder<HomeworkCubit, HomeworkState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text('homework'.tr()),
              bottom: TabBar(
                controller: _tabController,
                tabs: [
                  Tab(text: 'pending_homework'.tr()),
                  Tab(text: 'completed_homework'.tr()),
                ],
              ),
            ),
            body: Column(
              children: [
                _buildCalendar(),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      _buildPendingHomeworkList(),
                      _buildCompletedHomeworkList(),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildCalendar() {
    return TableCalendar(
      firstDay: DateTime.utc(2024, 1, 1),
      lastDay: DateTime.utc(2024, 12, 31),
      focusedDay: _focusedDay,
      selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
      calendarFormat: _calendarFormat,
      eventLoader: _getEventsForDay,
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay;
        });
      },
      onFormatChanged: (format) {
        setState(() {
          _calendarFormat = format;
        });
      },
    );
  }

  List<Homework> _getEventsForDay(DateTime day) {
    return mockHomeworks
        .where((homework) => isSameDay(homework.dueDate, day))
        .toList();
  }

  Widget _buildPendingHomeworkList() {
    final pendingHomeworks =
        mockHomeworks.where((h) => h.status == HomeworkStatus.pending).toList();

    if (pendingHomeworks.isEmpty) {
      return Center(child: Text('no_pending_homework'.tr()));
    }

    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemCount: pendingHomeworks.length,
      itemBuilder: (context, index) =>
          _buildHomeworkCard(pendingHomeworks[index]),
    );
  }

  Widget _buildCompletedHomeworkList() {
    final completedHomeworks =
        mockHomeworks.where((h) => h.status != HomeworkStatus.pending).toList();

    if (completedHomeworks.isEmpty) {
      return Center(child: Text('no_completed_homework'.tr()));
    }

    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemCount: completedHomeworks.length,
      itemBuilder: (context, index) =>
          _buildHomeworkCard(completedHomeworks[index]),
    );
  }

  Widget _buildHomeworkCard(Homework homework) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.h),
      child: InkWell(
        onTap: () => _navigateToHomeworkDetail(homework),
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    homework.courseName,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  _buildStatusChip(homework.status),
                ],
              ),
              SizedBox(height: 8.h),
              Text(
                homework.title,
                style: TextStyle(fontSize: 18.sp),
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Icon(Icons.calendar_today, size: 16.sp),
                  SizedBox(width: 4.w),
                  Text(
                    DateFormat('yyyy-MM-dd HH:mm').format(homework.dueDate),
                    style: TextStyle(color: Colors.grey),
                  ),
                  if (homework.score != null) ...[
                    SizedBox(width: 16.w),
                    Icon(Icons.score, size: 16.sp),
                    SizedBox(width: 4.w),
                    Text(
                      '${homework.score}',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusChip(HomeworkStatus status) {
    Color color;
    String text;

    switch (status) {
      case HomeworkStatus.pending:
        color = Colors.orange;
        text = 'pending'.tr();
        break;
      case HomeworkStatus.submitted:
        color = Colors.blue;
        text = 'submitted'.tr();
        break;
      case HomeworkStatus.graded:
        color = Colors.green;
        text = 'graded'.tr();
        break;
      case HomeworkStatus.overdue:
        color = Colors.red;
        text = 'overdue'.tr();
        break;
    }

    return Chip(
      label: Text(text),
      backgroundColor: color.withOpacity(0.1),
      labelStyle: TextStyle(color: color),
    );
  }

  void _navigateToHomeworkDetail(Homework homework) {
    context.pushNamed(
      'student-homework-detail',
      pathParameters: {'id': homework.id},
      extra: homework, // 直接傳遞 homework 對象
    );
  }
}
