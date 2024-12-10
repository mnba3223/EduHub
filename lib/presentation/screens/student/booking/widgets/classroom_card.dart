import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/booking/classroom_model.dart';
import 'package:edutec_hub/data/models/timeslot/classroom_booking_time_slot.dart';
import 'package:edutec_hub/state_management/blocs/booking/student_classroom_booking/classroom_booking_event.dart';
import 'package:edutec_hub/state_management/blocs/booking/student_classroom_booking/student_classroom_booking_bloc.dart';
import 'package:edutec_hub/utils/booking_utils.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

// class ClassroomCard extends StatelessWidget {
//   final Classroom classroom;
//   final bool isSelected;
//   final VoidCallback onTap;

//   const ClassroomCard({
//     Key? key,
//     required this.classroom,
//     required this.isSelected,
//     required this.onTap,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: 200.w,
//         margin: EdgeInsets.only(right: 16.w),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(12.r),
//           border: Border.all(
//             color: isSelected
//                 ? Theme.of(context).primaryColor
//                 : Colors.transparent,
//             width: 2,
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.1),
//               blurRadius: 8,
//               offset: const Offset(0, 2),
//             ),
//           ],
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(12.r),
//                 topRight: Radius.circular(12.r),
//               ),
//               child: SizedBox(
//                 width: double.infinity,
//                 height: 100.h,
//                 child: classroom.classroomImage != null
//                     ? Image.network(
//                         classroom.classroomImage!,
//                         fit: BoxFit.cover,
//                         errorBuilder: (_, __, ___) => _buildPlaceholder(),
//                       )
//                     : _buildPlaceholder(),
//               ),
//             ),
//             Expanded(
//               child: Padding(
//                 padding: EdgeInsets.all(12.w),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Text(
//                       classroom.classroomName,
//                       style: TextStyle(
//                         fontSize: 16.sp,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 4.h),
//                     Text(
//                       '${classroom.peopleNumber} seats',
//                       style: TextStyle(
//                         fontSize: 14.sp,
//                         color: Colors.grey[600],
//                       ),
//                     ),
//                     const Spacer(),
//                     _buildPriceInfo(),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildPlaceholder() {
//     return Container(
//       color: Colors.grey[200],
//       child: Center(
//         child: Icon(Icons.image, size: 40.sp, color: Colors.grey[400]),
//       ),
//     );
//   }

//   Widget _buildPriceInfo() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Text(
//           'weekday_price'.tr(args: [classroom.weekdayPrice.toString()]),
//           style: TextStyle(
//             fontSize: 12.sp,
//             color: Colors.grey[600],
//           ),
//         ),
//         Text(
//           'weekend_price'.tr(args: [classroom.weekendPrice.toString()]),
//           style: TextStyle(
//             fontSize: 12.sp,
//             color: Colors.grey[600],
//           ),
//         ),
//       ],
//     );
//   }
// }

// class ClassroomTimeSlotCard extends StatelessWidget {
//   final ClassroomTimeSlot timeSlot;
//   final VoidCallback onTap;

//   const ClassroomTimeSlotCard({
//     Key? key,
//     required this.timeSlot,
//     required this.onTap,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final isAvailable = timeSlot.status == ClassroomBookingStatus.available;

//     return GestureDetector(
//       onTap: isAvailable ? onTap : null,
//       child: Container(
//         decoration: BoxDecoration(
//           color: _getBackgroundColor(timeSlot.status),
//           borderRadius: BorderRadius.circular(8.r),
//           boxShadow: [
//             if (isAvailable)
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.1),
//                 blurRadius: 4,
//                 offset: const Offset(0, 2),
//               ),
//           ],
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               timeSlot.startTime.substring(0, 5), // Format: "HH:mm"
//               style: TextStyle(
//                 fontSize: 16.sp,
//                 fontWeight: FontWeight.bold,
//                 color: isAvailable ? Colors.white : Colors.grey[600],
//               ),
//             ),
//             SizedBox(height: 4.h),
//             Text(
//               _getStatusText(timeSlot.status).tr(),
//               style: TextStyle(
//                 fontSize: 12.sp,
//                 color: isAvailable ? Colors.white70 : Colors.grey[500],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Color _getBackgroundColor(ClassroomBookingStatus status) {
//     switch (status) {
//       case ClassroomBookingStatus.available:
//         return const Color(0xFF1E3A5F);
//       case ClassroomBookingStatus.occupied:
//         return Colors.grey[300]!;
//     }
//   }

