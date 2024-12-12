// lib/presentation/screens/contact_book/contact_book_detail_screen.dart
import 'dart:developer';
import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/contact_book/contact_book.dart';
import 'package:edutec_hub/data/models/contact_book/contact_book_detail.dart';
import 'package:edutec_hub/presentation/screens/student/contact_book/widgets/contact_book_content.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/presentation/ui_widget/button/custom_button.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/download_ui.dart';
import 'package:edutec_hub/state_management/blocs/contact_book/contact_book_bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactBookDetailScreen extends StatefulWidget {
  // final int contactBookId;
  final ContactBook contactBook;
  const ContactBookDetailScreen({
    super.key,
    required this.contactBook,
  });

  @override
  State<ContactBookDetailScreen> createState() =>
      _ContactBookDetailScreenState();
}

class _ContactBookDetailScreenState extends State<ContactBookDetailScreen> {
  final TextEditingController _messageController = TextEditingController();
  List<File> _selectedFiles = [];
  final ScrollController _scrollController = ScrollController();
  bool _isFirstBuild = true;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToBottom() {
    if (!_scrollController.hasClients) return;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }

  void _showSnackBar(BuildContext context, String message,
      {bool isError = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: isError ? Colors.red : Colors.green,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(16.w),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTopBar(context), // TopBar 會保持在最上層
          Expanded(
            child: Stack(
              children: [
                // 主要内容
                BlocConsumer<ContactBookBloc, ContactBookState>(
                  listener: (context, state) {
                    // ... 現有的 listener 邏輯保持不變
                  },
                  builder: (context, state) {
                    if (_isFirstBuild) {
                      _isFirstBuild = false;
                    }

                    ContactBook currentContactBook = widget.contactBook;
                    if (state is ContactBookListLoaded) {
                      try {
                        currentContactBook = state.contactBooks.firstWhere(
                          (book) =>
                              book.contactBookId ==
                              widget.contactBook.contactBookId,
                        );
                      } catch (_) {
                        currentContactBook = widget.contactBook;
                      }
                    }

                    return Column(
                      children: [
                        Expanded(
                          child: CustomScrollView(
                            controller: _scrollController,
                            slivers: [
                              SliverToBoxAdapter(
                                child: _buildBasicInfo(currentContactBook),
                              ),
                              SliverToBoxAdapter(
                                child: _buildContent(currentContactBook),
                              ),
                              SliverToBoxAdapter(
                                child: _buildMessagesSection(
                                    currentContactBook.messages),
                              ),
                              SliverFillRemaining(
                                hasScrollBody: false,
                                fillOverscroll: true,
                                child: Container(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
                // Loading Overlay - 只會覆蓋內容區域
                BlocBuilder<ContactBookBloc, ContactBookState>(
                  builder: (context, state) {
                    if (state is SendingMessage) {
                      return Container(
                        color: Colors.black.withOpacity(0.3),
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircularProgressIndicator(
                                valueColor:
                                    AlwaysStoppedAnimation<Color>(Colors.white),
                              ),
                              SizedBox(height: 16.h),
                              Text(
                                'sending_message'.tr(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ],
            ),
          ),
          _buildMessageInput(),
        ],
      ),
    );
  }

  Widget _buildTopBar(BuildContext context) {
    return FixedHeightSmoothTopBarV2(
      height: 130.h,
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios,
                    color: Colors.white70, size: 24.sp),
                onPressed: () => Navigator.pop(context),
              ),
              Text(
                'contact_book_detail'.tr(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // 使用 SizedBox 來平衡左側的返回按鈕
              SizedBox(width: 48.w),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _pickFiles() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.any,
        allowMultiple: true,
        allowedExtensions: null,
      );

      if (result != null) {
        setState(() {
          // 添加新选择的文件到现有列表
          _selectedFiles.addAll(
            result.paths
                .where((path) => path != null)
                .map((path) => File(path!))
                .toList(),
          );
        });
      }
    } catch (e) {
      _showSnackBar(
        context,
        'error_picking_files'.tr(),
        isError: true,
      );
    }
  }

  void _removeFile(int index) {
    setState(() {
      _selectedFiles.removeAt(index);
    });
  }

  Widget _buildSelectedFiles() {
    if (_selectedFiles.isEmpty) return const SizedBox.shrink();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(height: 1, color: Colors.grey[300]),
          SizedBox(height: 8.h),
          Wrap(
            spacing: 8.w,
            runSpacing: 8.h,
            children: List.generate(
              _selectedFiles.length,
              (index) => Chip(
                label: Text(
                  _selectedFiles[index].path.split('/').last,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey[700],
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                deleteIcon: Icon(
                  Icons.close,
                  size: 18.sp,
                  color: Colors.grey[600],
                ),
                onDeleted: () => _removeFile(index),
                backgroundColor: Colors.grey[100],
                padding: EdgeInsets.symmetric(horizontal: 8.w),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBasicInfo(ContactBook detail) {
    return Container(
      padding: EdgeInsets.all(16.w),
      color: Colors.grey[50],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            detail.title,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.person_outline,
                      size: 16.sp, color: Colors.grey[600]),
                  SizedBox(width: 4.w),
                  Text(
                    detail.teacherName,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              Text(
                DateFormat('yyyy/MM/dd').format(detail.lessonDate),
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildContent(ContactBook detail) {
    if (detail.content.isEmpty) return const SizedBox();

    return Container(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'contact_book_content'.tr(),
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            detail.content,
            style: TextStyle(fontSize: 15.sp),
          ),
        ],
      ),
    );
  }

  Widget _buildMessagesSection(List<ContactBookMessage> messages) {
    if (messages.isEmpty) return const SizedBox();

    return Container(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'contact_book_messages'.tr(),
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 12.h),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: messages.length,
            separatorBuilder: (_, __) => SizedBox(height: 12.h),
            itemBuilder: (context, index) {
              final message = messages[index];
              return _buildMessageItem(message);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildMessageItem(ContactBookMessage message) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  _buildMessageTypeChip(message.messageType),
                  SizedBox(width: 8.w),
                  Text(
                    message.messageSender,
                    style: TextStyle(
                      fontSize: 13.sp,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Text(
                '# ${message.messageId}',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            message.messageText,
            style: TextStyle(fontSize: 14.sp),
          ),
          if (message.uploadFiles.isNotEmpty) ...[
            SizedBox(height: 12.h),
            _buildAttachments(message.uploadFiles),
          ],
        ],
      ),
    );
  }

  Widget _buildAttachments(List<String> files) {
    return Wrap(
      spacing: 8.w,
      runSpacing: 8.h,
      children: files.map((file) {
        return AttachmentDownloadButton(
          url: file,
          fileName: file.split('/').last,
        );
      }).toList(),
    );
  }

  Widget _buildMessageTypeChip(String type) {
    Color color;
    String label;

    switch (type.toLowerCase()) {
      case 'student':
        color = Colors.orange;
        label = 'student'.tr();
        break;
      case 'teacher':
        color = Colors.blue;
        label = 'teacher'.tr();
        break;
      case 'parent':
        color = Colors.green;
        label = 'parent'.tr();
        break;
      default:
        color = Colors.grey;
        label = type;
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontSize: 12.sp,
        ),
      ),
    );
  }

  Widget _buildMessageInput() {
    return Container(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: Colors.grey[300]!),
            ),
            child: Column(
              children: [
                // 消息输入框
                TextField(
                  controller: _messageController,
                  decoration: InputDecoration(
                    hintText: 'contact_book_reply_hint'.tr(),
                    contentPadding: EdgeInsets.all(16.w),
                    border: InputBorder.none,
                  ),
                  maxLines: 3,
                ),

                // 显示已选文件
                _buildSelectedFiles(),

                // 底部工具栏
                Container(
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.grey[300]!),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // 附件按钮
                      IconButton(
                        icon: const Icon(Icons.attach_file),
                        onPressed: _pickFiles,
                        tooltip: 'add_attachment'.tr(),
                        color: Colors.grey[700],
                      ),

                      // 文件计数
                      if (_selectedFiles.isNotEmpty)
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.w),
                            child: Text(
                              '${_selectedFiles.length} ' +
                                  (_selectedFiles.length > 1
                                      ? 'attachments'.tr()
                                      : 'attachment'.tr()),
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                        ),

                      // 发送按钮
                      CustomButton(
                        onPressed: _submitMessage,
                        text: 'contact_book_send'.tr(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _submitMessage() {
    final message = _messageController.text.trim();
    if (message.isEmpty) {
      _showSnackBar(
        context,
        'message_cannot_be_empty'.tr(),
        isError: true,
      );
      return;
    }

    // 准备文件上传
    List<File>? filesToUpload;
    if (_selectedFiles.isNotEmpty) {
      filesToUpload = List<File>.from(_selectedFiles);
    }

    context.read<ContactBookBloc>().add(
          AddContactBookMessage(
            contactBookId: widget.contactBook.contactBookId,
            messageText: message,
            uploadFiles: filesToUpload,
          ),
        );
  }
}
