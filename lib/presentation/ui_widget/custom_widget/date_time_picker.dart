import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

Future<DateTime?> showCustomDateTimePicker(BuildContext context) async {
  final date = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime.now(),
    lastDate: DateTime.now().add(const Duration(days: 365)),
  );

  if (date == null) return null;

  final time = await showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(),
  );

  if (time == null) return null;

  return DateTime(
    date.year,
    date.month,
    date.day,
    time.hour,
    time.minute,
  );
}

// 格式化日期時間的工具方法
String formatDateTime(DateTime? dateTime) {
  if (dateTime == null) return 'select_date'.tr();
  return DateFormat('yyyy/MM/dd HH:mm').format(dateTime);
}