//   String _getStatusText(ClassroomBookingStatus status) {
//     switch (status) {
//       case ClassroomBookingStatus.available:
//         return 'available';
//       case ClassroomBookingStatus.occupied:
//         return 'booked';
//     }
//   }
// }

// class TimeSlotCard extends StatelessWidget {
//   final String startTime;
//   final String endTime;
//   final int availableRooms;
//   final VoidCallback onTap;
//   final bool isSelected;

//   const TimeSlotCard({
//     Key? key,
//     required this.startTime,
//     required this.endTime,
//     required this.availableRooms,
//     required this.onTap,
//     this.isSelected = false,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final isAvailable = availableRooms > 0;

//     return Card(
//       elevation: isAvailable ? 2 : 0,
//       color: isSelected
//           ? Theme.of(context).primaryColor.withOpacity(0.1)
//           : (isAvailable ? Colors.white : Colors.grey[100]),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(8.r),
//         side: isSelected
//             ? BorderSide(color: Theme.of(context).primaryColor, width: 2)
//             : BorderSide.none,
//       ),
//       child: InkWell(
//         onTap: isAvailable ? onTap : null,
//         borderRadius: BorderRadius.circular(8.r),
//         child: Padding(
//           padding: EdgeInsets.all(12.w),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Icon(
//                     Icons.access_time,
//                     size: 16.sp,
//                     color: isAvailable ? Colors.blue.shade700 : Colors.grey,
//                   ),
//                   if (isAvailable)
//                     Container(
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
//                       decoration: BoxDecoration(
//                         color: Colors.blue.shade50,
//                         borderRadius: BorderRadius.circular(12.r),
//                       ),
//                       child: Text(
//                         availableRooms.toString(),
//                         style: TextStyle(
//                           fontSize: 12.sp,
//                           color: Colors.blue.shade700,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                 ],
//               ),
//               SizedBox(height: 8.h),
//               Text(
//                 startTime.substring(0, 5),
//                 style: TextStyle(
//                   fontSize: 14.sp,
//                   fontWeight: FontWeight.bold,
//                   color: isAvailable ? Colors.black87 : Colors.grey,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class AvailableClassroomsSheet extends StatelessWidget {
//   final String selectedTime;
//   final List<Classroom> classrooms;
//   final DateTime selectedDate;

//   const AvailableClassroomsSheet({
//     Key? key,
//     required this.selectedTime,
//     required this.classrooms,
//     required this.selectedDate,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           _buildHeader(context),
//           LimitedBox(
//             maxHeight: MediaQuery.of(context).size.height * 0.6,
//             child: ListView.builder(
//               padding: EdgeInsets.all(16.w),
//               shrinkWrap: true,
//               itemCount: classrooms.length,
//               itemBuilder: (context, index) => _ClassroomItem(
//                 classroom: classrooms[index],
//                 selectedDate: selectedDate,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildHeader(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         SizedBox(height: 12.h),
//         Container(
//           width: 40.w,
//           height: 4.h,
//           decoration: BoxDecoration(
//             color: Colors.grey[300],
//             borderRadius: BorderRadius.circular(2.r),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.all(16.w),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'available_classrooms'.tr(),
//                     style: TextStyle(
//                       fontSize: 18.sp,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   IconButton(
//                     icon: const Icon(Icons.close),
//                     onPressed: () => Navigator.pop(context),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 4.h),
//               Text(
//                 selectedTime.substring(0, 5),
//                 style: TextStyle(
//                   fontSize: 14.sp,
//                   color: Colors.grey[600],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Divider(height: 1),
//       ],
//     );
//   }
// }

// class _ClassroomItem extends StatelessWidget {
//   final Classroom classroom;
//   final DateTime selectedDate;

//   const _ClassroomItem({
//     Key? key,
//     required this.classroom,
//     required this.selectedDate,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final isWeekend = selectedDate.weekday == DateTime.saturday ||
//         selectedDate.weekday == DateTime.sunday;
//     final price = isWeekend ? classroom.weekendPrice : classroom.weekdayPrice;

