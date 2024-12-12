import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/attendance/leave_models.dart';
import 'package:edutec_hub/data/models/course/course.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/state_management/cubit/leave/leave_cubit.dart';
import 'package:edutec_hub/state_management/cubit/course/course_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LeaveRequestFormScreen extends StatefulWidget {
  const LeaveRequestFormScreen({Key? key}) : super(key: key);

  @override
  State<LeaveRequestFormScreen> createState() => _LeaveRequestFormScreenState();
}

class _LeaveRequestFormScreenState extends State<LeaveRequestFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _reasonController = TextEditingController();
  String _selectedLeaveType = '事假';
  final Set<int> _selectedLessonIds = {};
  DateTime _selectedDate = DateTime.now();

  final List<String> _leaveTypes = ['事假', '病假', '公假', '喪假'];

  @override
  void initState() {
    super.initState();
    context.read<CourseCubit>().loadStudentLessons();
  }

  @override
  void dispose() {
    _reasonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTopBar(context),
          Expanded(
            child: _buildForm(context),
          ),
        ],
      ),
    );
  }

  Widget _buildTopBar(BuildContext context) {
    return FixedHeightSmoothTopBarV2(
      height: 130.h,
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(20.w, 40.h, 20.w, 20.h),
          child: Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 24.sp,
                ),
                onPressed: () => context.pop(),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'leave_application'.tr(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 48.w),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildForm(BuildContext context) {
    return BlocBuilder<CourseCubit, CourseState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.error != null) {
          return Center(child: Text(state.error!));
        }

        final filteredLessons = state.studentLessons
            .where((lesson) =>
                DateUtils.isSameDay(lesson.lessonDate, _selectedDate))
            .toList();

        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDateSelector(),
                  SizedBox(height: 20.h),
                  _buildLeaveTypeDropdown(),
                  SizedBox(height: 20.h),
                  _buildLessonsList(filteredLessons),
                  SizedBox(height: 20.h),
                  _buildReasonField(),
                  SizedBox(height: 30.h),
                  _buildSubmitButton(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildDateSelector() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'select_date'.tr(),
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
          ),
        ),
        SizedBox(height: 10.h),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.chevron_left, size: 28.sp),
                onPressed: () {
                  setState(() {
                    _selectedDate =
                        _selectedDate.subtract(const Duration(days: 1));
                    _selectedLessonIds.clear();
                  });
                },
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () async {
                    final DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: _selectedDate,
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(const Duration(days: 30)),
                    );
                    if (picked != null && picked != _selectedDate) {
                      setState(() {
                        _selectedDate = picked;
                        _selectedLessonIds.clear();
                      });
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(color: Colors.grey[200]!),
                        right: BorderSide(color: Colors.grey[200]!),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        DateFormat('yyyy-MM-dd').format(_selectedDate),
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.chevron_right, size: 28.sp),
                onPressed: () {
                  setState(() {
                    _selectedDate = _selectedDate.add(const Duration(days: 1));
                    _selectedLessonIds.clear();
                  });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildLeaveTypeDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'leave_type'.tr(),
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
          ),
        ),
        SizedBox(height: 10.h),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: DropdownButtonFormField<String>(
            value: _selectedLeaveType,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide.none,
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
            ),
            items: _leaveTypes.map((type) {
              return DropdownMenuItem(
                value: type,
                child: Text(type),
              );
            }).toList(),
            onChanged: (value) {
              if (value != null) {
                setState(() => _selectedLeaveType = value);
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _buildLessonsList(List<StudentLesson> lessons) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'select_lessons'.tr(),
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
          ),
        ),
        SizedBox(height: 10.h),
        if (lessons.isEmpty)
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 30.h),
              child: Text(
                'no_lessons_on_selected_date'.tr(),
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14.sp,
                ),
              ),
            ),
          )
        else
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: lessons.length,
              separatorBuilder: (context, index) => Divider(
                height: 1,
                color: Colors.grey[200],
              ),
              itemBuilder: (context, index) {
                final lesson = lessons[index];
                final isSelected = _selectedLessonIds.contains(lesson.lessonId);

                return CheckboxListTile(
                  title: Text(
                    lesson.className,
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${lesson.startTime.substring(0, 5)} - ${lesson.endTime.substring(0, 5)}',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.grey[600],
                        ),
                      ),
                      Text(
                        '${lesson.classroomName}',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  value: isSelected,
                  onChanged: (bool? value) {
                    setState(() {
                      if (value == true) {
                        _selectedLessonIds.add(lesson.lessonId);
                      } else {
                        _selectedLessonIds.remove(lesson.lessonId);
                      }
                    });
                  },
                );
              },
            ),
          ),
      ],
    );
  }

  Widget _buildReasonField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'leave_reason'.tr(),
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
          ),
        ),
        SizedBox(height: 10.h),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: TextFormField(
            controller: _reasonController,
            decoration: InputDecoration(
              hintText: 'please_enter_leave_reason'.tr(),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide.none,
              ),
              contentPadding: EdgeInsets.all(16.w),
            ),
            maxLines: 4,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please_enter_leave_reason'.tr();
              }
              return null;
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSubmitButton() {
    return BlocConsumer<LeaveCubit, LeaveState>(
      listener: (context, state) {
        if (state.error != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error!.tr()), // 使用 tr() 转换 key
              backgroundColor: Colors.red,
            ),
          );
        } else if (!state.isLoading) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('leave_request_submitted'.tr()),
              backgroundColor: Colors.green,
            ),
          );
          context.pop();
        }
      },
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          height: 50.h,
          child: ElevatedButton(
            onPressed: state.isLoading || _selectedLessonIds.isEmpty
                ? null
                : () {
                    if (_formKey.currentState!.validate()) {
                      final request = LeaveRequest(
                        lessonIds: _selectedLessonIds.toList(),
                        leaveReason: _reasonController.text,
                        leaveType: _selectedLeaveType,
                      );
                      context.read<LeaveCubit>().submitLeaveRequest(request);
                    }
                  },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF304F6B),
              disabledBackgroundColor: Colors.grey[300],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            child: state.isLoading
                ? SizedBox(
                    height: 24.h,
                    width: 24.w,
                    child: const CircularProgressIndicator(color: Colors.white),
                  )
                : Text(
                    'submit'.tr(),
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
          ),
        );
      },
    );
  }
}
