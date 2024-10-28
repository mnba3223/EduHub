import 'package:edutec_hub/data/models/student/homework.dart';
import 'package:edutec_hub/data/repositories/homework_repository.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
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

class _StudentHomeworkListScreenState extends State<StudentHomeworkListScreen> {
  DateTime _focusedDay = DateTime.now();
  CalendarFormat _calendarFormat = CalendarFormat.month;
  HomeworkStatus? _selectedStatus = HomeworkStatus.pending; // 默認選中待完成

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeworkCubit(
        homeworkRepository: context.read<HomeworkRepository>(),
      )..loadHomeworks(),
      child: BlocBuilder<HomeworkCubit, HomeworkState>(
        builder: (context, state) {
          return Scaffold(
            appBar: null,
            body: Column(
              children: [
                _buildTopBar(context),
                _buildCalendar(context, state),
                _buildStatusFilter(context),
                if (state.selectedDate != null) ...[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      children: [
                        Icon(Icons.calendar_today, size: 16.sp),
                        SizedBox(width: 8.w),
                        Text(
                          DateFormat('yyyy-MM-dd').format(state.selectedDate!),
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.grey[600],
                          ),
                        ),
                        if (_selectedStatus != null) ...[
                          SizedBox(width: 16.w),
                          Text(
                            '• ${_getStatusText(_selectedStatus!)}',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h),
                ],
                Expanded(
                  child: state.error != null
                      ? Center(child: Text(state.error!))
                      : _buildHomeworkList(context, state),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildTopBar(BuildContext context) {
    return FixedHeightSmoothTopBarV2(
      height: 130.h,
      child: SafeArea(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.white70),
                onPressed: () => Navigator.pop(context),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'homework'.tr(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 40.w), // 為了平衡左邊的返回按鈕
            ],
          ),
        ),
      ),
    );
  }

  String _getStatusText(HomeworkStatus status) {
    switch (status) {
      case HomeworkStatus.pending:
        return 'pending'.tr();
      case HomeworkStatus.submitted:
        return 'submitted'.tr();
      case HomeworkStatus.graded:
        return 'graded'.tr();
      case HomeworkStatus.overdue:
        return 'overdue'.tr();
    }
  }

  Widget _buildStatusFilter(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      child: Row(
        children: [
          _buildFilterChip(
            label: 'all'.tr(),
            selected: _selectedStatus == null,
            onSelected: (selected) {
              setState(() => _selectedStatus = null);
            },
          ),
          SizedBox(width: 8.w),
          _buildFilterChip(
            label: 'pending'.tr(),
            selected: _selectedStatus == HomeworkStatus.pending,
            onSelected: (selected) {
              setState(() =>
                  _selectedStatus = selected ? HomeworkStatus.pending : null);
            },
          ),
          SizedBox(width: 8.w),
          _buildFilterChip(
            label: 'submitted'.tr(),
            selected: _selectedStatus == HomeworkStatus.submitted,
            onSelected: (selected) {
              setState(() =>
                  _selectedStatus = selected ? HomeworkStatus.submitted : null);
            },
          ),
          SizedBox(width: 8.w),
          _buildFilterChip(
            label: 'graded'.tr(),
            selected: _selectedStatus == HomeworkStatus.graded,
            onSelected: (selected) {
              setState(() =>
                  _selectedStatus = selected ? HomeworkStatus.graded : null);
            },
          ),
          SizedBox(width: 8.w),
          _buildFilterChip(
            label: 'overdue'.tr(),
            selected: _selectedStatus == HomeworkStatus.overdue,
            onSelected: (selected) {
              setState(() =>
                  _selectedStatus = selected ? HomeworkStatus.overdue : null);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChip({
    required String label,
    required bool selected,
    required Function(bool) onSelected,
  }) {
    return FilterChip(
      label: Text(label),
      selected: selected,
      onSelected: onSelected,
      backgroundColor: Colors.grey.withOpacity(0.1),
      selectedColor: Theme.of(context).primaryColor.withOpacity(0.2),
      labelStyle: TextStyle(
        color: selected ? Theme.of(context).primaryColor : Colors.black87,
      ),
    );
  }

  Widget _buildHomeworkList(BuildContext context, HomeworkState state) {
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    final homeworkCubit = context.read<HomeworkCubit>();
    var homeworks = homeworkCubit.getFilteredHomeworks(_selectedStatus);

    if (homeworks.isEmpty) {
      if (state.selectedDate != null) {
        return Center(child: Text('no_homework_for_selected_date'.tr()));
      }
      return Center(child: Text('no_homework'.tr()));
    }

    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemCount: homeworks.length,
      itemBuilder: (context, index) => _buildHomeworkCard(homeworks[index]),
    );
  }

  Widget _buildCalendar(BuildContext context, HomeworkState state) {
    final homeworkCubit = context.read<HomeworkCubit>();
    return TableCalendar(
      firstDay: DateTime.utc(2024, 1, 1),
      lastDay: DateTime.utc(2024, 12, 31),
      focusedDay: _focusedDay,
      selectedDayPredicate: (day) => isSameDay(state.selectedDate, day),
      calendarFormat: _calendarFormat,
      eventLoader: (day) => homeworkCubit.getEventsForDay(day),
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _focusedDay = focusedDay;
        });
        // 任何日期都可以選擇
        homeworkCubit.filterHomeworksByDate(selectedDay);
      },
      onFormatChanged: (format) {
        setState(() {
          _calendarFormat = format;
        });
      },
    );
  }

  Widget _buildPendingHomeworkList(BuildContext context, HomeworkState state) {
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    final pendingHomeworks =
        context.read<HomeworkCubit>().getPendingHomeworks();

    if (pendingHomeworks.isEmpty) {
      if (state.selectedDate != null) {
        return Center(child: Text('no_homework_for_selected_date'.tr()));
      }
      return Center(child: Text('no_pending_homework'.tr()));
    }

    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemCount: pendingHomeworks.length,
      itemBuilder: (context, index) =>
          _buildHomeworkCard(pendingHomeworks[index]),
    );
  }

  Widget _buildCompletedHomeworkList(
      BuildContext context, HomeworkState state) {
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    final completedHomeworks =
        context.read<HomeworkCubit>().getCompletedHomeworks();

    if (completedHomeworks.isEmpty) {
      if (state.selectedDate != null) {
        return Center(child: Text('no_homework_for_selected_date'.tr()));
      }
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
      extra: homework,
    );
  }
}
