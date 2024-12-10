import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/booking/classroom_model.dart';
import 'package:edutec_hub/presentation/screens/student/booking/widgets/classroom_card.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/calendar.dart';
import 'package:edutec_hub/state_management/blocs/booking/student_classroom_booking/classroom_booking_event.dart';
import 'package:edutec_hub/state_management/blocs/booking/student_classroom_booking/student_classroom_booking_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class StudentClassroomBookingScreen extends StatefulWidget {
  const StudentClassroomBookingScreen({Key? key}) : super(key: key);

  @override
  State<StudentClassroomBookingScreen> createState() =>
      _StudentClassroomBookingScreenState();
}

class _StudentClassroomBookingScreenState
    extends State<StudentClassroomBookingScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      context.read<StudentClassroomBookingBloc>().add(LoadClassrooms());
    });
  }

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
            BlocBuilder<StudentClassroomBookingBloc, ClassroomBookingState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const Expanded(
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
                return Expanded(
                  child: Column(
                    children: [
                      _buildDateSelection(context, state),
                      _buildClassroomList(context, state),
                    ],
                  ),
                );
              },
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
                    'classroom_booking'.tr(),
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.history, color: Colors.white70, size: 24.sp),
                onPressed: () =>
                    context.push('/student-classroom-booking/history'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDateSelection(
      BuildContext context, ClassroomBookingState state) {
    return ReusableCalendar(
      selectedDay: state.selectedDate,
      onDaySelected: (selectedDay, focusedDay) {
        context.read<StudentClassroomBookingBloc>().add(
              ClassroomBookingEvent.selectDate(date: selectedDay),
            );
      },
      markerBuilder: (context, date, events) {
        final availableCount = _getAvailableRoomsCount(date, state.classrooms);
        if (availableCount > 0) {
          return Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(4.r),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Text(
                availableCount.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        }
        return null;
      },
    );
  }

  Widget _buildClassroomList(
      BuildContext context, ClassroomBookingState state) {
    if (state.selectedDate == null) {
      return Expanded(
        child: Center(
          child: Text(
            'select_date_first'.tr(),
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 16.sp,
            ),
          ),
        ),
      );
    }

    final availableClassrooms = _getAvailableClassroomsForDate(
      state.selectedDate!,
      state.classrooms,
    );

    if (availableClassrooms.isEmpty) {
      return Expanded(
        child: Center(
          child: Text(
            'no_available_classrooms'.tr(),
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 16.sp,
            ),
          ),
        ),
      );
    }

    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        itemCount: availableClassrooms.length,
        itemBuilder: (context, index) {
          final classroom = availableClassrooms[index];
          final isWeekend = state.selectedDate!.weekday == DateTime.saturday ||
              state.selectedDate!.weekday == DateTime.sunday;
          final price =
              isWeekend ? classroom.weekendPrice : classroom.weekdayPrice;

          return ListTile(
            onTap: () => _showTimeSlotBottomSheet(
              context,
              classroom,
              state.selectedDate!,
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
            title: Text(
              classroom.classroomName,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              '${classroom.peopleNumber} seats',
              style: TextStyle(fontSize: 14.sp),
            ),
            trailing: Text(
              'NT\$ ${price.toStringAsFixed(0)}',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
          );
        },
      ),
    );
  }

  void _showTimeSlotBottomSheet(
    BuildContext context,
    Classroom classroom,
    DateTime selectedDate,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      ),
      builder: (context) => TimeSlotBottomSheet(
        classroom: classroom,
        selectedDate: selectedDate,
      ),
    );
  }

  // 新的获取可用教室方法
  List<Classroom> _getAvailableClassroomsForDate(
    DateTime date,
    List<Classroom> classrooms,
  ) {
    return classrooms.where((classroom) {
      // 检查当天是否有冲突的预订
      final hasConflict = classroom.bookings?.any((booking) =>
              booking.bookingDate.year == date.year &&
              booking.bookingDate.month == date.month &&
              booking.bookingDate.day == date.day &&
              booking.isOccupied == 1) ??
          false;

      // 如果没有冲突且有可用时间段，则该教室可用
      return !hasConflict &&
          (classroom.availableTimeSlots?.isNotEmpty ?? false);
    }).toList();
  }

  // 修改后的获取可用房间数量方法
  int _getAvailableRoomsCount(DateTime date, List<Classroom> classrooms) {
    return _getAvailableClassroomsForDate(date, classrooms).length;
  }
}
