// utils/booking_utils.dart
import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/timeslot/classroom_booking_time_slot.dart';

import 'package:edutec_hub/data/models/booking/classroom_model.dart';

class BookingUtils {
  /// 根據教室的預訂記錄轉換為時段列表
  static List<ClassroomTimeSlot> getAvailableTimeSlots(
    Classroom classroom,
    DateTime selectedDate,
  ) {
    final bookings = classroom.bookings ?? [];

    // 篩選選定日期的預訂
    final dateBookings = bookings
        .where((booking) =>
            booking.bookingDate.year == selectedDate.year &&
            booking.bookingDate.month == selectedDate.month &&
            booking.bookingDate.day == selectedDate.day)
        .toList();

    // 轉換為 ClassroomTimeSlot
    List<ClassroomTimeSlot> timeSlots = dateBookings.map((booking) {
      return ClassroomTimeSlot.fromBooking(booking);
    }).toList();

    // 按時間排序
    timeSlots.sort((a, b) => (a.startTime ?? '').compareTo(b.startTime ?? ''));

    return timeSlots;
  }

  /// 獲取特定日期有可用時段的教室列表
  static List<Classroom> getAvailableClassrooms(
    List<Classroom> classrooms,
    DateTime selectedDate,
  ) {
    return classrooms.where((classroom) {
      return classroom.bookings?.any((booking) =>
              booking.bookingDate.year == selectedDate.year &&
              booking.bookingDate.month == selectedDate.month &&
              booking.bookingDate.day == selectedDate.day &&
              booking.isOccupied == 0 &&
              booking.startTime != null &&
              booking.endTime != null) ??
          false;
    }).toList();
  }

  /// 格式化時間區間顯示
  static String formatTimeRange(String? startTime, String? endTime) {
    if (startTime == null || endTime == null) {
      return 'time_not_available'.tr();
    }
    return '${startTime.substring(0, 5)} - ${endTime.substring(0, 5)}';
  }

  /// 檢查時段是否可用
  static bool isTimeSlotAvailable(ClassroomTimeSlot slot) {
    return slot.status == ClassroomBookingStatus.available &&
        slot.startTime != null &&
        slot.endTime != null;
  }

  static convertBookingsToTimeSlots(Classroom classroom, DateTime dateTime) {}
}
