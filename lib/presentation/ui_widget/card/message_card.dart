import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/message_board/message.dart';
import 'package:edutec_hub/data/models/user_role.dart';
import 'package:edutec_hub/state_management/cubit/message_board/message_board_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

// class MessageCard extends StatelessWidget {
//   final Message message;
//   final int currentUserId;
//   final UserRole currentUserRole;

//   const MessageCard({
//     super.key,
//     required this.message,
//     required this.currentUserId,
//     required this.currentUserRole,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final bool isOwner = message.senderId == currentUserId;

//     return Card(
//       margin: EdgeInsets.only(bottom: 16.h),
//       elevation: 2,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12.r),
//       ),
//       child: InkWell(
//         onTap: () {
//           context.push('/message-detail/${message.id}');
//         },
//         borderRadius: BorderRadius.circular(12.r),
//         child: Container(
//           padding: EdgeInsets.all(16.w),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   _buildRoleTag(message.type),
//                   SizedBox(width: 8.w),
//                   Expanded(
//                     child: Text(
//                       message.senderName,
//                       style: TextStyle(
//                         color: Colors.grey[600],
//                         fontSize: 14.sp,
//                       ),
//                     ),
//                   ),
//                   if (isOwner)
//                     Container(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 8.w,
//                         vertical: 4.h,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Colors.grey[100],
//                         borderRadius: BorderRadius.circular(4.r),
//                       ),
//                       child: Text(
//                         '我的留言',
//                         style: TextStyle(
//                           color: Colors.grey[600],
//                           fontSize: 12.sp,
//                         ),
//                       ),
//                     ),
//                 ],
//               ),
//               SizedBox(height: 8.h),
//               Text(
//                 message.title,
//                 style: TextStyle(
//                   fontSize: 16.sp,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 4.h),
//               Text(
//                 message.content,
//                 style: TextStyle(
//                   fontSize: 14.sp,
//                   color: Colors.grey[800],
//                 ),
//               ),
//               SizedBox(height: 8.h),
//               Text(
//                 DateFormat('yyyy/MM/dd HH:mm').format(message.createdAt),
//                 style: TextStyle(
//                   color: Colors.grey[500],
//                   fontSize: 12.sp,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildRoleTag(MessageType type) {
//     final Color backgroundColor;
//     final Color textColor;
//     final String text;

//     switch (type) {
//       case MessageType.teacher:
//         backgroundColor = Colors.blue[100]!;
//         textColor = Colors.blue[800]!;
//         text = '老師';
//       case MessageType.parent:
//         backgroundColor = Colors.green[100]!;
//         textColor = Colors.green[800]!;
//         text = '家長';
//     }

//     return Container(
//       padding: EdgeInsets.symmetric(
//         horizontal: 8.w,
//         vertical: 4.h,
//       ),
//       decoration: BoxDecoration(
//         color: backgroundColor,
//         borderRadius: BorderRadius.circular(4.r),
//       ),
//       child: Text(
//         text,
//         style: TextStyle(
//           color: textColor,
//           fontSize: 12.sp,
//         ),
//       ),
//     );
//   }
// }
class MessageCard extends StatefulWidget {
  final Message message;
  final int currentUserId;
  final UserRole currentUserRole;

  const MessageCard({
    super.key,
    required this.message,
    required this.currentUserId,
    required this.currentUserRole,
  });

  @override
  State<MessageCard> createState() => _MessageCardState();
}

class _MessageCardState extends State<MessageCard> {
  bool _isExpanded = false;
  final TextEditingController _replyController = TextEditingController();

  @override
  void dispose() {
    _replyController.dispose();
    super.dispose();
  }

  void _addReply() {
    if (_replyController.text.isEmpty) return;

    context.read<MessageBoardCubit>().addReply(
          messageId: widget.message.id,
          content: _replyController.text,
          senderName: "當前用戶名稱", // 從用戶狀態獲取
          senderId: widget.currentUserId,
          senderType: widget.currentUserRole == UserRole.teacher
              ? MessageType.teacher
              : MessageType.parent,
        );

    _replyController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.h),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () => setState(() => _isExpanded = !_isExpanded),
            child: Container(
              padding: EdgeInsets.all(16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 4.h,
                        ),
                        decoration: BoxDecoration(
                          color: widget.message.type == MessageType.teacher
                              ? Colors.blue[100]
                              : Colors.green[100],
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        child: Text(
                          widget.message.type == MessageType.teacher
                              ? '老師'
                              : '家長',
                          style: TextStyle(
                            color: widget.message.type == MessageType.teacher
                                ? Colors.blue[800]
                                : Colors.green[800],
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Expanded(
                        child: Text(
                          widget.message.senderName,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                      Text(
                        DateFormat('MM/dd HH:mm')
                            .format(widget.message.createdAt),
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    widget.message.title,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    widget.message.content,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey[800],
                    ),
                    maxLines: _isExpanded ? null : 2,
                    overflow: _isExpanded ? null : TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      if (widget.message.replies.isNotEmpty)
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                            vertical: 4.h,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                          child: Text(
                            '${widget.message.replies.length} 則回覆',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                      const Spacer(),
                      Icon(
                        _isExpanded ? Icons.expand_less : Icons.expand_more,
                        color: Colors.grey[600],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          if (_isExpanded) ...[
            const Divider(height: 1),
            Container(
              padding: EdgeInsets.all(16.w),
              color: Colors.grey[50],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...widget.message.replies
                      .map((reply) => Container(
                            margin: EdgeInsets.only(bottom: 12.h),
                            padding: EdgeInsets.all(12.w),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(color: Colors.grey[200]!),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 8.w,
                                        vertical: 4.h,
                                      ),
                                      decoration: BoxDecoration(
                                        color: reply.senderType ==
                                                MessageType.teacher
                                            ? Colors.blue[100]
                                            : Colors.green[100],
                                        borderRadius:
                                            BorderRadius.circular(4.r),
                                      ),
                                      child: Text(
                                        reply.senderType == MessageType.teacher
                                            ? '老師'
                                            : '家長',
                                        style: TextStyle(
                                          color: reply.senderType ==
                                                  MessageType.teacher
                                              ? Colors.blue[800]
                                              : Colors.green[800],
                                          fontSize: 12.sp,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 8.w),
                                    Text(
                                      reply.senderName,
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      DateFormat('MM/dd HH:mm')
                                          .format(reply.createdAt),
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.h),
                                Text(reply.content),
                              ],
                            ),
                          ))
                      .toList(),
                  // if (widget.currentUserRole != UserRole.student)
                  Padding(
                    padding: EdgeInsets.only(top: 12.h),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _replyController,
                            decoration: InputDecoration(
                              hintText: '輸入回覆...',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 16.w,
                                vertical: 12.h,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 12.w),
                        ElevatedButton(
                          onPressed: _addReply,
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.w,
                              vertical: 12.h,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                          ),
                          child: const Text('回覆'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}
