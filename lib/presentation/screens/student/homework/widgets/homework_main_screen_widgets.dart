import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/student/homework.dart';
import 'package:edutec_hub/state_management/cubit/homework/homework_cubit.dart';
import 'package:edutec_hub/state_management/cubit/homework/homework_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeworkConstants {
  static const double cardPadding = 16.0;
  static const double chipRadius = 12.0;
  static const double iconSize = 16.0;
  static const int maxLines = 2;
}

// class HomeworkStatusChip extends StatelessWidget {
//   final HomeworkStatus status;

//   const HomeworkStatusChip({
//     required this.status,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final config = context.read<HomeworkCubit>().getStatusConfig(status);
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
//       decoration: BoxDecoration(
//         color: config.color.withOpacity(0.1),
//         borderRadius: BorderRadius.circular(12.r),
//       ),
//       child: Text(
//         config.text,
//         style: TextStyle(
//           color: config.color,
//           fontSize: 12.sp,
//         ),
//       ),
//     );
//   }
// }

class HomeworkStatusChip extends StatelessWidget {
  final HomeworkStatus status;

  const HomeworkStatusChip({
    required this.status,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final config = context.read<HomeworkCubit>().getStatusConfig(status);
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
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class HomeworkCard extends StatelessWidget {
  final HomeworkListItem homework;
  final VoidCallback? onTap;

  const HomeworkCard({
    required this.homework,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.h),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              SizedBox(height: 8.h),
              _buildClassInfo(),
              // SizedBox(height: 8.h),
              // _buildDescription(),
              SizedBox(height: 8.h),
              _buildFooter(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            homework.className,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        HomeworkStatusChip(status: homework.status),
      ],
    );
  }

  Widget _buildClassInfo() {
    return Row(
      children: [
        Icon(Icons.location_on_outlined, size: 16.sp, color: Colors.grey[600]),
        SizedBox(width: 4.w),
        Text(
          homework.classroomName,
          style: TextStyle(
            fontSize: 12.sp,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }

  // Widget _buildDescription() {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text(
  //         homework.description,
  //         style: TextStyle(fontSize: 14.sp),
  //         maxLines: 2,
  //         overflow: TextOverflow.ellipsis,
  //       ),
  //       if (homework.attachmentUrl != null) ...[
  //         SizedBox(height: 4.h),
  //         Row(
  //           children: [
  //             Icon(Icons.attachment, size: 16.sp, color: Colors.blue),
  //             SizedBox(width: 4.w),
  //             Text(
  //               'attachment'.tr(),
  //               style: TextStyle(
  //                 fontSize: 12.sp,
  //                 color: Colors.blue,
  //               ),
  //             ),
  //           ],
  //         ),
  //       ],
  //     ],
  //   );
  // }

  Widget _buildFooter(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.person_outline, size: 16.sp, color: Colors.grey[600]),
            SizedBox(width: 4.w),
            Text(
              homework.teacherName,
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(width: 16.w),
            Icon(Icons.calendar_today, size: 16.sp, color: Colors.grey[600]),
            SizedBox(width: 4.w),
            Text(
              'due_date'.tr(
                  args: [DateFormat('yyyy/MM/dd').format(homework.endTime)]),
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
        if (homework.submittedCount > 0) ...[
          SizedBox(height: 4.h),
          // _buildSubmissionProgress(),
        ],
      ],
    );
  }

  Widget _buildSubmissionProgress() {
    return Row(
      children: [
        Icon(Icons.check_circle_outline, size: 16.sp, color: Colors.green),
        SizedBox(width: 4.w),
        Text(
          'Submitted: ${homework.submittedCount}/${homework.totalStudents}',
          style: TextStyle(
            fontSize: 12.sp,
            color: Colors.grey[600],
          ),
        ),
        Expanded(
          child: LinearProgressIndicator(
            value: homework.submittedCount / homework.totalStudents,
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
            minHeight: 4.h,
          ),
        ),
      ],
    );
  }
}

class StatusFilterBar extends StatelessWidget {
  const StatusFilterBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeworkCubit, HomeworkState>(
      buildWhen: (previous, current) =>
          previous.selectedStatus != current.selectedStatus,
      builder: (context, state) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
          child: Row(
            children: [
              _buildFilterChip(
                context,
                label: 'all'.tr(),
                selected: state.selectedStatus == null,
                onSelected: (selected) =>
                    context.read<HomeworkCubit>().filterHomeworksByStatus(null),
              ),
              SizedBox(width: 8.w),
              ...HomeworkStatus.values.map((status) => Padding(
                    padding: EdgeInsets.only(right: 8.w),
                    child: _buildFilterChip(
                      context,
                      label:
                          context.read<HomeworkCubit>().getStatusText(status),
                      selected: state.selectedStatus == status,
                      onSelected: (selected) => context
                          .read<HomeworkCubit>()
                          .filterHomeworksByStatus(selected ? status : null),
                    ),
                  )),
            ],
          ),
        );
      },
    );
  }

  Widget _buildFilterChip(
    BuildContext context, {
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
}

// lib/presentation/widgets/homework/calendar_widget.dart
class HomeworkCalendar extends StatelessWidget {
  final DateTime focusedDay;
  final Function(DateTime, DateTime) onDaySelected;
  final Function(CalendarFormat) onFormatChanged;
  final CalendarFormat calendarFormat;
  final List<HomeworkListItem> homeworks;
  final DateTime? selectedDay;

  const HomeworkCalendar({
    required this.focusedDay,
    required this.onDaySelected,
    required this.onFormatChanged,
    required this.calendarFormat,
    required this.homeworks,
    this.selectedDay,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    // 計算日曆的起始和結束日期
    final firstDay = DateTime(now.year - 1, now.month, 1); // 從去年同月開始
    final lastDay = DateTime(now.year + 1, now.month + 1, 0); // 到明年下個月結束

    return TableCalendar<HomeworkListItem>(
      firstDay: firstDay,
      lastDay: lastDay,
      focusedDay: focusedDay,
      selectedDayPredicate: (day) =>
          selectedDay != null && isSameDay(selectedDay!, day),
      calendarFormat: calendarFormat,
      startingDayOfWeek: StartingDayOfWeek.monday, // 從週一開始
      availableCalendarFormats: const {
        CalendarFormat.month: 'Month',
        CalendarFormat.week: 'Week',
      },
      eventLoader: (day) {
        return homeworks
            .where((homework) => isSameDay(homework.startTime, day))
            .toList();
      },
      onDaySelected: onDaySelected,
      onFormatChanged: onFormatChanged,
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
      // 客製化 header 樣式
      headerStyle: HeaderStyle(
        formatButtonVisible: true,
        titleCentered: true,
        formatButtonShowsNext: false,
        formatButtonDecoration: BoxDecoration(
          color: Theme.of(context).primaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12.r),
        ),
        formatButtonTextStyle: TextStyle(
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
