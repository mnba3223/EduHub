import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/data/models/common/lesson.dart';
import 'package:edutec_hub/data/models/teacher/teacher_contact_book_model.dart';
import 'package:edutec_hub/presentation/screens/teacher/contact_book/teacher_contact_book_detail_screen.dart';
import 'package:edutec_hub/presentation/screens/teacher/contact_book/widgets/add_contact_book_dialog.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/calendar.dart';
import 'package:edutec_hub/state_management/cubit/contact_book/teacher_contact_book_cubit.dart';
import 'package:edutec_hub/state_management/cubit/lesson/lesson_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
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
      context.read<LessonCubit>().loadLessons();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTopBar(context),
          ReusableCalendar(
            selectedDay: selectedDate,
            onDaySelected: (selectedDay, focusedDay) {
              setState(() => selectedDate = selectedDay);
              context
                  .read<TeacherContactBookCubit>()
                  .filterContactBooks(date: selectedDay);
            },
            markerBuilder: (context, date, events) {
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
                    return _buildContactBookCard(
                        context, dayContactBooks[index]);
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showCreateContactBookDialog(context),
        child: Icon(Icons.add, size: 24.sp),
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

  Widget _buildContactBookCard(
      BuildContext context, TeacherContactBook contactBook) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.h),
      child: InkWell(
        onTap: () {
          context.push(
            '/teacher-contact/detail/${contactBook.contactBookId}',
            extra: contactBook,
          );
        },
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Row(
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
                    _buildInfoRow(
                        Icons.person_outline, contactBook.studentName),
                    SizedBox(height: 4.h),
                    _buildInfoRow(
                      Icons.calendar_today_outlined,
                      DateFormat('yyyy/MM/dd').format(contactBook.lessonDate),
                    ),
                    SizedBox(height: 4.h),
                    _buildInfoRow(Icons.chat_bubble_outline,
                        '${contactBook.messages.length} ${'messages'.tr()}'),
                  ],
                ),
              ),
              Column(
                children: [
                  _buildStatusChip(contactBook.status),
                  SizedBox(height: 8.h),
                  Icon(Icons.arrow_forward_ios, size: 16.sp),
                ],
              ),
            ],
          ),
        ),
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

  Future<void> _showCreateContactBookDialog(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (dialogContext) => MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: context.read<LessonCubit>(),
          ),
          BlocProvider.value(
            value: context.read<TeacherContactBookCubit>(),
          ),
        ],
        child: const CreateContactBookDialog(),
      ),
    );
  }
}
