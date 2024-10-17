import 'package:edutec_hub/ui/bar/top_bar.dart';
import 'package:edutec_hub/ui/custom_widget/ccalendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:easy_localization/easy_localization.dart';

class StudentBookingScreen extends StatefulWidget {
  @override
  _StudentBookingScreenState createState() => _StudentBookingScreenState();
}

class _StudentBookingScreenState extends State<StudentBookingScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.week;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  int selectedClassroom = 1;

  // Mock data for bookings
  Map<DateTime, List<TimeSlot>> mockBookings = {};

  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;
    generateMockData();
  }

  void generateMockData() {
    final random = DateTime.now().millisecondsSinceEpoch;
    for (int i = -10; i < 10; i++) {
      DateTime date = DateTime.now().add(Duration(days: i));
      List<TimeSlot> slots = [];
      for (int hour = 14; hour < 20; hour++) {
        TimeSlot slot = TimeSlot(
          time: '${hour.toString().padLeft(2, '0')}:00',
          status: _getRandomStatus(random + i + hour),
        );
        slots.add(slot);
      }
      mockBookings[DateTime(date.year, date.month, date.day)] = slots;
    }
  }

  String _getRandomStatus(int seed) {
    switch (seed % 4) {
      case 0:
        return 'booked'.tr();
      case 1:
        return 'available'.tr();
      case 2:
        return 'select_multiple'.tr();
      default:
        return 'unavailable'.tr();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(12, 0, 0, 0),
      body: Column(
        children: [
          _buildTopBar(),
          ReusableCalendar(
            selectedDay: _selectedDay,
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },
          ),
          //  _buildCalendarFormatToggle(),
          // TableCalendar(
          //   firstDay: DateTime.utc(2021, 1, 1),
          //   lastDay: DateTime.utc(2030, 12, 31),
          //   focusedDay: _focusedDay,
          //   calendarFormat: _calendarFormat,
          //   selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
          //   onDaySelected: (
          //     selectedDay,
          //     focusedDay,
          //   ) {
          //     setState(() {
          //       _selectedDay = selectedDay;
          //       _focusedDay = focusedDay;
          //     });
          //   },
          //   onFormatChanged: (format) {
          //     setState(() {
          //       _calendarFormat = format;
          //     });
          //   },
          //   calendarStyle: CalendarStyle(
          //     defaultTextStyle: TextStyle(color: Colors.black),
          //     weekendTextStyle: TextStyle(color: Colors.red),
          //     selectedDecoration: BoxDecoration(
          //       color: Colors.blue,
          //       shape: BoxShape.circle,
          //     ),
          //     selectedTextStyle: TextStyle(color: Colors.white),
          //     todayDecoration: BoxDecoration(
          //       color: Colors.blue.withOpacity(0.5),
          //       shape: BoxShape.circle,
          //     ),
          //   ),
          //   headerStyle: HeaderStyle(
          //     formatButtonVisible: false,
          //     titleCentered: true,
          //   ),
          // ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildClassroomOption('classroom_1'.tr(), 1),
              _buildClassroomOption('classroom_2'.tr(), 2),
              _buildClassroomOption('classroom_3'.tr(), 3),
            ],
          ),
          SizedBox(height: 16.h),
          Expanded(
            child: ListView(
              children: _buildTimeSlots(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopBar() {
    return FixedHeightSmoothTopBarV2(
      height: 130.h,
      // ellipticalRadius: 30.r,
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(20.w, 40.h, 20.w, 20.h),
          child: Column(
            children: [
              Center(
                child: Text(
                  'course_management'.tr(),
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildClassroomOption(String text, int number) {
    final isSelected = selectedClassroom == number;
    return GestureDetector(
      onTap: () => setState(() => selectedClassroom = number),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(20.r),
          color: isSelected ? Colors.blue : Colors.transparent,
        ),
        child: Text(
          text,
          style: TextStyle(color: isSelected ? Colors.white : Colors.blue),
        ),
      ),
    );
  }

  List<Widget> _buildTimeSlots() {
    if (_selectedDay == null) return [];

    DateTime keyDate =
        DateTime(_selectedDay!.year, _selectedDay!.month, _selectedDay!.day);
    List<TimeSlot> slots = mockBookings[keyDate] ?? [];
    return slots.map((slot) => _buildTimeSlot(slot.time, slot.status)).toList();
  }

  Widget _buildTimeSlot(String time, String status) {
    Color color;
    if (status == 'booked'.tr()) {
      color = Colors.grey;
    } else if (status == 'available'.tr()) {
      color = Color(0xFF1E3A5F);
    } else if (status == 'select_multiple'.tr()) {
      color = Colors.brown;
    } else if (status == 'unavailable'.tr()) {
      color = Colors.grey;
    } else {
      color = Colors.grey;
    }

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      child: Row(
        children: [
          Text(time, style: TextStyle(color: Colors.grey)),
          SizedBox(width: 16.w),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Center(
                child: Text(status.tr(), style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TimeSlot {
  final String time;
  final String status;

  TimeSlot({required this.time, required this.status});
}
