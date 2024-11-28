import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/teacher/teacher_homework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TeacherHomeworkCard extends StatefulWidget {
  final TeacherHomeworkListItem homework;
  final VoidCallback onTap;

  const TeacherHomeworkCard({
    Key? key,
    required this.homework,
    required this.onTap,
  }) : super(key: key);

  @override
  State<TeacherHomeworkCard> createState() => _TeacherHomeworkCardState();
}

class _TeacherHomeworkCardState extends State<TeacherHomeworkCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 12.h),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: InkWell(
        onTap: widget.onTap,
        borderRadius: BorderRadius.circular(12.r),
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.homework.homeworkDescription ??
                              "", // 改用 description
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        if (widget.homework.classroomName != null)
                          Text(
                            '${widget.homework.lessonTitle} - ${widget.homework.classroomName}',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.grey[600],
                            ),
                          ),
                      ],
                    ),
                  ),
                  _buildStatusBadge(),
                ],
              ),
              SizedBox(height: 12.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildStatItem(
                    icon: Icons.assignment_turned_in,
                    label: 'submitted'.tr(),
                    value:
                        '${widget.homework.submittedCount}/${widget.homework.totalStudents}',
                    color: Colors.blue,
                  ),
                  _buildStatItem(
                    icon: Icons.grading,
                    label: 'graded'.tr(),
                    value:
                        '${widget.homework.ratingCount}/${widget.homework.totalStudents}',
                    color: Colors.green,
                  ),
                  _buildDueDate(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusBadge() {
    final status = widget.homework.status;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: status.statusColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Text(
        status.toDisplayString(),
        style: TextStyle(
          color: status.statusColor,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildStatItem({
    required IconData icon,
    required String label,
    required String value,
    required Color color,
  }) {
    return Row(
      children: [
        Icon(icon, size: 16.sp, color: color),
        SizedBox(width: 4.w),
        Text(
          '$label: $value',
          style: TextStyle(
            fontSize: 12.sp,
            color: color,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildDueDate() {
    return Row(
      children: [
        Icon(Icons.access_time, size: 16.sp, color: Colors.grey[600]),
        SizedBox(width: 4.w),
        Text(
          // 處理 UTC 時間並轉換為本地時間
          'teacher_homework_due_date'.tr() +
              ': ' +
              DateFormat('MM/dd', context.locale.toString())
                  .format(widget.homework.endTime.toLocal()),
          style: TextStyle(
            fontSize: 12.sp,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
