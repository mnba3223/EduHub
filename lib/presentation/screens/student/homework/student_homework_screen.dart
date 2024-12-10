import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/config/user_session.dart';
import 'package:edutec_hub/data/models/student/homework.dart';

import 'package:edutec_hub/data/repositories/homework/homework_repository.dart';
import 'package:edutec_hub/presentation/screens/student/homework/widgets/homework_main_screen_widgets.dart';
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
  @override
  void initState() {
    super.initState();
    // 直接使用已存在的 HomeworkCubit 載入資料
    context.read<HomeworkCubit>().loadHomeworks();
  }

  @override
  Widget build(BuildContext context) {
    return const StudentHomeworkListView();
  }
}

class StudentHomeworkListView extends StatelessWidget {
  const StudentHomeworkListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: RefreshIndicator(
        onRefresh: () => context.read<HomeworkCubit>().loadHomeworks(),
        child: CustomScrollView(
          // 使用 CustomScrollView 包装内容
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  _buildTopBar(context),
                  BlocBuilder<HomeworkCubit, HomeworkState>(
                    buildWhen: (previous, current) =>
                        previous.focusedDay != current.focusedDay ||
                        previous.selectedDate != current.selectedDate ||
                        previous.calendarFormat != current.calendarFormat ||
                        previous.homeworks != current.homeworks,
                    builder: (context, state) {
                      return HomeworkCalendar(
                        focusedDay: state.focusedDay ?? DateTime.now(),
                        selectedDay: state.selectedDate,
                        calendarFormat: state.calendarFormat,
                        homeworks: state.homeworks,
                        onDaySelected: (selectedDay, focusedDay) {
                          context
                              .read<HomeworkCubit>()
                              .updateCalendar(selectedDay, focusedDay);
                        },
                        onFormatChanged: (format) {
                          context
                              .read<HomeworkCubit>()
                              .updateCalendarFormat(format);
                        },
                      );
                    },
                  ),
                  const StatusFilterBar(),
                ],
              ),
            ),
            SliverFillRemaining(
              child: BlocBuilder<HomeworkCubit, HomeworkState>(
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

  Widget _buildHomeworkList(BuildContext context, HomeworkState state) {
    if (state.filteredHomeworks.isEmpty) {
      return Center(
        child: Text('no_homework'.tr()),
      );
    }

    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemCount: state.filteredHomeworks.length,
      itemBuilder: (context, index) => HomeworkCard(
        homework: state.filteredHomeworks[index],
        onTap: () => _navigateToHomeworkDetail(
          context,
          state.filteredHomeworks[index],
        ),
      ),
    );
  }

  void _navigateToHomeworkDetail(
      BuildContext context, HomeworkListItem homework) {
    context.pushNamed(
      'student-homework-detail',
      pathParameters: {'id': homework.homeworkId.toString()},
    );
  }
}
