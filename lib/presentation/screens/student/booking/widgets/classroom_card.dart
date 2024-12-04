import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/booking/classroom_model.dart';
import 'package:edutec_hub/data/models/timeslot/classroom_booking_time_slot.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClassroomCard extends StatelessWidget {
  final Classroom classroom;
  final bool isSelected;
  final VoidCallback onTap;

  const ClassroomCard({
    Key? key,
    required this.classroom,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 200.w,
        margin: EdgeInsets.only(right: 16.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: isSelected
                ? Theme.of(context).primaryColor
                : Colors.transparent,
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildClassroomImage(),
            Padding(
              padding: EdgeInsets.all(12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    classroom.classroomName,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    '${classroom.peopleNumber} seats',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 8.h),
                  _buildPriceInfo(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildClassroomImage() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12.r),
        topRight: Radius.circular(12.r),
      ),
      child: Image.network(
        classroom.classroomImage ?? '',
        height: 100.h,
        width: double.infinity,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) => Container(
          height: 100.h,
          color: Colors.grey[200],
          child: Icon(Icons.image, size: 40.sp),
        ),
      ),
    );
  }

  Widget _buildPriceInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'weekday_price'.tr(args: [classroom.weekdayPrice.toString()]),
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.grey[600],
              ),
            ),
            Text(
              'weekend_price'.tr(args: [classroom.weekendPrice.toString()]),
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ClassroomTimeSlotCard extends StatelessWidget {
  final ClassroomTimeSlot timeSlot;
  final VoidCallback onTap;

  const ClassroomTimeSlotCard({
    Key? key,
    required this.timeSlot,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isAvailable = timeSlot.status == ClassroomBookingStatus.available;

    return GestureDetector(
      onTap: isAvailable ? onTap : null,
      child: Container(
        decoration: BoxDecoration(
          color: _getBackgroundColor(timeSlot.status),
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: [
            if (isAvailable)
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              timeSlot.startTime.substring(0, 5), // Format: "HH:mm"
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: isAvailable ? Colors.white : Colors.grey[600],
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              _getStatusText(timeSlot.status).tr(),
              style: TextStyle(
                fontSize: 12.sp,
                color: isAvailable ? Colors.white70 : Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _getBackgroundColor(ClassroomBookingStatus status) {
    switch (status) {
      case ClassroomBookingStatus.available:
        return const Color(0xFF1E3A5F);
      case ClassroomBookingStatus.occupied:
        return Colors.grey[300]!;
    }
  }

  String _getStatusText(ClassroomBookingStatus status) {
    switch (status) {
      case ClassroomBookingStatus.available:
        return 'available';
      case ClassroomBookingStatus.occupied:
        return 'booked';
    }
  }
}
