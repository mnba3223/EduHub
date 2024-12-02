import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/teacher/teacher_contact_book_model.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/download_ui.dart';
import 'package:edutec_hub/state_management/cubit/contact_book/teacher_contact_book_cubit.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TeacherContactBookDetailScreen extends StatefulWidget {
  final TeacherContactBook contactBook;

  const TeacherContactBookDetailScreen({
    Key? key,
    required this.contactBook,
  }) : super(key: key);

  @override
  State<TeacherContactBookDetailScreen> createState() =>
      _TeacherContactBookDetailScreenState();
}

class _TeacherContactBookDetailScreenState
    extends State<TeacherContactBookDetailScreen> {
  late TeacherContactBook currentContactBook;

  @override
  void initState() {
    super.initState();
    currentContactBook = widget.contactBook;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TeacherContactBookCubit, TeacherContactBookState>(
        listener: (context, state) {
      if (state.error != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(state.error!)),
        );
      }
    }, builder: (context, state) {
      // 從 state 中找到對應的 contactBook
      currentContactBook = state.contactBooks.firstWhere(
        (book) => book.contactBookId == widget.contactBook.contactBookId,
        orElse: () => currentContactBook,
      );

      if (state.isLoading) {
        return const Scaffold(
          body: Center(child: CircularProgressIndicator()),
        );
      }
      return Scaffold(
        appBar: AppBar(
          title: Text(currentContactBook.title),
          actions: [
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () => _showEditDialog(context),
            ),
          ],
        ),
        body: Column(
          children: [
            _buildHeader(context),
            Expanded(
              child: _buildMessagesList(),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => _showAddMessageDialog(context),
          icon: Icon(Icons.add_comment, size: 20.sp),
          label: Text('add_message'.tr()),
        ),
      );
    });
  }

  Widget _buildHeader(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.w),
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
                    currentContactBook.title,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                _buildStatusChip(currentContactBook.status),
              ],
            ),
            SizedBox(height: 12.h),
            _buildInfoRow(Icons.person_outline, currentContactBook.studentName),
            SizedBox(height: 8.h),
            _buildInfoRow(
              Icons.calendar_today_outlined,
              DateFormat('yyyy/MM/dd').format(currentContactBook.lessonDate),
            ),
            SizedBox(height: 8.h),
            _buildInfoRow(Icons.class_outlined, currentContactBook.lessonTitle),
          ],
        ),
      ),
    );
  }

  Widget _buildMessagesList() {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      itemCount: currentContactBook.messages.length,
      itemBuilder: (context, index) {
        return _buildMessageTile(context, currentContactBook.messages[index]);
      },
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 16.sp, color: Colors.grey[600]),
        SizedBox(width: 8.w),
        Text(
          text,
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }

  Widget _buildStatusChip(String status) {
    final isReplied = status == 'replied';
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: isReplied ? Colors.green[100] : Colors.orange[100],
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Text(
        status.tr(),
        style: TextStyle(
          color: isReplied ? Colors.green[900] : Colors.orange[900],
          fontSize: 12.sp,
        ),
      ),
    );
  }

  Widget _buildMessageTile(
      BuildContext context, TeacherContactBookMessage message) {
    final isTeacher = message.messageType == 'Teacher';
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20.r,
            backgroundColor:
                isTeacher ? Theme.of(context).primaryColor : Colors.green,
            child: Icon(
              isTeacher ? Icons.school : Icons.person,
              color: Colors.white,
              size: 20.sp,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 添加發送者名稱
                Text(
                  isTeacher
                      ? currentContactBook.teacherName
                      : currentContactBook.studentName,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
                SizedBox(height: 4.h),
                Container(
                  padding: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                    color: isTeacher ? Colors.blue[50] : Colors.green[50],
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Text(
                    message.messageText,
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ),
                SizedBox(height: 4.h),
                Row(
                  children: [
                    Text(
                      isTeacher ? 'teacher'.tr() : 'student'.tr(),
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.grey[600],
                      ),
                    ),
                    if (message.uploadFile != null) ...[
                      SizedBox(width: 8.w),
                      AttachmentDownloadButton(
                        url: message.uploadFile!,
                        fileName: message.uploadFile!.split('/').last,
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showEditDialog(BuildContext context) async {
    final titleController =
        TextEditingController(text: currentContactBook.title);
    String status = currentContactBook.status;

    await showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text('edit_contact_book'.tr()),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'title'.tr(),
              ),
            ),
            SizedBox(height: 16.h),
            DropdownButtonFormField<String>(
              value: status,
              decoration: InputDecoration(
                labelText: 'status'.tr(),
              ),
              items: ['pending', 'replied'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value.tr()),
                );
              }).toList(),
              onChanged: (value) {
                if (value != null) status = value;
              },
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text('cancel'.tr()),
          ),
          TextButton(
            onPressed: () {
              if (titleController.text.isNotEmpty) {
                Navigator.pop(dialogContext);
                context.read<TeacherContactBookCubit>().updateContactBook(
                      contactBookId: currentContactBook.contactBookId,
                      title: titleController.text,
                      status: status,
                    );
              }
            },
            child: Text('confirm'.tr()),
          ),
        ],
      ),
    );
  }

  Future<void> _showAddMessageDialog(BuildContext context) async {
    final messageController = TextEditingController();
    String? selectedFileName;
    File? selectedFile;

    // 使用 StatefulBuilder 來管理 dialog 內的狀態
    await showDialog(
      context: context,
      builder: (dialogContext) => StatefulBuilder(
        builder: (stateContext, setState) => AlertDialog(
          title: Text('add_message'.tr()),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: messageController,
                decoration: InputDecoration(
                  labelText: 'message_content'.tr(),
                ),
                maxLines: 3,
              ),
              SizedBox(height: 16.h),
              // 顯示已選擇的檔案名稱
              if (selectedFileName != null)
                Padding(
                  padding: EdgeInsets.only(bottom: 8.h),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          selectedFileName!,
                          style: TextStyle(fontSize: 12.sp),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          setState(() {
                            selectedFileName = null;
                            selectedFile = null;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ElevatedButton.icon(
                onPressed: () async {
                  final result = await FilePicker.platform.pickFiles();
                  if (result != null) {
                    setState(() {
                      selectedFile = File(result.files.single.path!);
                      selectedFileName = result.files.single.name;
                    });
                  }
                },
                icon: const Icon(Icons.attach_file),
                label: Text('attach_file'.tr()),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext),
              child: Text('cancel'.tr()),
            ),
            TextButton(
              onPressed: () async {
                if (messageController.text.isNotEmpty) {
                  Navigator.pop(dialogContext);
                  try {
                    await context.read<TeacherContactBookCubit>().addMessage(
                          contactBookId: currentContactBook.contactBookId,
                          message: messageController.text,
                          file: selectedFile,
                        );

                    // // 成功後直接刷新資料
                    // if (context.mounted) {
                    //   context
                    //       .read<TeacherContactBookCubit>()
                    //       .loadContactBooks();
                    // }
                  } catch (e) {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('error_add_message'.tr())),
                      );
                    }
                  }
                }
              },
              child: Text('confirm'.tr()),
            ),
          ],
        ),
      ),
    );
  }
}
