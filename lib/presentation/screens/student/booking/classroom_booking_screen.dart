import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/booking/booking_event.dart';
import 'package:edutec_hub/data/models/booking/classroom_model.dart';
import 'package:edutec_hub/data/models/timeslot/classroom_booking_time_slot.dart';

import 'package:edutec_hub/presentation/screens/student/booking/widgets/classroom_card.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/calendar.dart';
import 'package:edutec_hub/state_management/blocs/booking/student_classroom_booking/classroom_booking_event.dart';
import 'package:edutec_hub/state_management/blocs/booking/student_classroom_booking/student_classroom_booking_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class StudentBookingScreen extends StatelessWidget {
  const StudentBookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<StudentClassroomBookingBloc, ClassroomBookingState>(
        listener: (context, state) {
          if (state.error != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error!)),
            );
          }
        },
        child: Column(
          children: [
            _buildTopBar(context),
            Expanded(
              child: BlocBuilder<StudentClassroomBookingBloc,
                  ClassroomBookingState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  return CustomScrollView(
                    slivers: [
                      _buildCalendarSection(context, state),
                      _buildClassroomSection(context, state),
                      _buildTimeSlotsSection(context, state),
                    ],
                  );
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
          padding: EdgeInsets.fromLTRB(20.w, 40.h, 20.w, 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 24.sp),
              Expanded(
                child: Center(
                  child: Text(
                    'course_management'.tr(),
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.history,
                  color: Colors.white70,
                  size: 24.sp,
                ),
                onPressed: () => context.push('/booking-history'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCalendarSection(
      BuildContext context, ClassroomBookingState state) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'select_date'.tr(),
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.h),
            ReusableCalendar(
              selectedDay: state.selectedDate,
              onDaySelected: (selectedDay, focusedDay) {
                context.read<StudentClassroomBookingBloc>().add(
                      ClassroomBookingEvent.selectDate(date: selectedDay),
                    );
              },
              markerBuilder: (context, date, events) {
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildClassroomSection(
      BuildContext context, ClassroomBookingState state) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              'classroom'.tr(),
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8.h),
          SizedBox(
            height: 200.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              itemCount: state.classrooms.length,
              itemBuilder: (context, index) {
                final classroom = state.classrooms[index];
                final isSelected = state.selectedClassroom?.classroomId ==
                    classroom.classroomId;

                return ClassroomCard(
                  classroom: classroom,
                  isSelected: isSelected,
                  onTap: () => context.read<StudentClassroomBookingBloc>().add(
                        ClassroomBookingEvent.selectClassroom(
                            classroom: classroom),
                      ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeSlotsSection(
      BuildContext context, ClassroomBookingState state) {
    if (state.selectedDate == null || state.selectedClassroom == null) {
      return SliverToBoxAdapter(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Text(
              'Please select date and classroom first'.tr(),
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16.sp,
              ),
            ),
          ),
        ),
      );
    }

    // 獲取選定日期的預訂記錄
    final bookings = state.selectedClassroom?.bookings
            ?.where((booking) =>
                booking.bookingDate.year == state.selectedDate!.year &&
                booking.bookingDate.month == state.selectedDate!.month &&
                booking.bookingDate.day == state.selectedDate!.day)
            .toList() ??
        [];

    if (bookings.isEmpty) {
      return SliverToBoxAdapter(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Text(
              'No available time slots for selected date'.tr(),
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16.sp,
              ),
            ),
          ),
        ),
      );
    }

    // 根據開始時間排序
    bookings.sort((a, b) => a.startTime.compareTo(b.startTime));

    return SliverPadding(
      padding: EdgeInsets.all(16.w),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final booking = bookings[index];
            return ClassroomTimeSlotCard(
              timeSlot: ClassroomTimeSlot(
                startTime: booking.startTime,
                endTime: booking.endTime,
                status: booking.isOccupied == 1
                    ? ClassroomBookingStatus.occupied
                    : ClassroomBookingStatus.available,
              ),
              onTap: () {
                if (booking.isOccupied == 0) {
                  context.read<StudentClassroomBookingBloc>().add(
                        ClassroomBookingEvent.selectTimeSlot(
                          time: booking.startTime,
                          bookingDate: state.selectedDate!,
                          classroom: state.selectedClassroom!.classroomId,
                        ),
                      );
                  context.push('/booking-info');
                }
              },
            );
          },
          childCount: bookings.length,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.5,
          mainAxisSpacing: 12.h,
          crossAxisSpacing: 12.w,
        ),
      ),
    );
  }
}
