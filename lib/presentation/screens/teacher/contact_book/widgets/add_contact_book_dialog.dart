import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/teacher/teacher_contact_book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:edutec_hub/data/models/common/lesson.dart';

import 'package:edutec_hub/state_management/cubit/contact_book/teacher_contact_book_cubit.dart';
import 'package:edutec_hub/state_management/cubit/lesson/lesson_cubit.dart';

class CreateContactBookDialog extends StatefulWidget {
  const CreateContactBookDialog({Key? key}) : super(key: key);

  @override
  State<CreateContactBookDialog> createState() =>
      _CreateContactBookDialogState();
}

class _CreateContactBookDialogState extends State<CreateContactBookDialog> {
  final titleController = TextEditingController();
  Lesson? selectedLesson;
  LessonStudent? selectedStudent;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('create_contact_book'.tr()),
      contentPadding: EdgeInsets.all(16.w),
      content: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText: 'title'.tr(),
                  isDense: true,
                ),
              ),
              SizedBox(height: 16.h),
              // 課程選擇
              BlocBuilder<LessonCubit, LessonState>(
                builder: (context, lessonState) {
                  if (lessonState.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (lessonState.lessons.isEmpty) {
                    return Text('no_lessons_available'.tr());
                  }

                  return DropdownButtonFormField<Lesson>(
                    decoration: InputDecoration(
                      labelText: 'select_lesson'.tr(),
                      isDense: true,
                    ),
                    isExpanded: true,
                    value: selectedLesson,
                    hint: Text('please_select_lesson'.tr()),
                    items: lessonState.lessons.map((lesson) {
                      final displayText = '${lesson.className}\n'
                          '${lesson.courseName} (${DateFormat('MM/dd HH:mm').format(lesson.lessonDate)})';

                      return DropdownMenuItem<Lesson>(
                        value: lesson,
                        child: Text(
                          displayText,
                          style: TextStyle(fontSize: 14.sp),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      );
                    }).toList(),
                    onChanged: (lesson) {
                      if (lesson != null) {
                        setState(() {
                          selectedLesson = lesson;
                          selectedStudent = null;
                        });
                        context
                            .read<TeacherContactBookCubit>()
                            .loadLessonStudents(lesson.lessonId);
                      }
                    },
                  );
                },
              ),
              SizedBox(height: 16.h),
              // 學生選擇
              BlocBuilder<TeacherContactBookCubit, TeacherContactBookState>(
                builder: (context, state) {
                  if (selectedLesson == null) {
                    return const SizedBox.shrink();
                  }

                  if (state.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (state.lessonStudents.isEmpty) {
                    return Text('no_students_in_lesson'.tr());
                  }

                  return DropdownButtonFormField<LessonStudent>(
                    decoration: InputDecoration(
                      labelText: 'select_student'.tr(),
                      isDense: true,
                    ),
                    isExpanded: true,
                    value: selectedStudent,
                    hint: Text('please_select_student'.tr()),
                    items: state.lessonStudents.map((student) {
                      final displayText = student.status == 'Normal'
                          ? student.studentName
                          : '${student.studentName} (${student.status})';

                      return DropdownMenuItem<LessonStudent>(
                        value: student,
                        child: Text(
                          displayText,
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      );
                    }).toList(),
                    onChanged: (student) =>
                        setState(() => selectedStudent = student),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('cancel'.tr()),
        ),
        TextButton(
          onPressed: () async {
            // 表單驗證
            if (titleController.text.trim().isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('title_cannot_be_empty'.tr()),
                  backgroundColor: Colors.red,
                ),
              );
              return;
            }

            if (selectedLesson == null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('please_select_lesson'.tr()),
                  backgroundColor: Colors.red,
                ),
              );
              return;
            }

            if (selectedStudent == null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('please_select_student'.tr()),
                  backgroundColor: Colors.red,
                ),
              );
              return;
            }
            try {
              await context.read<TeacherContactBookCubit>().createContactBook(
                    title: titleController.text.trim(),
                    studentId: selectedStudent!.studentId,
                    lessonId: selectedLesson!.lessonId,
                  );

              if (!mounted) return;
              Navigator.pop(context); // 只需要關閉對話框

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('contact_book_created'.tr()),
                  backgroundColor: Colors.green,
                ),
              );
            } catch (e) {
              if (!mounted) return;
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(e.toString()),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          child: Text('confirm'.tr()),
        ),
      ],
    );
  }

  @override
  void dispose() {
    titleController.dispose();
    super.dispose();
  }
}
