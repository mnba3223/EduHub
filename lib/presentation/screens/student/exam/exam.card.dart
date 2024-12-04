import 'package:edutec_hub/presentation/screens/student/exam/exam_details_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:edutec_hub/data/models/exam/student_exam.dart';

class ExamCard extends StatelessWidget {
  final StudentExam exam;

  const ExamCard({Key? key, required this.exam}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (context) => ExamDetailsBottomSheet(exam: exam),
        );
      },
      child: Card(
        margin: EdgeInsets.only(bottom: 16.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
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
                      exam.examName,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  _buildStatusBadge(),
                ],
              ),
              SizedBox(height: 8.h),
              Text(
                exam.lessonTitle,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                DateFormat('yyyy-MM-dd HH:mm').format(exam.examDate),
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                exam.examDescription,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey[800],
                ),
              ),
              if (exam.isScore && exam.scoreDesc != null) ...[
                SizedBox(height: 8.h),
                Container(
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Text(
                    exam.scoreDesc!,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey[700],
                    ),
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
    if (exam.isScore) {
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
              exam.score != null
                  ? 'score'.tr(args: [exam.score.toString()])
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
      final isUpcoming = exam.examDate.isAfter(now);

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
