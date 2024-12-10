import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/state_management/cubit/homework/homework_cubit.dart';
import 'package:edutec_hub/state_management/cubit/homework/homework_state.dart';

class HomeworkSubmitScreen extends StatefulWidget {
  final int homeworkId;
  final int submissionId;
  final int studentId;

  const HomeworkSubmitScreen({
    required this.homeworkId,
    required this.submissionId,
    required this.studentId,
    Key? key,
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
    return BlocListener<HomeworkCubit, HomeworkState>(
      listener: (context, state) {
        if (!state.isLoading && state.error != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error!),
              backgroundColor: Colors.red,
            ),
          );
        } else if (!state.isLoading && state.error == null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('homework_submitted_success'.tr())),
          );
          // 返回前重新加载作业详情
          context.read<HomeworkCubit>().loadHomeworkDetail(widget.homeworkId);
          context.pop();
        }
      },
      child: Scaffold(
        appBar: null,
        body: Column(
          children: [
            _buildTopBar(context),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                    //   'homework_content'.tr(),
                    //   style: TextStyle(
                    //     fontSize: 16.sp,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    // SizedBox(height: 8.h),
                    // TextField(
                    //   controller: _contentController,
                    //   maxLines: 5,
                    //   decoration: InputDecoration(
                    //     hintText: 'enter_homework_content'.tr(),
                    //     border: OutlineInputBorder(),
                    //   ),
                    // ),
                    SizedBox(height: 16.h),
                    _buildAttachmentsSection(),
                    SizedBox(height: 24.h),
                    _buildSubmitButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
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
                onPressed: () => context.pop(),
              ),
              Text(
                'submit_homework'.tr(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 48.w),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAttachmentsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'attachments'.tr(),
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton.icon(
              onPressed: _isSubmitting ? null : _pickFiles,
              icon: Icon(Icons.add),
              label: Text('add_attachment'.tr()),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        _buildAttachmentsList(),
      ],
    );
  }

  // Future<void> _pickFiles() async {
  //   try {
  //     final result = await FilePicker.platform.pickFiles(
  //       // 由於目前 API 只支持單檔案，所以改為 false
  //       allowMultiple: false,
  //       type: FileType.any,
  //       withReadStream: true,
  //     );

  //     if (result != null) {
  //       // 驗證文件大小 (10MB 限制)
  //       final file = result.files.first;
  //       if (file.size > 10 * 1024 * 1024) {
  //         throw Exception('file_size_too_large'.tr(args: [file.name]));
  //       }

  //       // 驗證文件路徑
  //       if (file.path == null) {
  //         throw Exception('invalid_file_path'.tr());
  //       }

  //       setState(() {
  //         // 由於現在是單檔案，所以替換而不是添加
  //         _selectedFiles = [file];
  //       });
  //     }
  //   } catch (e) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text(e.toString()),
  //         backgroundColor: Colors.red,
  //       ),
  //     );
  //   }
  // }
  // 修改 _pickFiles() 方法
  Future<void> _pickFiles() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        allowMultiple: true, // 改為允許多檔案
        type: FileType.any,
        withReadStream: true,
      );

      if (result != null) {
        // 驗證所有文件大小
        for (var file in result.files) {
          if (file.size > 10 * 1024 * 1024) {
            throw Exception('file_size_too_large'.tr(args: [file.name]));
          }
          if (file.path == null) {
            throw Exception('invalid_file_path'.tr());
          }
        }

        setState(() {
          // 添加新選擇的文件到現有列表
          _selectedFiles.addAll(result.files);
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Future<void> _handleSubmit() async {
    // 由於暫時沒有 comment 需求，移除 content 檢查
    // final content = _contentController.text.trim();
    // if (content.isEmpty) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(content: Text('please_enter_content'.tr())),
    //   );
    //   return;
    // }

    // 檢查是否有選擇文件
    if (_selectedFiles.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('please_select_file'.tr())),
      );
      return;
    }

    setState(() => _isSubmitting = true);

    try {
      await context.read<HomeworkCubit>().submitHomework(
            submissionId: widget.submissionId,
            // studentId: widget.studentId,
            // content: '', // 暫時傳空字串
            files: _selectedFiles,
          );
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(e.toString()),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isSubmitting = false);
      }
    }
  }

  Widget _buildAttachmentsList() {
    if (_selectedFiles.isEmpty) {
      return Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]!),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Center(
          child: Text(
            'no_attachments'.tr(),
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),
      );
    }

    return Column(
      children: _selectedFiles.map((file) {
        return Card(
          margin: EdgeInsets.only(bottom: 8.h),
          child: ListTile(
            leading: Icon(Icons.attach_file, color: Colors.blue),
            title: Text(
              file.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              '${(file.size / 1024).toStringAsFixed(2)} KB',
              style: TextStyle(fontSize: 12.sp),
            ),
            trailing: _isSubmitting
                ? null
                : IconButton(
                    icon: Icon(Icons.close, color: Colors.red),
                    onPressed: () => _removeFile(file),
                  ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildSubmitButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: _isSubmitting ? null : _handleSubmit,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 12.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        child: _isSubmitting
            ? SizedBox(
                height: 20.h,
                width: 20.w,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : Text('submit'.tr()),
      ),
    );
  }

  // Future<void> _pickFiles() async {
  //   try {
  //     final result = await FilePicker.platform.pickFiles(
  //       allowMultiple: true,
  //       type: FileType.any,
  //       withReadStream: true,
  //     );

  //     if (result != null) {
  //       // 驗證文件大小 (10MB 限制)
  //       final invalidFiles =
  //           result.files.where((file) => file.size > 10 * 1024 * 1024);
  //       if (invalidFiles.isNotEmpty) {
  //         throw Exception(
  //             'file_size_too_large'.tr(args: [invalidFiles.first.name]));
  //       }

  //       // 驗證文件路徑
  //       final invalidPaths = result.files.where((file) => file.path == null);
  //       if (invalidPaths.isNotEmpty) {
  //         throw Exception('invalid_file_path'.tr());
  //       }

  //       setState(() {
  //         _selectedFiles.addAll(result.files);
  //       });
  //     }
  //   } catch (e) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text(e.toString()),
  //         backgroundColor: Colors.red,
  //       ),
  //     );
  //   }
  // }

  void _removeFile(PlatformFile file) {
    setState(() {
      _selectedFiles.remove(file);
    });
  }

  // Future<void> _handleSubmit() async {
  //   final content = _contentController.text.trim();
  //   if (content.isEmpty) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text('please_enter_content'.tr())),
  //     );
  //     return;
  //   }

  //   setState(() => _isSubmitting = true);

  //   try {
  //     await context.read<HomeworkCubit>().submitHomework(
  //           submissionId: widget.submissionId,
  //           // studentId: widget.studentId,
  //           content: content,
  //           files: _selectedFiles,
  //         );
  //   } finally {
  //     if (mounted) {
  //       setState(() => _isSubmitting = false);
  //     }
  //   }
  // }

  @override
  void dispose() {
    _contentController.dispose();
    super.dispose();
  }
}
