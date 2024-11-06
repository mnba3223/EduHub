import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/calendar.dart';

// Attendance Status Enum
enum AttendanceStatus { present, absent, late, unknown }

// Attendance Record Model
class AttendanceRecord {
  final DateTime date;
  final AttendanceStatus status;
  final String? note;

  AttendanceRecord({
    required this.date,
    required this.status,
    this.note,
  });
}

// Attendance Screen
class StudentAttendanceScreen extends StatefulWidget {
  const StudentAttendanceScreen({Key? key}) : super(key: key);

  @override
  _StudentAttendanceScreenState createState() =>
      _StudentAttendanceScreenState();
}

class _StudentAttendanceScreenState extends State<StudentAttendanceScreen> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          _buildAttendanceView(),
        ],
      ),
    );
  }

  Widget _buildTopBar() {
    return FixedHeightSmoothTopBarV2(
      height: 130.h,
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(20.w, 40.h, 20.w, 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 24.sp),
              Expanded(
                child: Center(
                  child: Text(
                    '出席紀錄',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.history,
                  color: Colors.white70,
                  size: 24.sp,
                ),
                onPressed: () {
                  context.push('/attendance-history');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAttendanceView() {
    if (_selectedDay == null) return const SizedBox.shrink();

    // Mock attendance data for demonstration
    final mockAttendance = {
      '上午': '出席',
      '下午': '缺席',
      '晚上': '請假',
    };

    return Expanded(
      child: Container(
        margin: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: ListView.builder(
          padding: EdgeInsets.all(16.w),
          itemCount: mockAttendance.length,
          itemBuilder: (context, index) {
            final timeSlot = mockAttendance.keys.elementAt(index);
            final status = mockAttendance[timeSlot];

            return Container(
              margin: EdgeInsets.only(bottom: 12.h),
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    timeSlot,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    status!,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: _getStatusColor(status),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case '出席':
        return Colors.green;
      case '缺席':
        return Colors.red;
      case '請假':
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }
}
