import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/teacher/teacher_leave.dart';
import 'package:edutec_hub/presentation/screens/teacher/attendance/widgets/leave_chip.dart';
import 'package:edutec_hub/state_management/cubit/leave/teacher_leave_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LeaveRequestCard extends StatelessWidget {
  final TeacherLeave leave;

  const LeaveRequestCard({
    Key? key,
    required this.leave,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
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
                        leave.lessonTitle,
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        leave.lessonDescription,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.grey[600],
                            ),
                      ),
                    ],
                  ),
                ),
                LeaveStatusChip(status: leave.leaveStatus),
              ],
            ),
            const SizedBox(height: 16),
            _buildInfoRow(
              context,
              'date'.tr(),
              DateFormat('yyyy-MM-dd').format(leave.lessonDate),
            ),
            const SizedBox(height: 8),
            _buildInfoRow(
              context,
              'time'.tr(),
              '${leave.startTime} - ${leave.endTime}',
            ),
            const SizedBox(height: 8),
            _buildInfoRow(
              context,
              'request_date'.tr(),
              DateFormat('yyyy-MM-dd HH:mm').format(leave.leaveRequestDate),
            ),
            if (leave.leaveStatus.toLowerCase() == 'pending') ...[
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      _showCancelConfirmDialog(context);
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.red,
                    ),
                    child: Text('cancel_request'.tr()),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(BuildContext context, String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 100,
          child: Text(
            label,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                ),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }

  Future<void> _showCancelConfirmDialog(BuildContext context) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('confirm_cancel'.tr()),
        content: Text('cancel_leave_confirm_message'.tr()),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text('no'.tr()),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(
              foregroundColor: Colors.red,
            ),
            child: Text('yes'.tr()),
          ),
        ],
      ),
    );

    if (confirmed == true && context.mounted) {
      context.read<TeacherLeaveCubit>().cancelLeaveRequest(leave.lessonId);
    }
  }
}