//     return Card(
//       margin: EdgeInsets.only(bottom: 12.h),
//       child: InkWell(
//         onTap: () {
//           context.read<StudentClassroomBookingBloc>().add(
//                 ClassroomBookingEvent.selectClassroom(classroom: classroom),
//               );
//           Navigator.pop(context);
//           context.push('/booking-info');
//         },
//         child: Padding(
//           padding: EdgeInsets.all(16.w),
//           child: Row(
//             children: [
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       classroom.classroomName,
//                       style: TextStyle(
//                         fontSize: 16.sp,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 8.h),
//                     Row(
//                       children: [
//                         Icon(Icons.people,
//                             size: 16.sp, color: Colors.grey[600]),
//                         SizedBox(width: 4.w),
//                         Text(
//                           '${classroom.peopleNumber} seats',
//                           style: TextStyle(
//                             fontSize: 14.sp,
//                             color: Colors.grey[600],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Text(
//                     'NT\$ ${price.toStringAsFixed(0)}',
//                     style: TextStyle(
//                       fontSize: 18.sp,
//                       fontWeight: FontWeight.bold,
//                       color: Theme.of(context).primaryColor,
//                     ),
//                   ),
//                   SizedBox(height: 8.h),
//                   ElevatedButton(
//                     onPressed: () {
//                       context.read<StudentClassroomBookingBloc>().add(
//                             ClassroomBookingEvent.selectClassroom(
//                                 classroom: classroom),
//                           );
//                       Navigator.pop(context);
//                       context.push('/booking-info');
//                     },
//                     style: ElevatedButton.styleFrom(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 16.w,
//                         vertical: 8.h,
//                       ),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20.r),
//                       ),
//                     ),
//                     child: Text('book_now'.tr()),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class TimeSlotListItem extends StatelessWidget {
//   final String startTime;
//   final String endTime;
//   final int availableRooms;
//   final VoidCallback onTap;
//   final bool isSelected;

//   const TimeSlotListItem({
//     Key? key,
//     required this.startTime,
//     required this.endTime,
//     required this.availableRooms,
//     required this.onTap,
//     this.isSelected = false,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final isAvailable = availableRooms > 0;

