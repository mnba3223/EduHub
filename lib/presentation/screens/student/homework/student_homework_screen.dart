import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/config/user_session.dart';
import 'package:edutec_hub/data/models/student/homework.dart';

import 'package:edutec_hub/data/repositories/homework_repository.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/state_management/cubit/homework/homework_cubit.dart';
import 'package:edutec_hub/state_management/cubit/homework/homework_state.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  HomeworkStatus? _selectedStatus = HomeworkStatus.pending;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeworkCubit(
        repository: context.read<HomeworkRepository>(),
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
                  _buildDateHeader(state),
                  SizedBox(height: 8.h),
                ],
                Expanded(
                  child: state.isLoading
                      ? const Center(child: CircularProgressIndicator())
                      : state.error != null
                          ? Center(child: Text(state.error!))
                          : _buildHomeworkList(state),
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
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios,
                    color: Colors.white70, size: 24.sp),
                onPressed: () => Navigator.pop(context),
              ),
              Text(
                'homework'.tr(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 48.w),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCalendar(BuildContext context, HomeworkState state) {
    return TableCalendar<HomeworkListItem>(
      firstDay: DateTime.utc(2024, 1, 1),
      lastDay: DateTime.utc(2024, 12, 31),
      focusedDay: _focusedDay,
      selectedDayPredicate: (day) => isSameDay(state.selectedDate, day),
      calendarFormat: _calendarFormat,
      eventLoader: (day) {
        return state.homeworks
            .where((homework) => isSameDay(homework.endTime, day))
            .toList();
      },
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _focusedDay = focusedDay;
        });
        context.read<HomeworkCubit>().filterHomeworksByDate(selectedDay);
      },
      onFormatChanged: (format) {
        setState(() {
          _calendarFormat = format;
        });
      },
      calendarStyle: CalendarStyle(
        markersMaxCount: 3,
        markerSize: 6.sp,
        markerDecoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          shape: BoxShape.circle,
        ),
        selectedDecoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          shape: BoxShape.circle,
        ),
        todayDecoration: BoxDecoration(
          color: Theme.of(context).primaryColor.withOpacity(0.5),
          shape: BoxShape.circle,
        ),
      ),
    );
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
              // 不傳遞狀態，表示顯示所有
              context.read<HomeworkCubit>().filterHomeworksByStatus(null);
            },
          ),
          SizedBox(width: 8.w),
          // 為每個狀態創建一個過濾器
          for (final status in HomeworkStatus.values)
            Padding(
              padding: EdgeInsets.only(right: 8.w),
              child: _buildFilterChip(
                label: _getStatusText(status),
                selected: _selectedStatus == status,
                onSelected: (selected) {
                  setState(() {
                    _selectedStatus = selected ? status : null;
                  });
                  // 根據選擇更新過濾器
                  context
                      .read<HomeworkCubit>()
                      .filterHomeworksByStatus(selected ? status : null);
                },
              ),
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
      padding: EdgeInsets.symmetric(horizontal: 8.w),
    );
  }

  Widget _buildDateHeader(HomeworkState state) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          Icon(Icons.calendar_today, size: 16.sp, color: Colors.grey[600]),
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
    );
  }

  Widget _buildHomeworkList(HomeworkState state) {
    final filteredHomeworks = state.filteredHomeworks;

    if (filteredHomeworks.isEmpty) {
      return Center(
        child: Text(
          state.selectedDate != null
              ? 'no_homework_for_selected_date'.tr()
              : 'no_homework'.tr(),
        ),
      );
    }

    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemCount: filteredHomeworks.length,
      itemBuilder: (context, index) =>
          _buildHomeworkCard(filteredHomeworks[index]),
    );
  }

  Widget _buildHomeworkCard(HomeworkListItem homework) {
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
                    homework.lessonTitle,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  _buildStatusChip(homework.status),
                ],
              ),
              if (homework.lessonDescription != null) ...[
                SizedBox(height: 4.h),
                Text(
                  homework.lessonDescription!,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey[600],
                  ),
                ),
              ],
              SizedBox(height: 8.h),
              Text(
                homework.description,
                style: TextStyle(fontSize: 14.sp),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Icon(Icons.person_outline,
                      size: 16.sp, color: Colors.grey[600]),
                  SizedBox(width: 4.w),
                  Text(
                    homework.teacherName,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Icon(Icons.calendar_today,
                      size: 16.sp, color: Colors.grey[600]),
                  SizedBox(width: 4.w),
                  Text(
                    DateFormat('yyyy-MM-dd HH:mm').format(homework.endTime),
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12.sp,
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

  Widget _buildStatusChip(HomeworkStatus status) {
    final config = _getStatusConfig(status);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: config.color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Text(
        config.text,
        style: TextStyle(
          color: config.color,
          fontSize: 12.sp,
        ),
      ),
    );
  }

  StatusConfig _getStatusConfig(HomeworkStatus status) {
    switch (status) {
      case HomeworkStatus.pending:
        return StatusConfig(Colors.orange, 'pending'.tr());
      case HomeworkStatus.submitted:
        return StatusConfig(Colors.blue, 'submitted'.tr());
      case HomeworkStatus.graded:
        return StatusConfig(Colors.green, 'graded'.tr());
      case HomeworkStatus.overdue:
        return StatusConfig(Colors.red, 'overdue'.tr());
    }
  }

  String _getStatusText(HomeworkStatus status) {
    return _getStatusConfig(status).text;
  }

  void _navigateToHomeworkDetail(HomeworkListItem homework) {
    context.pushNamed(
      'student-homework-detail',
      pathParameters: {'id': homework.homeworkId.toString()},
    );
  }
}

class StatusConfig {
  final Color color;
  final String text;

  const StatusConfig(this.color, this.text);
}
