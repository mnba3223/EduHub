// 聯絡簿頁面
import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/teacher/teacher_contact_book_model.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/calendar.dart';
import 'package:edutec_hub/state_management/cubit/contact_book/teacher_contact_book_cubit.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class TeacherContactBookScreen extends StatefulWidget {
  const TeacherContactBookScreen({Key? key}) : super(key: key);

  @override
  State<TeacherContactBookScreen> createState() =>
      _TeacherContactBookScreenState();
}

class _TeacherContactBookScreenState extends State<TeacherContactBookScreen> {
  DateTime selectedDate = DateTime.now();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      context.read<TeacherContactBookCubit>()
        ..loadContactBooks()
        ..filterContactBooks(date: selectedDate);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTopBar(context),
          ReusableCalendar(
            selectedDay: DateTime.now(),
            onDaySelected: (selectedDay, focusedDay) {
              context
                  .read<TeacherContactBookCubit>()
                  .filterContactBooks(date: selectedDay);
            },
            markerBuilder: (context, date, events) {
              // 檢查這天是否有聯絡簿
              final hasContactBooks = context.select(
                (TeacherContactBookCubit cubit) => cubit.state.contactBooks
                    .any((book) => isSameDay(book.lessonDate, date)),
              );
              if (hasContactBooks) {
                return Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor,
                  ),
                  width: 6.w,
                  height: 6.h,
                );
              }
              return null;
            },
          ),
          // 當天聯絡簿列表
          Expanded(
            child:
                BlocBuilder<TeacherContactBookCubit, TeacherContactBookState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                final dayContactBooks = state.filteredContactBooks;

                if (dayContactBooks.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          DateFormat('yyyy/MM/dd').format(selectedDate),
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          'no_contact_books_today'.tr(),
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  );
                }

                return ListView.builder(
                  padding: EdgeInsets.all(16.w),
                  itemCount: dayContactBooks.length,
                  itemBuilder: (context, index) {
                    return _buildContactBookCard(dayContactBooks[index]);
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        // onPressed: () => _showAddContactBookDialog(context),
        child: Icon(Icons.add, size: 20.sp),
        // label: Text('add_contact_book'.tr(), style: TextStyle(fontSize: 14.sp)),
        // backgroundColor: Theme.of(context).primaryColor,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'teacher_contact_book'.tr(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContactBookCard(TeacherContactBook contactBook) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: ExpansionTile(
        tilePadding: EdgeInsets.all(16.w),
        title: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    contactBook.title,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  _buildInfoRow(Icons.person_outline, contactBook.studentName),
                  SizedBox(height: 4.h),
                  _buildInfoRow(Icons.calendar_today_outlined,
                      DateFormat('yyyy/MM/dd').format(contactBook.lessonDate)),
                ],
              ),
            ),
            _buildStatusChip(contactBook.status),
          ],
        ),
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12.r),
                bottomRight: Radius.circular(12.r),
              ),
            ),
            child: Column(
              children: [
                ...contactBook.messages
                    .map((message) => _buildMessageTile(message)),
                Padding(
                  padding: EdgeInsets.all(16.w),
                  child: ElevatedButton.icon(
                    onPressed: () => _showAddMessageDialog(
                        context, contactBook.contactBookId),
                    icon: Icon(Icons.add_comment, size: 20.sp),
                    label: Text('add_message'.tr(),
                        style: TextStyle(fontSize: 14.sp)),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.w, vertical: 12.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
    final isReplied = status == 'replied'.tr();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: isReplied ? Colors.green[100] : Colors.orange[100],
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Text(
        status,
        style: TextStyle(
          color: isReplied ? Colors.green[900] : Colors.orange[900],
          fontSize: 12.sp,
        ),
      ),
    );
  }

  Widget _buildMessageTile(TeacherContactBookMessage message) {
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
                      InkWell(
                        onTap: () {
                          context
                              .read<TeacherContactBookCubit>()
                              .downloadFile(message.uploadFile!);
                        },
                        child: Row(
                          children: [
                            Icon(Icons.attachment,
                                size: 16.sp, color: Colors.blue),
                            SizedBox(width: 4.w),
                            Text(
                              'attachment'.tr(),
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
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

  //  Future<void> _showAddContactBookDialog(BuildContext context) async {
  //   final titleController = TextEditingController();
  //   int? selectedStudentId;
  //   int? selectedLessonId;

  //   await showDialog(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //       title: Text('add_contact_book'.tr()),
  //       content: SingleChildScrollView(
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             TextField(
  //               controller: titleController,
  //               decoration: InputDecoration(
  //                 labelText: 'title'.tr(),
  //               ),
  //             ),
  //             SizedBox(height: 16.h),
  //             // 學生選擇
  //             DropdownButtonFormField<int>(
  //               decoration: InputDecoration(
  //                 labelText: 'select_student'.tr(),
  //               ),
  //               items: context.select((TeacherContactBookCubit cubit) =>
  //                   cubit.state.students.map((student) {
  //                 return DropdownMenuItem<int>(
  //                   value: student.id,
  //                   child: Text(student.name),
  //                 );
  //               }).toList()),
  //               onChanged: (value) => selectedStudentId = value,
  //             ),
  //             SizedBox(height: 16.h),
  //             // 課程選擇
  //             BlocBuilder<LessonCubit, LessonState>(
  //               builder: (context, state) {
  //                 return DropdownButtonFormField<int>(
  //                   decoration: InputDecoration(
  //                     labelText: 'select_lesson'.tr(),
  //                   ),
  //                   items: state.lessons.map((lesson) {
  //                     return DropdownMenuItem<int>(
  //                       value: lesson.lessonId,
  //                       child: Text(lesson.lessonTitle),
  //                     );
  //                   }).toList(),
  //                   onChanged: (value) => selectedLessonId = value,
  //                 );
  //               },
  //             ),
  //           ],
  //         ),
  //       ),
  //       actions: [
  //         TextButton(
  //           onPressed: () => Navigator.pop(context),
  //           child: Text('cancel'.tr()),
  //         ),
  //         TextButton(
  //           onPressed: () {
  //             if (titleController.text.isNotEmpty &&
  //                 selectedStudentId != null &&
  //                 selectedLessonId != null) {
  //               context.read<TeacherContactBookCubit>().createContactBook(
  //                     title: titleController.text,
  //                     studentId: selectedStudentId!,
  //                     lessonId: selectedLessonId!,
  //                   );
  //               Navigator.pop(context);
  //             }
  //           },
  //           child: Text('confirm'.tr()),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Future<void> _showAddMessageDialog(
      BuildContext context, int contactBookId) async {
    final messageController = TextEditingController();
    File? selectedFile;

    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('add_message'.tr()),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: messageController,
              decoration: InputDecoration(labelText: 'message_content'.tr()),
              maxLines: 3,
            ),
            SizedBox(height: 16.h),
            ElevatedButton.icon(
              onPressed: () async {
                final file = await FilePicker.platform.pickFiles();
                if (file != null) {
                  selectedFile = File(file.files.single.path!);
                }
              },
              icon: const Icon(Icons.attach_file),
              label: Text('attach_file'.tr()),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('cancel'.tr()),
          ),
          TextButton(
            onPressed: () {
              if (messageController.text.isNotEmpty) {
                context.read<TeacherContactBookCubit>().addMessage(
                      contactBookId: contactBookId,
                      message: messageController.text,
                      file: selectedFile,
                    );
                Navigator.pop(context);
              }
            },
            child: Text('confirm'.tr()),
          ),
        ],
      ),
    );
  }
}
