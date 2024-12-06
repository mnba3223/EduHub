import 'dart:developer';
import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/booking/booking_event.dart';
import 'package:edutec_hub/data/models/booking/classroom_model.dart';
import 'package:edutec_hub/data/models/timeslot/classroom_booking_time_slot.dart';
import 'package:edutec_hub/data/repositories/booking/student_classroom_booking_repository.dart';

import 'package:edutec_hub/presentation/screens/student/booking/widgets/classroom_card.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/calendar.dart';
import 'package:edutec_hub/state_management/blocs/booking/student_classroom_booking/classroom_booking_event.dart';
import 'package:edutec_hub/state_management/blocs/booking/student_classroom_booking/student_classroom_booking_bloc.dart';
import 'package:edutec_hub/utils/booking_utils.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class StudentBookingScreen extends StatefulWidget {
  const StudentBookingScreen({Key? key}) : super(key: key);

  @override
  State<StudentBookingScreen> createState() => _StudentBookingScreenState();
}

class _StudentBookingScreenState extends State<StudentBookingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    ///loaddata
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
                onPressed: () => context.push('/booking-history'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDateSelection(
      BuildContext context, ClassroomBookingState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Padding(
        //   padding: EdgeInsets.all(16.w),
        //   child: Container(
        //     padding: EdgeInsets.all(12.w),
        //     decoration: BoxDecoration(
        //       color: Colors.blue.shade50,
        //       borderRadius: BorderRadius.circular(8.r),
        //     ),
        //     child: Row(
        //       children: [
        //         Icon(Icons.calendar_today,
        //             size: 20.sp, color: Colors.blue.shade700),
        //         SizedBox(width: 8.w),
        //         Text(
        //           DateFormat('yyyy-MM-dd')
        //               .format(state.selectedDate ?? DateTime.now()),
        //           style: TextStyle(
        //             fontSize: 16.sp,
        //             fontWeight: FontWeight.w500,
        //             color: Colors.blue.shade700,
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        ReusableCalendar(
          selectedDay: state.selectedDate,
          onDaySelected: (selectedDay, focusedDay) {
            context.read<StudentClassroomBookingBloc>().add(
                  ClassroomBookingEvent.selectDate(date: selectedDay),
                );
          },
          markerBuilder: (context, date, events) {
            final availableCount =
                _getAvailableRoomsCount(date, state.classrooms);
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
        ),
      ],
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

    final availableClassrooms = BookingUtils.getAvailableClassrooms(
      state.classrooms,
      state.selectedDate!,
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

  // Widget _buildAvailableTimeSlots(
  //     BuildContext context, ClassroomBookingState state) {
  //   if (state.selectedClassroom == null) {
  //     return const SizedBox.shrink();
  //   }

  //   final availableTimeSlots = BookingUtils.getAvailableTimeSlots(
  //     state.selectedClassroom!,
  //     state.selectedDate!,
  //   );

  //   if (availableTimeSlots.isEmpty) {
  //     return Expanded(
  //       child: Center(
  //         child: Text(
  //           'no_available_slots'.tr(),
  //           style: TextStyle(
  //             color: Colors.grey[600],
  //             fontSize: 16.sp,
  //           ),
  //         ),
  //       ),
  //     );
  //   }

  //   return Expanded(
  //     child: ListView.builder(
  //       padding: EdgeInsets.all(16.w),
  //       itemCount: availableTimeSlots.length,
  //       itemBuilder: (context, index) {
  //         final timeSlot = availableTimeSlots[index];

  //         return TimeSlotListItem(
  //           startTime: timeSlot.startTime ?? "",
  //           endTime: timeSlot.endTime ?? "",
  //           isAvailable: timeSlot.status == ClassroomBookingStatus.available,
  //           isSelected: state.selectedTimeSlot == timeSlot.startTime,
  //           onTap: () {
  //             if (timeSlot.status == ClassroomBookingStatus.available) {
  //               _showBookingConfirmDialog(
  //                 context,
  //                 state.selectedDate!,
  //                 timeSlot.startTime ?? "",
  //                 timeSlot.endTime ?? "",
  //                 state.selectedClassroom!,
  //               );
  //             }
  //           },
  //         );
  //       },
  //     ),
  //   );
  // }

  // void _showBookingConfirmDialog(BuildContext context, DateTime selectedDate,
  //     String startTime, String endTime, Classroom classroom) {
  //   showDialog(
  //     context: context,
  //     builder: (dialogContext) => BlocProvider.value(
  //       value: context.read<StudentClassroomBookingBloc>(),
  //       child: BookingConfirmDialog(
  //         selectedDate: selectedDate,
  //         startTime: startTime,
  //         endTime: endTime,
  //         classroom: classroom,
  //       ),
  //     ),
  //   );
  // }

  // void _showRoomSelectionDialog(
  //   BuildContext context,
  //   List<Classroom> rooms,
  //   DateTime selectedDate,
  //   String startTime,
  //   String endTime,
  // ) {
  //   showDialog(
  //     context: context,
  //     builder: (dialogContext) => BlocProvider.value(
  //       value: context.read<StudentClassroomBookingBloc>(),
  //       child: RoomSelectionDialog(
  //         rooms: rooms,
  //         selectedDate: selectedDate,
  //         startTime: startTime,
  //         endTime: endTime,
  //       ),
  //     ),
  //   );
  // }

  List<ClassroomTimeSlot> _getAvailableTimeSlotsForDate(
    DateTime date,
    List<Classroom> classrooms,
  ) {
    final Set<String> timeSlotKeys = {};
    final List<ClassroomTimeSlot> timeSlots = [];

    for (final classroom in classrooms) {
      for (final booking in classroom.bookings ?? []) {
        if (booking.bookingDate.year == date.year &&
            booking.bookingDate.month == date.month &&
            booking.bookingDate.day == date.day &&
            booking.startTime != null &&
            booking.endTime != null) {
          final timeKey = '${booking.startTime}_${booking.endTime}';
          if (!timeSlotKeys.contains(timeKey)) {
            timeSlotKeys.add(timeKey);
            timeSlots.add(ClassroomTimeSlot(
              startTime: booking.startTime,
              endTime: booking.endTime,
              status: ClassroomBookingStatus.available,
            ));
          }
        }
      }
    }

    timeSlots.sort((a, b) => (a.startTime ?? '').compareTo(b.startTime ?? ''));
    return timeSlots;
  }

  List<Classroom> _getAvailableRooms(
    DateTime date,
    String? startTime,
    String? endTime,
    List<Classroom> classrooms,
  ) {
    if (startTime == null || endTime == null) {
      return [];
    }

    return classrooms.where((classroom) {
      // 找出這個教室在指定日期和時段的預訂
      final bookingExists = classroom.bookings?.any((booking) =>
          booking.bookingDate.year == date.year &&
          booking.bookingDate.month == date.month &&
          booking.bookingDate.day == date.day &&
          booking.startTime == startTime &&
          booking.endTime == endTime &&
          booking.isOccupied == 0);

      // 如果有預訂且未被佔用，返回 true
      return bookingExists ?? false;
    }).toList();
  }

  int _getAvailableRoomsCount(DateTime date, List<Classroom> classrooms) {
    final timeSlots = _getAvailableTimeSlotsForDate(date, classrooms);
    if (timeSlots.isEmpty) return 0;

    final availableCounts = timeSlots.map((slot) {
      if (slot.startTime == null || slot.endTime == null) {
        return 0;
      }
      return _getAvailableRooms(date, slot.startTime, slot.endTime, classrooms)
          .length;
    });

    if (availableCounts.isEmpty) return 0;
    return availableCounts.reduce(max);
  }
}
