class TimeSlot {
  final String time;
  final TimeSlotStatus status;

  TimeSlot({required this.time, required this.status});
}

enum TimeSlotStatus { available, booked, selectMultiple, unavailable }
