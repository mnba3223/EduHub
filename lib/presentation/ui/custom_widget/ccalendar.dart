import 'package:edutec_hub/presentation/ui/button/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

class ReusableCalendar extends StatefulWidget {
  final DateTime? selectedDay;
  final Function(DateTime, DateTime) onDaySelected;

  const ReusableCalendar({
    Key? key,
    this.selectedDay,
    required this.onDaySelected,
  }) : super(key: key);

  @override
  _ReusableCalendarState createState() => _ReusableCalendarState();
}

class _ReusableCalendarState extends State<ReusableCalendar> {
  CalendarFormat _calendarFormat = CalendarFormat.week;
  late DateTime _focusedDay;

  @override
  void initState() {
    super.initState();
    _focusedDay = widget.selectedDay ?? DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildCalendarFormatToggle(),
        TableCalendar(
          firstDay: DateTime.utc(2021, 1, 1),
          lastDay: DateTime.utc(2030, 12, 31),
          focusedDay: _focusedDay,
          calendarFormat: _calendarFormat,
          selectedDayPredicate: (day) => isSameDay(widget.selectedDay, day),
          onDaySelected: (
            selectedDay,
            focusedDay,
          ) {
            widget.onDaySelected(selectedDay, focusedDay);
            setState(() {
              _focusedDay = focusedDay;
            });
          },
          onFormatChanged: (format) {
            setState(() {
              _calendarFormat = format;
            });
          },
          calendarStyle: CalendarStyle(
            defaultTextStyle: TextStyle(color: Colors.black),
            weekendTextStyle: TextStyle(color: Colors.red),
            selectedDecoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            selectedTextStyle: TextStyle(color: Colors.white),
            todayDecoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.5),
              shape: BoxShape.circle,
            ),
          ),
          headerStyle: HeaderStyle(
            formatButtonVisible: false,
            titleCentered: true,
          ),
        ),
      ],
    );
  }

  Widget _buildCalendarFormatToggle() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CalendarFormatButton(
            format: CalendarFormat.month,
            currentFormat: _calendarFormat,
            text: 'month'.tr(),
            onFormatChanged: (format) {
              setState(() {
                _calendarFormat = format;
              });
            },
          ),
          SizedBox(width: 16.w),
          CalendarFormatButton(
            format: CalendarFormat.week,
            currentFormat: _calendarFormat,
            text: 'week'.tr(),
            onFormatChanged: (format) {
              setState(() {
                _calendarFormat = format;
              });
            },
          ),
          SizedBox(width: 16.w),
          CalendarFormatButton(
            format: CalendarFormat.twoWeeks,
            currentFormat: _calendarFormat,
            text: 'two_weeks'.tr(),
            onFormatChanged: (format) {
              setState(() {
                _calendarFormat = format;
              });
            },
          ),
        ],
      ),
    );
  }
}
