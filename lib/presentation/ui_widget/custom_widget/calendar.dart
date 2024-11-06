import 'package:edutec_hub/presentation/ui_widget/button/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

class ReusableCalendar extends StatefulWidget {
  final DateTime? selectedDay;
  final Function(DateTime, DateTime) onDaySelected;
  final MarkerBuilder? markerBuilder; // 修正類

  const ReusableCalendar({
    Key? key,
    this.selectedDay,
    required this.onDaySelected,
    this.markerBuilder,
  }) : super(key: key);

  @override
  State<ReusableCalendar> createState() => _ReusableCalendarState();
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
          onDaySelected: (selectedDay, focusedDay) {
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
            defaultTextStyle: const TextStyle(color: Colors.black),
            weekendTextStyle: const TextStyle(color: Colors.red),
            selectedDecoration: BoxDecoration(
              color: const Color(0xFFE4B355),
              shape: BoxShape.circle,
            ),
            selectedTextStyle: const TextStyle(color: Colors.white),
            todayDecoration: BoxDecoration(
              color: const Color(0xFFE4B355).withOpacity(0.5),
              shape: BoxShape.circle,
            ),
          ),
          headerStyle: const HeaderStyle(
            formatButtonVisible: false,
            titleCentered: true,
          ),
          calendarBuilders: CalendarBuilders(
            markerBuilder: widget.markerBuilder,
          ),
        ),
      ],
    );
  }

  Widget _buildCalendarFormatToggle() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildFormatButton(CalendarFormat.month, 'month'.tr()),
          const SizedBox(width: 16),
          _buildFormatButton(CalendarFormat.week, 'week'.tr()),
          const SizedBox(width: 16),
          _buildFormatButton(CalendarFormat.twoWeeks, 'two_weeks'.tr()),
        ],
      ),
    );
  }

  Widget _buildFormatButton(CalendarFormat format, String text) {
    final isSelected = _calendarFormat == format;
    return TextButton(
      onPressed: () => setState(() => _calendarFormat = format),
      style: TextButton.styleFrom(
        backgroundColor: isSelected ? Colors.blue.shade100 : null,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.blue.shade700 : Colors.grey,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