//     return Card(
//       margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
//       child: ListTile(
//         onTap: isAvailable ? onTap : null,
//         enabled: isAvailable,
//         leading: Icon(
//           Icons.access_time,
//           color: isAvailable ? Theme.of(context).primaryColor : Colors.grey,
//         ),
//         title: Text(
//           '${startTime.substring(0, 5)} - ${endTime.substring(0, 5)}',
//           style: TextStyle(
//             fontWeight: FontWeight.w500,
//             color: isAvailable ? Colors.black87 : Colors.grey,
//           ),
//         ),
//         trailing: Container(
//           padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
//           decoration: BoxDecoration(
//             color: isAvailable ? Colors.blue.shade50 : Colors.grey.shade100,
//             borderRadius: BorderRadius.circular(16.r),
//           ),
//           child: Text(
//             isAvailable ? '$availableRooms rooms' : 'No rooms',
//             style: TextStyle(
//               fontSize: 12.sp,
//               color: isAvailable ? Colors.blue.shade700 : Colors.grey,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class TimeSlotListItem extends StatelessWidget {
  final String startTime;
  final String endTime;
  final bool isAvailable;
  final VoidCallback onTap;
  final bool isSelected;

  const TimeSlotListItem({
    Key? key,
    required this.startTime,
    required this.endTime,
    required this.isAvailable,
    required this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
        side: isSelected
            ? BorderSide(color: Theme.of(context).primaryColor, width: 2)
            : BorderSide.none,
      ),
      child: ListTile(
        onTap: isAvailable ? onTap : null,
        enabled: isAvailable,
        leading: Icon(
          Icons.access_time,
          color: isAvailable ? Theme.of(context).primaryColor : Colors.grey,
        ),
        title: Text(
          '${startTime.substring(0, 5)} - ${endTime.substring(0, 5)}',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: isAvailable ? Colors.black87 : Colors.grey,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
          decoration: BoxDecoration(
            color: isAvailable ? Colors.green.shade50 : Colors.grey.shade100,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Text(
            isAvailable ? 'available'.tr() : 'booked'.tr(),
            style: TextStyle(
              fontSize: 12.sp,
              color: isAvailable ? Colors.green.shade700 : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}

class BookingConfirmDialog extends StatelessWidget {
  final DateTime selectedDate;
  final String startTime;
  final String endTime;
  final Classroom classroom;

  const BookingConfirmDialog({
    Key? key,
    required this.selectedDate,
    required this.startTime,
    required this.endTime,
    required this.classroom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isWeekend = selectedDate.weekday == DateTime.saturday ||
        selectedDate.weekday == DateTime.sunday;
    final price = isWeekend ? classroom.weekendPrice : classroom.weekdayPrice;

    return AlertDialog(
      title: Text('booking_confirmation'.tr()),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildInfoRow(
            'date'.tr(),
            DateFormat('yyyy-MM-dd').format(selectedDate),
          ),
          SizedBox(height: 8.h),
          _buildInfoRow(
            'time'.tr(),
            '${startTime.substring(0, 5)} - ${endTime.substring(0, 5)}',
          ),
          SizedBox(height: 8.h),
          _buildInfoRow(
            'classroom'.tr(),
            classroom.classroomName,
          ),
          SizedBox(height: 8.h),
          _buildInfoRow(
            'booking_capacity'.tr(),
            '${classroom.peopleNumber} seats',
          ),
          SizedBox(height: 8.h),
          _buildInfoRow(
            'price'.tr(),
            'NT\$ ${price.toStringAsFixed(0)}',
            valueColor: Theme.of(context).primaryColor,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('cancel'.tr()),
        ),
        ElevatedButton(
          onPressed: () {
            // 選擇教室
            context.read<StudentClassroomBookingBloc>().add(
                  ClassroomBookingEvent.selectClassroom(classroom: classroom),
                );
            // 選擇時段
            context.read<StudentClassroomBookingBloc>().add(
                  ClassroomBookingEvent.selectTimeSlot(
                    time: startTime,
                    bookingDate: selectedDate,
                    classroom: classroom.classroomId,
                  ),
                );
            // 創建預約
            context.read<StudentClassroomBookingBloc>().add(
                  ClassroomBookingEvent.createBooking(
                    bookingDate: selectedDate,
                    startTime: startTime,
                    endTime: endTime,
                    classroom: classroom,
                  ),
                );
            Navigator.pop(context);
          },
          child: Text('confirm'.tr()),
        ),
      ],
    );
  }

  Widget _buildInfoRow(String label, String value, {Color? valueColor}) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 14.sp,
          ),
        ),
        SizedBox(width: 8.w),
        Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
            color: valueColor ?? Colors.black87,
          ),
        ),
      ],
    );
  }
}

class RoomSelectionDialog extends StatelessWidget {
  final List<Classroom> rooms;
  final DateTime selectedDate;
  final String startTime;
  final String endTime;

