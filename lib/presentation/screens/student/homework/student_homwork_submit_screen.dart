import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeworkSubmitScreen extends StatefulWidget {
  final String homeworkId;
  // 更新回調函數的類型定義
  final Function(String content, List<PlatformFile> files) onSubmit;

  const HomeworkSubmitScreen({
    Key? key,
    required this.homeworkId,
    required this.onSubmit,
  }) : super(key: key);

  @override
  State<HomeworkSubmitScreen> createState() => _HomeworkSubmitScreenState();
}

class _HomeworkSubmitScreenState extends State<HomeworkSubmitScreen> {
  final _contentController = TextEditingController();
  List<PlatformFile> _selectedFiles = [];
  bool _isSubmitting = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('submit_homework'.tr()),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'homework_content'.tr(),
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.h),
            TextField(
              controller: _contentController,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'enter_homework_content'.tr(),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.h),
            Text(
              'attachments'.tr(),
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.h),
            _buildAttachmentsList(),
            SizedBox(height: 16.h),
            ElevatedButton(
              onPressed: _isSubmitting ? null : _pickFiles,
              child: Text('add_attachment'.tr()),
            ),
            SizedBox(height: 24.h),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _isSubmitting ? null : _handleSubmit,
                child: _isSubmitting
                    ? SizedBox(
                        height: 20.h,
                        width: 20.w,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                    : Text('submit'.tr()),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAttachmentsList() {
    if (_selectedFiles.isEmpty) {
      return Text('no_attachments'.tr());
    }

    return Column(
      children: _selectedFiles.map((file) {
        return Card(
          margin: EdgeInsets.only(bottom: 8.h),
          child: ListTile(
            leading: Icon(Icons.attach_file),
            title: Text(file.name),
            subtitle: Text('${(file.size / 1024).toStringAsFixed(2)} KB'),
            trailing: _isSubmitting
                ? null
                : IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => _removeFile(file),
                  ),
          ),
        );
      }).toList(),
    );
  }

  Future<void> _pickFiles() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        type: FileType.any,
      );

      if (result != null) {
        setState(() {
          _selectedFiles.addAll(result.files);
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('error_picking_files'.tr())),
      );
    }
  }

  void _removeFile(PlatformFile file) {
    setState(() {
      _selectedFiles.remove(file);
    });
  }

  Future<void> _handleSubmit() async {
    if (_contentController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('please_enter_content'.tr())),
      );
      return;
    }

    setState(() => _isSubmitting = true);

    try {
      // 直接傳遞 PlatformFile 列表
      await widget.onSubmit(_contentController.text, _selectedFiles);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('homework_submitted_success'.tr())),
      );

      Navigator.of(context).pop(true);
    } catch (e) {
      // 顯示具體錯誤信息
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('${e.toString()}'),
          duration: Duration(seconds: 3),
          action: SnackBarAction(
            label: 'close'.tr(),
            onPressed: () {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
            },
          ),
        ),
      );
      print('Submit Error: $e'); // 添加日誌
    } finally {
      if (mounted) {
        setState(() => _isSubmitting = false);
      }
    }
  }

  @override
  void dispose() {
    _contentController.dispose();
    super.dispose();
  }
}
