// utils/booking_utils.dart
import 'package:edutec_hub/data/models/timeslot/time_slot.dart';
import 'package:edutec_hub/data/models/booking/classroom_model.dart';

class BookingUtils {
  /// 根據教室的預訂記錄轉換為時段列表
  static List<TimeSlot> convertBookingsToTimeSlots(
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

    // 轉換為 TimeSlot
    return dateBookings
        .map((booking) => TimeSlot(
              time: booking.startTime,
              status: booking.isOccupied == 1
                  ? TimeSlotStatus.booked
                  : TimeSlotStatus.available,
            ))
        .toList()
      ..sort((a, b) => a.time.compareTo(b.time)); // 按時間排序
  }
}
