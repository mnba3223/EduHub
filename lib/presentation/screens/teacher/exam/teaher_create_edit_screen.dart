// screens/teacher/exam/teacher_exam_form_screen.dart
import 'dart:io';
import 'package:edutec_hub/data/models/common/lesson.dart';
import 'package:edutec_hub/state_management/cubit/exam/teacher_exam_cubit.dart';
import 'package:edutec_hub/state_management/cubit/lesson/lesson_cubit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:edutec_hub/data/models/teacher/teacher_exam.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TeacherExamFormScreen extends StatefulWidget {
  final int? examId;
  final TeacherExam? initialExam;

  const TeacherExamFormScreen({
    Key? key,
    this.examId,
    this.initialExam,
  }) : super(key: key);

  @override
  State<TeacherExamFormScreen> createState() => _TeacherExamFormScreenState();
}

class _TeacherExamFormScreenState extends State<TeacherExamFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _examNameController = TextEditingController();
  final _descriptionController = TextEditingController();

  DateTime? _selectedDate;
  int? _selectedLessonId;
  String? _fileName;
  File? _selectedFile;

  bool get isEditing => widget.examId != null;

  @override
  void initState() {
    super.initState();
    if (!isEditing) {
      context.read<LessonCubit>().loadLessons();
    }

    if (widget.initialExam != null) {
      _initializeWithExam(widget.initialExam!);
    }
  }

  void _initializeWithExam(TeacherExam exam) {
    _examNameController.text = exam.examName;
    _descriptionController.text = exam.examDescription;
    _selectedDate = exam.examDate;
    _selectedLessonId = exam.lessonId;
    if (exam.uploadFile != null) {
      _fileName = exam.uploadFile!.split('/').last;
    }
  }

  @override
  void dispose() {
    _examNameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTopBar(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.sp),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (isEditing)
                      _buildReadOnlyLessonInfo()
                    else
                      Column(
                        children: [
                          _buildDatePicker(),
                          SizedBox(height: 16.h),
                          if (_selectedDate != null)
                            Builder(
                              builder: (context) {
                                final lessonState =
                                    context.watch<LessonCubit>().state;
                                if (lessonState.isLoading) {
                                  return const Center(
                                      child: CircularProgressIndicator());
                                }

                                final availableLessons =
                                    lessonState.lessons.where((lesson) {
                                  return lesson.lessonDate.year ==
                                          _selectedDate!.year &&
                                      lesson.lessonDate.month ==
                                          _selectedDate!.month &&
                                      lesson.lessonDate.day ==
                                          _selectedDate!.day;
                                }).toList();

                                if (availableLessons.isEmpty) {
                                  return Text('所選日期沒有可用的課程');
                                }

                                return _buildLessonDropdown(availableLessons);
                              },
                            ),
                        ],
                      ),
                    SizedBox(height: 16.h),
                    if (isEditing || _selectedLessonId != null) ...[
                      _buildExamNameField(),
                      SizedBox(height: 16.h),
                      _buildDescriptionField(),
                      SizedBox(height: 16.h),
                      _buildFilePicker(),
                      SizedBox(height: 32.h),
                      _buildSubmitButton(),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLessonDropdown(List<Lesson> availableLessons) {
    return DropdownButtonFormField<int>(
      decoration: InputDecoration(
        labelText: '選擇課程*',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      value: _selectedLessonId,
      items: availableLessons.map((lesson) {
        return DropdownMenuItem(
          value: lesson.lessonId,
          child: Text(
            lesson.className,
            overflow: TextOverflow.ellipsis,
          ),
        );
      }).toList(),
      onChanged: (value) {
        setState(() => _selectedLessonId = value);
      },
      validator: (value) => value == null ? '請選擇課程' : null,
    );
  }

  Widget _buildReadOnlyLessonInfo() {
    return InputDecorator(
      decoration: InputDecoration(
        labelText: '課程',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.initialExam!.className),
          Text(
            _formatDate(widget.initialExam!.examDate),
            style: TextStyle(color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }

  Widget _buildTopBar() {
    return FixedHeightSmoothTopBarV2(
      height: 130.h,
      child: SafeArea(
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () => context.pop(),
            ),
            Text(
              isEditing ? '編輯考試' : '新增考試',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExamNameField() {
    return TextFormField(
      controller: _examNameController,
      decoration: InputDecoration(
        labelText: '考試名稱*',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 16.h,
        ),
      ),
      validator: (value) {
        if (value?.isEmpty ?? true) return '請輸入考試名稱';
        return null;
      },
    );
  }

  Widget _buildDescriptionField() {
    return TextFormField(
      controller: _descriptionController,
      decoration: InputDecoration(
        labelText: '考試說明*',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 16.h,
        ),
      ),
      maxLines: 3,
      validator: (value) {
        if (value?.isEmpty ?? true) return '請輸入考試說明';
        return null;
      },
    );
  }

  Widget _buildDatePicker() {
    return InkWell(
      onTap: () => _selectDate(context),
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: '考試日期*',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 16.h,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              _selectedDate == null ? '請選擇日期' : _formatDate(_selectedDate!),
              style: TextStyle(fontSize: 16.sp),
            ),
            Icon(Icons.calendar_today, size: 20.sp),
          ],
        ),
      ),
    );
  }

  Widget _buildFilePicker() {
    return InkWell(
      onTap: _pickFile,
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: '上傳檔案（選填）',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 16.h,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                _fileName ?? '選擇檔案',
                style: TextStyle(fontSize: 16.sp),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Icon(Icons.attach_file, size: 20.sp),
          ],
        ),
      ),
    );
  }

  Widget _buildSubmitButton() {
    return SizedBox(
      width: double.infinity,
      height: 48.h,
      child: ElevatedButton(
        onPressed: _submit,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        child: BlocBuilder<TeacherExamCubit, TeacherExamState>(
          builder: (context, state) {
            if (state.isLoading) {
              return SizedBox(
                width: 24.w,
                height: 24.w,
                child: const CircularProgressIndicator(color: Colors.white),
              );
            }
            return Text(
              isEditing ? '更新考試' : '創建考試',
              style: TextStyle(fontSize: 16.sp),
            );
          },
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() => _selectedDate = picked);
    }
  }

  Future<void> _pickFile() async {
    try {
      final result = await FilePicker.platform.pickFiles();
      if (result != null) {
        setState(() {
          _fileName = result.files.single.name;
          _selectedFile = File(result.files.single.path!);
        });
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('選擇檔案失敗：$e')),
        );
      }
    }
  }

  String _formatDate(DateTime date) {
    return '${date.year}/${date.month.toString().padLeft(2, '0')}/${date.day.toString().padLeft(2, '0')}';
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('請填寫所有必填欄位')),
      );
      return;
    }

    try {
      final request = ExamCreateRequest(
        lessonId: _selectedLessonId!,
        examName: _examNameController.text.trim(),
        examDescription: _descriptionController.text.trim(),
        examDate: _selectedDate!,
        uploadedFile: _selectedFile,
        uploadFile: isEditing ? widget.initialExam?.uploadFile : null,
        keepExistingFile:
            _selectedFile == null && widget.initialExam?.uploadFile != null,
      );

      final cubit = context.read<TeacherExamCubit>();
      if (isEditing) {
        await cubit.updateExam(widget.examId!, request);
      } else {
        await cubit.createExam(request);
      }

      if (!mounted) return;
      context.pop();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(isEditing ? '更新成功' : '創建成功')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('${isEditing ? '更新' : '創建'}失敗：$e')),
      );
    }
  }
}
