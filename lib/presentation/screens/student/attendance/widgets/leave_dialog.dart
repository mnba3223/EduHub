// import 'package:easy_localization/easy_localization.dart';
// import 'package:edutec_hub/data/models/attendance/attendance_models.dart';
// import 'package:edutec_hub/state_management/cubit/attendance/attendance_cubit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class LeaveRequestDialog extends StatefulWidget {
//   final AttendanceCourseRecord courseRecord;

//   const LeaveRequestDialog({
//     Key? key,
//     required this.courseRecord,
//   }) : super(key: key);

//   @override
//   _LeaveRequestDialogState createState() => _LeaveRequestDialogState();
// }

// class _LeaveRequestDialogState extends State<LeaveRequestDialog> {
//   final _reasonController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<AttendanceCubit, AttendanceState>(
//       listener: (context, state) {
//         if (state is LeaveRequestSuccess) {
//           Navigator.pop(context);
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text('leave_request_submitted'.tr())),
//           );
//         } else if (state is LeaveRequestError) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//               content: Text('leave_request_failed'.tr(args: [state.message])),
//             ),
//           );
//         }
//       },
//       child: Dialog(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(16.r),
//         ),
//         child: Padding(
//           padding: EdgeInsets.all(16.w),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Text(
//                 'leave_application'.tr(),
//                 style: TextStyle(
//                   fontSize: 18.sp,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 16.h),
//               Text(
//                 widget.courseRecord.courseName,
//                 style: TextStyle(fontSize: 16.sp),
//               ),
//               Text(
//                 DateFormat('yyyy/MM/dd HH:mm').format(
//                   widget.courseRecord.startTime,
//                 ),
//                 style: TextStyle(
//                   fontSize: 14.sp,
//                   color: Colors.grey[600],
//                 ),
//               ),
//               SizedBox(height: 16.h),
//               TextField(
//                 controller: _reasonController,
//                 decoration: InputDecoration(
//                   labelText: 'leave_reason'.tr(),
//                   border: const OutlineInputBorder(),
//                 ),
//                 maxLines: 3,
//               ),
//               SizedBox(height: 16.h),
//               BlocBuilder<AttendanceCubit, AttendanceState>(
//                 builder: (context, state) {
//                   final isSubmitting = state is LeaveRequestLoading;
//                   return Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       TextButton(
//                         onPressed:
//                             isSubmitting ? null : () => Navigator.pop(context),
//                         child: Text('cancel'.tr()),
//                       ),
//                       SizedBox(width: 8.w),
//                       ElevatedButton(
//                         onPressed: isSubmitting ? null : _submitRequest,
//                         child: isSubmitting
//                             ? SizedBox(
//                                 width: 20.w,
//                                 height: 20.w,
//                                 child: const CircularProgressIndicator(
//                                   strokeWidth: 2,
//                                 ),
//                               )
//                             : Text('submit'.tr()),
//                       ),
//                     ],
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void _submitRequest() {
//     final reason = _reasonController.text.trim();
//     if (reason.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('please_enter_leave_reason'.tr())),
//       );
//       return;
//     }

//     // 直接創建並提交請假表單
//     final form = LeaveRequestForm(
//       attendanceRecordId: widget.courseRecord.id,
//       reason: reason,
//       requestTime: DateTime.now(),
//     );

//     context.read<AttendanceCubit>().submitLeaveRequest(form);

//     // Navigator.pop(context);
//   }

//   @override
//   void dispose() {
//     _reasonController.dispose();
//     super.dispose();
//   }
// }
