import 'package:edutec_hub/presentation/screens/student/exam/exam_details_bottom_sheet.dart';
import 'package:edutec_hub/state_management/cubit/download/downloadFileCubit.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:edutec_hub/data/models/exam/student_exam.dart';

class ExamCard extends StatefulWidget {
  final StudentExam exam;
  final BuildContext context;
  const ExamCard({Key? key, required this.exam, required this.context})
      : super(key: key);

  @override
  State<ExamCard> createState() => _ExamCardState();
}

class _ExamCardState extends State<ExamCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          useRootNavigator: true,
          builder: (context) => BlocProvider.value(
            value: widget.context.read<DownloadCubit>(),
            child: ExamDetailsBottomSheet(
              exam: widget.exam,
              context: widget.context,
            ),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.only(bottom: 16.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        elevation: 2,
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      widget.exam.examName,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  _buildStatusBadge(),
                ],
              ),
              SizedBox(height: 8.h),
              Text(
                widget.exam.lessonTitle,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey[600],
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 4.h),
              Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 16.sp,
                    color: Colors.grey[600],
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    widget.exam.teacherName,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Icon(
                    Icons.access_time,
                    size: 16.sp,
                    color: Colors.grey[600],
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    DateFormat('yyyy-MM-dd HH:mm').format(widget.exam.examDate),
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Text(
                widget.exam.examDescription,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey[800],
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              if (widget.exam.isScore && widget.exam.scoreDesc != null) ...[
                SizedBox(height: 8.h),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'teacher_comment'.tr(),
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        widget.exam.scoreDesc!,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.grey[700],
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusBadge() {
    if (widget.exam.isScore) {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 4.h,
        ),
        decoration: BoxDecoration(
          color: Colors.green.shade100,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.check_circle,
              size: 16.sp,
              color: Colors.green.shade700,
            ),
            SizedBox(width: 4.w),
            Text(
              widget.exam.score != null
                  ? 'score'.tr(args: [widget.exam.score.toString()])
                  : 'completed'.tr(),
              style: TextStyle(
                color: Colors.green.shade700,
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
      );
    } else {
      final now = DateTime.now();
      final isUpcoming = widget.exam.examDate.isAfter(now);

      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 4.h,
        ),
        decoration: BoxDecoration(
          color: isUpcoming ? Colors.blue.shade100 : Colors.orange.shade100,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Text(
          isUpcoming ? 'upcoming'.tr() : 'pending'.tr(),
          style: TextStyle(
            color: isUpcoming ? Colors.blue.shade700 : Colors.orange.shade700,
            fontSize: 14.sp,
          ),
        ),
      );
    }
  }
}
