import 'package:edutec_hub/data/models/message_board/message.dart';
import 'package:edutec_hub/data/models/user_role.dart';
import 'package:edutec_hub/presentation/ui_widget/card/message_card.dart';
import 'package:edutec_hub/state_management/cubit/message_board/message_board_cubit.dart';
import 'package:edutec_hub/state_management/cubit/signInCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

// screens/message_board/message_board_screen.dart
class MessageBoardScreen extends StatefulWidget {
  const MessageBoardScreen({super.key});

  @override
  State<MessageBoardScreen> createState() => _MessageBoardScreenState();
}

class _MessageBoardScreenState extends State<MessageBoardScreen> {
  final TextEditingController _messageController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<MessageBoardCubit>().loadMessages();
  }

  @override
  void dispose() {
    _messageController.dispose();
    _titleController.dispose();
    super.dispose();
  }

  void _showMessageDetail(Message message) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: Container(
          width: double.infinity,
          constraints: BoxConstraints(maxHeight: 0.8.sh),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppBar(
                title: const Text('留言詳情'),
                automaticallyImplyLeading: false,
                actions: [
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 發送者資訊
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.w,
                              vertical: 4.h,
                            ),
                            decoration: BoxDecoration(
                              color: message.type == MessageType.teacher
                                  ? Colors.blue[100]
                                  : Colors.green[100],
                              borderRadius: BorderRadius.circular(4.r),
                            ),
                            child: Text(
                              message.type == MessageType.teacher ? '老師' : '家長',
                              style: TextStyle(
                                color: message.type == MessageType.teacher
                                    ? Colors.blue[800]
                                    : Colors.green[800],
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Text(
                            message.senderName,
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.grey[600],
                            ),
                          ),
                          Spacer(),
                          Text(
                            DateFormat('yyyy/MM/dd HH:mm')
                                .format(message.createdAt),
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      // 標題
                      Text(
                        message.title,
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      // 內容
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(12.w),
                        decoration: BoxDecoration(
                          color: Colors.grey[50],
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: Colors.grey[200]!),
                        ),
                        child: Text(
                          message.content,
                          style: TextStyle(
                            fontSize: 16.sp,
                            height: 1.5,
                          ),
                        ),
                      ),
                      if (message.replies.isNotEmpty) ...[
                        SizedBox(height: 24.h),
                        Text(
                          '回覆',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        ...message.replies
                            .map((reply) => Container(
                                  margin: EdgeInsets.only(bottom: 12.h),
                                  padding: EdgeInsets.all(12.w),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[50],
                                    borderRadius: BorderRadius.circular(8.r),
                                    border:
                                        Border.all(color: Colors.grey[200]!),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                              reply.senderType ==
                                                      MessageType.teacher
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
                                          Text(reply.senderName),
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
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showNewMessageDialog(BuildContext context, SignInSuccess signInState) {
    final titleController = TextEditingController();
    final contentController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '新增留言',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.h),
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText: '標題',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              TextField(
                controller: contentController,
                decoration: InputDecoration(
                  labelText: '內容',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                maxLines: 5,
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('取消'),
                  ),
                  SizedBox(width: 8.w),
                  ElevatedButton(
                    onPressed: () {
                      if (titleController.text.isNotEmpty &&
                          contentController.text.isNotEmpty) {
                        context.read<MessageBoardCubit>().addMessage(
                              title: titleController.text,
                              content: contentController.text,
                              senderName: "當前用戶名稱", // 從用戶狀態獲取
                              senderId: signInState.userId,
                              type: signInState.role == UserRole.teacher
                                  ? MessageType.teacher
                                  : MessageType.parent,
                            );
                        Navigator.pop(context);
                      }
                    },
                    child: const Text('發送'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInCubit, SignInState>(
      builder: (context, signInState) {
        if (signInState is! SignInSuccess) {
          return const Scaffold(
            body: Center(child: Text('請先登入')),
          );
        }

        return Scaffold(
          appBar: AppBar(
            title: const Text('聯絡簿'),
            backgroundColor: Theme.of(context).primaryColor,
            actions: [
              /// 學生目前不給新增留言。
              if (signInState.role != UserRole.student)
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () => _showNewMessageDialog(context, signInState),
                ),
            ],
          ),
          body: BlocBuilder<MessageBoardCubit, MessageBoardState>(
            builder: (context, state) {
              return switch (state) {
                MessageBoardInitial() => const SizedBox(),
                MessageBoardLoading() => const Center(
                    child: CircularProgressIndicator(),
                  ),
                MessageBoardLoaded(:final messages) => ListView.builder(
                    padding: EdgeInsets.all(16.w),
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      final message = messages[index];
                      return MessageCard(
                        message: message,
                        currentUserId: signInState.userId,
                        currentUserRole: signInState.role,
                        // onTap: () => _showMessageDetail(message),
                      );
                    },
                  ),
                MessageBoardError(:final error) => Center(
                    child: Text('Error: $error'),
                  ),
              };
            },
          ),
        );
      },
    );
  }
}
