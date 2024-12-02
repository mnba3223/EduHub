import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/common/lesson.dart';
import 'package:edutec_hub/presentation/screens/teacher/attendance/widgets/leave_request_card.dart';
import 'package:edutec_hub/state_management/cubit/leave/teacher_leave_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:edutec_hub/data/models/teacher/teacher_leave.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/teacher/teacher_leave.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/calendar.dart';
import 'package:edutec_hub/state_management/cubit/leave/teacher_leave_cubit.dart';
import 'package:edutec_hub/state_management/cubit/lesson/lesson_cubit.dart';
import 'package:table_calendar/table_calendar.dart';

class TeacherLeaveScreen extends StatefulWidget {
  const TeacherLeaveScreen({Key? key}) : super(key: key);

  @override
  State<TeacherLeaveScreen> createState() => _TeacherLeaveScreenState();
}

class _TeacherLeaveScreenState extends State<TeacherLeaveScreen> {
  @override
  void initState() {
    super.initState();
    context.read<LessonCubit>().loadLessons();
    context.read<TeacherLeaveCubit>().loadLeaveRequests();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showCreateLeaveDialog(context),
        label: Text('create_leave_request'.tr()),
        icon: const Icon(Icons.add),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await context.read<TeacherLeaveCubit>().loadLeaveRequests();
        },
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: _buildTopBar(context),
            ),
            SliverToBoxAdapter(
              child: BlocBuilder<TeacherLeaveCubit, TeacherLeaveState>(
                buildWhen: (previous, current) =>
                    previous.selectedDate != current.selectedDate ||
                    previous.leaveRequests != current.leaveRequests ||
                    previous.focusedDay != current.focusedDay,
                builder: (context, state) {
                  return ReusableCalendar(
                    selectedDay: state.selectedDate,
                    onDaySelected: (selectedDay, focusedDay) {
                      context.read<TeacherLeaveCubit>().updateSelectedDate(
                            selectedDay,
                            focusedDay,
                          );
                    },
                    markerBuilder: (context, date, events) =>
                        context.read<TeacherLeaveCubit>().markerBuilder(
                              context,
                              date,
                              events,
                            ),
                  );
                },
              ),
            ),
            SliverFillRemaining(
              child: BlocBuilder<TeacherLeaveCubit, TeacherLeaveState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (state.error != null) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(state.error!),
                          ElevatedButton(
                            onPressed: () => context
                                .read<TeacherLeaveCubit>()
                                .loadLeaveRequests(),
                            child: Text('retry'.tr()),
                          ),
                        ],
                      ),
                    );
                  }

                  return _buildLeaveList(state);
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
      height: 160.h,
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'teacher_leave_management'.tr(),
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

  Widget _buildCreateLeaveButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: ElevatedButton(
        onPressed: () => _showCreateLeaveDialog(context),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 48.h),
        ),
        child: Text('create_leave_request'.tr()),
      ),
    );
  }

  Widget _buildLeaveList(TeacherLeaveState state) {
    if (state.filteredLeaves.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.event_busy, size: 48.sp, color: Colors.grey[400]),
            SizedBox(height: 16.h),
            Text(
              state.selectedDate != null
                  ? 'no_leave_requests_for_selected_date'.tr()
                  : 'no_leave_requests'.tr(),
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
      padding: EdgeInsets.only(
        left: 16.w,
        right: 16.w,
        top: 16.h,
        bottom: 40.h, // 為 FAB 保留足夠空間
      ),
      itemCount: state.filteredLeaves.length,
      itemBuilder: (context, index) {
        final leave = state.filteredLeaves[index];
        return LeaveRequestCard(leave: leave);
      },
    );
  }

  Widget? _buildMarker(
      BuildContext context, DateTime date, List<TeacherLeave> leaves) {
    final leaveRequests =
        leaves.where((leave) => isSameDay(leave.lessonDate, date)).toList();

    if (leaveRequests.isEmpty) return null;

    return Container(
      decoration: const BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      ),
      width: 8.w,
      height: 8.h,
    );
  }

  Future<void> _showCreateLeaveDialog(BuildContext context) async {
    final lessonState = context.read<LessonCubit>().state;
    if (lessonState.lessons.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('no_lessons_available'.tr())),
      );
      return;
    }

    final selectedLesson = await showDialog<Lesson>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('select_lesson_for_leave'.tr()),
        content: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.6,
            maxWidth: MediaQuery.of(context).size.width * 0.9,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: Text(
                  'available_lessons'.tr(),
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              Flexible(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: lessonState.lessons.map((lesson) {
                      final lessonDate =
                          DateFormat('yyyy-MM-dd').format(lesson.lessonDate);
                      final timeRange =
                          '${lesson.startTime.substring(0, 5)} - ${lesson.endTime.substring(0, 5)}';

                      return Card(
                        margin: EdgeInsets.only(bottom: 8.h),
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.w,
                            vertical: 8.h,
                          ),
                          title: Text(
                            lesson.lessonTitle,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 4.h),
                              Row(
                                children: [
                                  Icon(Icons.calendar_today, size: 14.sp),
                                  SizedBox(width: 4.w),
                                  Text(lessonDate),
                                ],
                              ),
                              SizedBox(height: 2.h),
                              Row(
                                children: [
                                  Icon(Icons.access_time, size: 14.sp),
                                  SizedBox(width: 4.w),
                                  Text(timeRange),
                                ],
                              ),
                            ],
                          ),
                          onTap: () => Navigator.of(context).pop(lesson),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('cancel'.tr()),
          ),
        ],
      ),
    );

    // if (selectedLesson != null && context.mounted) {
    //   // Show leave type selection
    //   final selectedType = await showDialog<String>(
    //     context: context,
    //     builder: (context) => AlertDialog(
    //       title: Text('select_leave_type'.tr()),
    //       content: Column(
    //         mainAxisSize: MainAxisSize.min,
    //         children: [
    //           _LeaveTypeOption(
    //             icon: Icons.sick,
    //             title: 'sick_leave'.tr(),
    //             onTap: () => Navigator.of(context).pop('sick'),
    //           ),
    //           _LeaveTypeOption(
    //             icon: Icons.person_outline,
    //             title: 'personal_leave'.tr(),
    //             onTap: () => Navigator.of(context).pop('personal'),
    //           ),
    //           _LeaveTypeOption(
    //             icon: Icons.more_horiz,
    //             title: 'other'.tr(),
    //             onTap: () => Navigator.of(context).pop('other'),
    //           ),
    //         ],
    //       ),
    //       actions: [
    //         TextButton(
    //           onPressed: () => Navigator.of(context).pop(),
    //           child: Text('cancel'.tr()),
    //         ),
    //       ],
    //     ),
    //   );

    if (selectedLesson != null && context.mounted) {
      // 顯示確認對話框
      final confirmed = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('confirm_leave_request'.tr()),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('leave_request_confirm_message'.tr()),
              SizedBox(height: 16.h),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        selectedLesson.lessonTitle,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        children: [
                          Icon(Icons.calendar_today, size: 14.sp),
                          SizedBox(width: 4.w),
                          Text(DateFormat('yyyy-MM-dd')
                              .format(selectedLesson.lessonDate)),
                        ],
                      ),
                      SizedBox(height: 4.h),
                      Row(
                        children: [
                          Icon(Icons.access_time, size: 14.sp),
                          SizedBox(width: 4.w),
                          Text(
                              '${selectedLesson.startTime.substring(0, 5)} - ${selectedLesson.endTime.substring(0, 5)}'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text('cancel'.tr()),
            ),
            FilledButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text('confirm'.tr()),
            ),
          ],
        ),
      );

      if (confirmed == true && context.mounted) {
        try {
          await context.read<TeacherLeaveCubit>().createLeaveRequest(
                selectedLesson.lessonId,
              );

          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('leave_request_submitted'.tr())),
            );
          }
        } catch (e) {
          if (context.mounted) {
            String errorMessage;
            if (e.toString().contains('Leave request has already been made')) {
              errorMessage = 'leave_request_already_exists'.tr();
            } else {
              errorMessage = 'leave_request_failed'.tr();
            }

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(errorMessage),
                backgroundColor: Colors.red,
                action: SnackBarAction(
                  label: 'close'.tr(),
                  textColor: Colors.white,
                  onPressed: () {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  },
                ),
              ),
            );
          }
        }
      }
    }
  }

  Widget _buildDateFilter(BuildContext context, TeacherLeaveState state) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextButton.icon(
              onPressed: () async {
                final selectedDate = await showDatePicker(
                  context: context,
                  initialDate: state.selectedDate ?? DateTime.now(),
                  firstDate: DateTime(2020),
                  lastDate: DateTime(2025),
                );

                if (selectedDate != null) {
                  context.read<TeacherLeaveCubit>().loadLeaveRequests(
                        startDate: selectedDate,
                      );
                }
              },
              icon: const Icon(Icons.calendar_today),
              label: Text(
                state.selectedDate != null
                    ? DateFormat('yyyy-MM-dd').format(state.selectedDate!)
                    : 'select_date'.tr(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class _LeaveTypeOption extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final VoidCallback onTap;

//   const _LeaveTypeOption({
//     Key? key,
//     required this.icon,
//     required this.title,
//     required this.onTap,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.only(bottom: 8.h),
//       child: ListTile(
//         leading: Icon(icon),
//         title: Text(title),
//         onTap: onTap,
//       ),
//     );
//   }
// }
