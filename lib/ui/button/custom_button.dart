import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isSelected;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        // primary: isSelected ? Colors.blue : Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
      child: Text(text),
    );
  }
}

class CalendarFormatButton extends StatelessWidget {
  final CalendarFormat format;
  final CalendarFormat currentFormat;
  final String text;
  final ValueChanged<CalendarFormat> onFormatChanged;

  const CalendarFormatButton({
    Key? key,
    required this.format,
    required this.currentFormat,
    required this.text,
    required this.onFormatChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: text,
      onPressed: () => onFormatChanged(format),
      isSelected: currentFormat == format,
    );
  }
}
