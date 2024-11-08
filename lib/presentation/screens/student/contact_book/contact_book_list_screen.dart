import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:edutec_hub/data/models/contact_book/contact_book.dart';

import 'package:edutec_hub/state_management/blocs/contact_book/contact_book_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

class ContactBookListScreen extends StatefulWidget {
  const ContactBookListScreen({Key? key}) : super(key: key);

  @override
  State<ContactBookListScreen> createState() => _ContactBookListScreenState();
}

class _ContactBookListScreenState extends State<ContactBookListScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ContactBookBloc>().add(
          LoadContactBooks(date: DateTime.now()),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactBookBloc, ContactBookState>(
      builder: (context, state) {
        return Scaffold(
          appBar: _buildTopBar(context, state),
          // body: NestedScrollView(
          //   headerSliverBuilder: (context, innerBoxIsScrolled) => [
          //     _buildSliverTopBar(context, state),
          //   ],
          body: _buildBody(context, state),
          // ),
        );
      },
    );
  }

  PreferredSizeWidget _buildTopBar(
      BuildContext context, ContactBookState state) {
    return PreferredSize(
      preferredSize: Size.fromHeight(130.h),
      child: FixedHeightSmoothTopBarV2(
        height: 130.h,
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'contact_book'.tr(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (state is ContactBookListLoaded) ...[
                  SizedBox(height: 4.h),
                  Text(
                    state.contactBooks.first.studentInfo.name,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSliverTopBar(BuildContext context, ContactBookState state) {
    return SliverAppBar(
      expandedHeight: 130.h,
      floating: false,
      pinned: true,
      flexibleSpace: FixedHeightSmoothTopBarV2(
        height: 130.h,
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'contact_book'.tr(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (state is ContactBookListLoaded) ...[
                  SizedBox(height: 4.h),
                  Text(
                    state.contactBooks.first.studentInfo.name,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, ContactBookState state) {
    if (state is ContactBookLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state is ContactBookError) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(state.message),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.read<ContactBookBloc>().add(
                      LoadContactBooks(date: DateTime.now()),
                    );
              },
              child: Text('retry'.tr()),
            ),
          ],
        ),
      );
    }

    if (state is ContactBookListLoaded) {
      return Column(
        children: [
          _buildCalendarHeader(state.selectedDate),
          _buildCalendar(context, state),
          _buildSelectedDateContent(context, state),
        ],
      );
    }

    return const SizedBox();
  }

  Widget _buildCalendarHeader(DateTime selectedDate) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 年月顯示
          Text(
            DateFormat('yyyy年MM月').format(selectedDate),
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          // 月份切換按鈕
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.chevron_left),
                onPressed: () {
                  final previousMonth = DateTime(
                    selectedDate.year,
                    selectedDate.month - 1,
                    1,
                  );
                  context.read<ContactBookBloc>().add(
                        LoadContactBooks(date: previousMonth),
                      );
                },
              ),
              IconButton(
                icon: const Icon(Icons.chevron_right),
                onPressed: () {
                  final nextMonth = DateTime(
                    selectedDate.year,
                    selectedDate.month + 1,
                    1,
                  );
                  context.read<ContactBookBloc>().add(
                        LoadContactBooks(date: nextMonth),
                      );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCalendar(BuildContext context, ContactBookListLoaded state) {
    return ReusableCalendar(
      selectedDay: state.selectedDate,
      onDaySelected: (selectedDay, focusedDay) {
        context.read<ContactBookBloc>().add(
              UpdateSelectedDate(date: selectedDay),
            );
      },
      markerBuilder: (context, date, _) {
        // 檢查是否有未讀聯絡簿
        final hasUnread = state.contactBooks.any((book) =>
            isSameDay(book.calendar.currentDate, date) &&
            book.calendar.dates.any((calDate) =>
                isSameDay(calDate.date, date) && !calDate.isSigned));

        if (hasUnread) {
          return Positioned(
            right: 1,
            top: 1,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              width: 8,
              height: 8,
            ),
          );
        }
        return null;
      },
    );
  }

  Widget _buildSelectedDateContent(
      BuildContext context, ContactBookListLoaded state) {
    final selectedBook = state.contactBooks.firstWhere(
      (book) => isSameDay(book.calendar.currentDate, state.selectedDate),
      orElse: () => state.contactBooks.first,
    );

    final hasPreview = selectedBook.calendar.dates.isNotEmpty &&
        selectedBook.calendar.dates.first.preview != null;
    final preview =
        hasPreview ? selectedBook.calendar.dates.first.preview : null;
    final isUnsigned =
        hasPreview && !selectedBook.calendar.dates.first.isSigned;

    return InkWell(
      onTap: () {
        if (hasPreview) {
          context
              .push(
            '/student-contact-books/daily?date=${state.selectedDate.toIso8601String()}',
          )
              .then((_) {
            context.read<ContactBookBloc>().add(
                  LoadContactBooks(date: state.selectedDate),
                );
          });
        }
      },
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.black12,
              width: 1,
            ),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                DateFormat('contact_book_date_format'.tr(), 'zh_TW')
                    .format(state.selectedDate),
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 12),
            if (hasPreview) ...[
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            preview!.title,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            preview.classType,
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              if (isUnsigned)
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.red.shade50,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.red.shade200),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.warning_amber_rounded,
                        color: Colors.red.shade400,
                        size: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'unsigned'.tr(),
                        style: TextStyle(
                          color: Colors.red.shade700,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
            ] else
              Expanded(
                child: Text(
                  'no_contact_book_data'.tr(),
                  style: const TextStyle(color: Colors.grey),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