  const RoomSelectionDialog({
    Key? key,
    required this.rooms,
    required this.selectedDate,
    required this.startTime,
    required this.endTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isWeekend = selectedDate.weekday == DateTime.saturday ||
        selectedDate.weekday == DateTime.sunday;

    return Builder(builder: (context) {
      return AlertDialog(
        title: Text(
          'select_classroom'.tr(),
          style: TextStyle(fontSize: 18.sp),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${startTime.substring(0, 5)} - ${endTime.substring(0, 5)}',
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey[600],
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 16.h),
            ...rooms.map((room) => _buildRoomItem(context, room, isWeekend)),
          ],
        ),
      );
    });
  }

  Widget _buildRoomItem(BuildContext context, Classroom room, bool isWeekend) {
    final price = isWeekend ? room.weekendPrice : room.weekdayPrice;

    return Card(
      margin: EdgeInsets.only(bottom: 8.h),
      child: ListTile(
        onTap: () {
          Navigator.pop(context); // 關閉選擇對話框
          showDialog(
            context: context,
            builder: (dialogContext) => BlocProvider.value(
              value: context.read<StudentClassroomBookingBloc>(),
              child: BookingConfirmDialog(
                selectedDate: selectedDate,
                startTime: startTime,
                endTime: endTime,
                classroom: room,
              ),
            ),
          );
        },
        title: Text(
          room.classroomName,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
          ),
        ),
        subtitle: Row(
          children: [
            Icon(Icons.people, size: 16.sp, color: Colors.grey[600]),
            SizedBox(width: 4.w),
            Text(
              '${room.peopleNumber} seats',
              style: TextStyle(fontSize: 14.sp),
            ),
          ],
        ),
        trailing: Text(
          'NT\$ ${price.toStringAsFixed(0)}',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}

class TimeSlotBottomSheet extends StatelessWidget {
  final Classroom classroom;
  final DateTime selectedDate;

  const TimeSlotBottomSheet({
    Key? key,
    required this.classroom,
    required this.selectedDate,
  }) : super(key: key);
  // 修改时间格式化方法
  String _formatTimeString(String timeString) {
    // 确保时间格式为 "HH:mm:00"
    if (!timeString.endsWith(":00")) {
      timeString = "$timeString:00";
    }
    return timeString;
  }

  @override
  Widget build(BuildContext context) {
    // 直接使用 classroom 的 availableTimeSlots
    final timeSlots = classroom.availableTimeSlots ?? [];
    final isWeekend = selectedDate.weekday == DateTime.saturday ||
        selectedDate.weekday == DateTime.sunday;
    final price = isWeekend ? classroom.weekendPrice : classroom.weekdayPrice;

    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildHeader(context),
          _buildClassroomInfo(context, price),
          Expanded(
            child: timeSlots.isEmpty
                ? Center(
                    child: Text(
                      'no_available_slots'.tr(),
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 16.sp,
                      ),
                    ),
                  )
                : ListView.builder(
                    padding: EdgeInsets.all(16.w),
                    itemCount: timeSlots.length,
                    itemBuilder: (context, index) {
                      final startTime = timeSlots[index];
                      // 计算结束时间（假设每个时段为2小时）
                      final endTime = _calculateEndTime(startTime);

                      return TimeSlotListItem(
                        startTime: startTime,
                        endTime: endTime,
                        isAvailable:
                            _isTimeSlotAvailable(startTime, selectedDate),
                        isSelected: false,
                        onTap: () {
                          Navigator.pop(context);
                          _showBookingConfirmDialog(
                            context,
                            selectedDate,
                            startTime,
                            endTime,
                            classroom,
                          );
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }

  // 计算结束时间
  String _calculateEndTime(String startTime) {
    final timeParts = startTime.split(':');
    final hour = int.parse(timeParts[0]);
    final minute = int.parse(timeParts[1]);

    final startDateTime = DateTime(2024, 1, 1, hour, minute);
    final endDateTime = startDateTime.add(const Duration(hours: 2));

    return '${endDateTime.hour.toString().padLeft(2, '0')}:${endDateTime.minute.toString().padLeft(2, '0')}:00';
  }

  // 检查时间段是否可用
  bool _isTimeSlotAvailable(String startTime, DateTime date) {
    // 检查是否有冲突的预订
    final hasConflict = classroom.bookings?.any((booking) =>
            booking.bookingDate.year == date.year &&
            booking.bookingDate.month == date.month &&
            booking.bookingDate.day == date.day &&
            booking.startTime == startTime &&
            booking.isOccupied == 1) ??
        false;

    return !hasConflict;
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[200]!)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                classroom.classroomName,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          SizedBox(height: 4.h),
          Text(
            DateFormat('yyyy-MM-dd').format(selectedDate),
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildClassroomInfo(BuildContext context, double price) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        border: Border(bottom: BorderSide(color: Colors.grey[200]!)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.people, size: 16.sp, color: Colors.grey[600]),
              SizedBox(width: 4.w),
              Text(
                '${classroom.peopleNumber} seats',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
          Text(
            'NT\$ ${price.toStringAsFixed(0)}',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }

  void _showBookingConfirmDialog(
    BuildContext context,
    DateTime selectedDate,
    String startTime,
    String endTime,
    Classroom classroom,
  ) {
    final formattedDate = DateTime.utc(
      selectedDate.year,
      selectedDate.month,
      selectedDate.day,
    );
    showDialog(
      context: context,
      builder: (dialogContext) => BlocProvider.value(
        value: context.read<StudentClassroomBookingBloc>(),
        child: BookingConfirmDialog(
          selectedDate: formattedDate,
          startTime: _formatTimeString(startTime),
          endTime: _formatTimeString(endTime),
          classroom: classroom,
        ),
      ),
    );
  }
}
