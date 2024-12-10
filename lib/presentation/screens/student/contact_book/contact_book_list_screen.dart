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

// class ContactBookListScreen extends StatefulWidget {
//   const ContactBookListScreen({Key? key}) : super(key: key);

//   @override
//   State<ContactBookListScreen> createState() => _ContactBookListScreenState();
// }

// class _ContactBookListScreenState extends State<ContactBookListScreen> {
//   @override
//   void initState() {
//     super.initState();
//     context.read<ContactBookBloc>().add(
//           LoadContactBooks(date: DateTime.now()),
//         );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ContactBookBloc, ContactBookState>(
//       builder: (context, state) {
//         return Scaffold(
//           appBar: _buildTopBar(context, state),
//           // body: NestedScrollView(
//           //   headerSliverBuilder: (context, innerBoxIsScrolled) => [
//           //     _buildSliverTopBar(context, state),
//           //   ],
//           body: _buildBody(context, state),
//           // ),
//         );
//       },
//     );
//   }

//   PreferredSizeWidget _buildTopBar(
//       BuildContext context, ContactBookState state) {
//     return PreferredSize(
//       preferredSize: Size.fromHeight(130.h),
//       child: FixedHeightSmoothTopBarV2(
//         height: 130.h,
//         child: SafeArea(
//           child: Container(
//             padding: EdgeInsets.symmetric(horizontal: 16.w),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   'contact_book'.tr(),
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 20.sp,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 if (state is ContactBookListLoaded &&
//                     state.contactBooks.isNotEmpty) ...[
//                   SizedBox(height: 4.h),
//                   Text(
//                     state.contactBooks.first.studentName,
//                     style: TextStyle(
//                       color: Colors.white.withOpacity(0.9),
//                       fontSize: 14.sp,
//                     ),
//                   ),
//                 ],
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   // Widget _buildSliverTopBar(BuildContext context, ContactBookState state) {
//   //   return SliverAppBar(
//   //     expandedHeight: 130.h,
//   //     floating: false,
//   //     pinned: true,
//   //     flexibleSpace: FixedHeightSmoothTopBarV2(
//   //       height: 130.h,
//   //       child: SafeArea(
//   //         child: Container(
//   //           padding: EdgeInsets.symmetric(horizontal: 16.w),
//   //           child: Column(
//   //             mainAxisAlignment: MainAxisAlignment.center,
//   //             crossAxisAlignment: CrossAxisAlignment.center,
//   //             children: [
//   //               Text(
//   //                 'contact_book'.tr(),
//   //                 style: TextStyle(
//   //                   color: Colors.white,
//   //                   fontSize: 20.sp,
//   //                   fontWeight: FontWeight.bold,
//   //                 ),
//   //               ),
//   //               if (state is ContactBookListLoaded) ...[
//   //                 SizedBox(height: 4.h),
//   //                 Text(
//   //                   state.contactBooks.first.studentInfo.name,
//   //                   style: TextStyle(
//   //                     color: Colors.white.withOpacity(0.9),
//   //                     fontSize: 14.sp,
//   //                   ),
//   //                 ),
//   //               ],
//   //             ],
//   //           ),
//   //         ),
//   //       ),
//   //     ),
//   //   );
//   // }

//   Widget _buildBody(BuildContext context, ContactBookState state) {
//     if (state is ContactBookLoading) {
//       return const Center(child: CircularProgressIndicator());
//     }

//     if (state is ContactBookError) {
//       return Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(state.message),
//             const SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: () {
//                 context.read<ContactBookBloc>().add(
//                       LoadContactBooks(date: DateTime.now()),
//                     );
//               },
//               child: Text('retry'.tr()),
//             ),
//           ],
//         ),
//       );
//     }

//     if (state is ContactBookListLoaded) {
//       return Column(
//         children: [
//           _buildCalendarHeader(state.selectedDate),
//           _buildCalendar(context, state),
//           _buildSelectedDateContent(context, state),
//         ],
//       );
//     }

//     return const SizedBox();
//   }

//   Widget _buildCalendarHeader(DateTime selectedDate) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           // 年月顯示
//           Text(
//             DateFormat('yyyy年MM月').format(selectedDate),
//             style: const TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           // 月份切換按鈕
//           Row(
//             children: [
//               IconButton(
//                 icon: const Icon(Icons.chevron_left),
//                 onPressed: () {
//                   final previousMonth = DateTime(
//                     selectedDate.year,
//                     selectedDate.month - 1,
//                     1,
//                   );
//                   context.read<ContactBookBloc>().add(
//                         LoadContactBooks(date: previousMonth),
//                       );
//                 },
//               ),
//               IconButton(
//                 icon: const Icon(Icons.chevron_right),
//                 onPressed: () {
//                   final nextMonth = DateTime(
//                     selectedDate.year,
//                     selectedDate.month + 1,
//                     1,
//                   );
//                   context.read<ContactBookBloc>().add(
//                         LoadContactBooks(date: nextMonth),
//                       );
//                 },
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildNoContactBookContent() {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//       child: Text(
//         'no_contact_book_data'.tr(),
//         style: const TextStyle(color: Colors.grey),
//       ),
//     );
//   }

//   Widget _buildCalendar(BuildContext context, ContactBookListLoaded state) {
//     return ReusableCalendar(
//       selectedDay: state.selectedDate,
//       onDaySelected: (selectedDay, focusedDay) {
//         final hasContactBook = state.contactBooks
//             .any((book) => isSameDay(book.lessonDate, selectedDay));
//         if (hasContactBook) {
//           context.read<ContactBookBloc>().add(
//                 UpdateSelectedDate(date: selectedDay),
//               );
//         }
//       },
//       markerBuilder: (context, date, _) {
//         // 检查该日期是否有联络簿
//         final contactBook = state.contactBooks
//             .where((book) => isSameDay(book.lessonDate, date))
//             .firstOrNull;

//         if (contactBook != null) {
//           return Positioned(
//             right: 1,
//             top: 1,
//             child: Container(
//               width: 8.w,
//               height: 8.w,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.red.shade400,
//               ),
//             ),
//           );
//         }
//         return null;
//       },
//     );
//   }

//   Widget _buildMessageIndicator(int count) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
//       decoration: BoxDecoration(
//         color: Colors.blue.shade50,
//         borderRadius: BorderRadius.circular(12.r),
//         border: Border.all(color: Colors.blue.shade100),
//       ),
//       child: Text(
//         count.toString(),
//         style: TextStyle(
//           color: Colors.blue.shade700,
//           fontSize: 12.sp,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     );
//   }

//   Widget _buildDateContainer(DateTime date) {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
//       decoration: BoxDecoration(
//         color: Colors.blue.shade100,
//         borderRadius: BorderRadius.circular(4),
//       ),
//       child: Text(
//         DateFormat('contact_book_date_format'.tr(), 'zh_TW').format(date),
//         style: const TextStyle(
//           fontSize: 14,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     );
//   }

//   void _navigateToDetail(
//       BuildContext context, ContactBook contactBook, DateTime date) {
//     context.push(
//       '/student-contact-books/daily',
//       extra: {
//         'date': date,
//         'contactBook': contactBook,
//       },
//     ).then((_) {
//       context.read<ContactBookBloc>().add(
//             LoadContactBooks(date: date),
//           );
//     });
//   }

//   Widget _buildSelectedDateContent(
//       BuildContext context, ContactBookListLoaded state) {
//     // 获取选中日期的联络簿
//     final selectedBooks = state.contactBooks
//         .where((book) => isSameDay(book.lessonDate, state.selectedDate))
//         .toList();

//     if (selectedBooks.isEmpty) {
//       return _buildNoContactBookContent();
//     }

//     return Column(
//       children: [
//         ListView.separated(
//           shrinkWrap: true,
//           physics: const NeverScrollableScrollPhysics(),
//           itemCount: selectedBooks.length,
//           separatorBuilder: (context, index) => Divider(height: 1.h),
//           itemBuilder: (context, index) {
//             final book = selectedBooks[index];
//             return ListTile(
//               onTap: () {
//                 final uri = Uri(
//                   path: '/student-contact-books/daily',
//                   queryParameters: {
//                     'contactBookId': book.contactBookId.toString(),
//                   },
//                 ).toString();

//                 context.push(uri);
//               },
//               title: Text(
//                 book.title,
//                 style: TextStyle(
//                   fontSize: 15.sp,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               subtitle: Text(
//                 book.teacherName,
//                 style: TextStyle(
//                   fontSize: 13.sp,
//                   color: Colors.grey[600],
//                 ),
//               ),
//               trailing: book.messages.isNotEmpty
//                   ? _buildMessageIndicator(book.messages.length)
//                   : null,
//             );
//           },
//         ),
//       ],
//     );
//   }
// }
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
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.h),
        child: BlocBuilder<ContactBookBloc, ContactBookState>(
          builder: (context, state) {
            return _buildTopBar(context, state);
          },
        ),
      ),
      body: BlocBuilder<ContactBookBloc, ContactBookState>(
        builder: (context, state) {
          if (state is ContactBookLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is ContactBookError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(state.message),
                  SizedBox(height: 16.h),
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
                Expanded(
                  child: _buildSelectedDateContent(context, state),
                ),
              ],
            );
          }

          return const SizedBox();
        },
      ),
    );
  }

  Widget _buildTopBar(BuildContext context, ContactBookState state) {
    return FixedHeightSmoothTopBarV2(
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
              if (state is ContactBookListLoaded &&
                  state.contactBooks.isNotEmpty) ...[
                SizedBox(height: 4.h),
                Text(
                  state.contactBooks.first.studentName,
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
    );
  }

  Widget _buildCalendarHeader(DateTime selectedDate) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            DateFormat('yyyy年MM月').format(selectedDate),
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
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
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ReusableCalendar(
        selectedDay: state.selectedDate,
        onDaySelected: (selectedDay, focusedDay) {
          context.read<ContactBookBloc>().add(
                UpdateSelectedDate(date: selectedDay),
              );
        },
        markerBuilder: (context, date, _) {
          final contactBooksOnDay = state.contactBooks
              .where((book) => isSameDay(book.lessonDate, date))
              .toList();

          if (contactBooksOnDay.isNotEmpty) {
            return Positioned(
              right: 4,
              top: 2,
              child: Container(
                padding: EdgeInsets.all(4.w),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Text(
                  contactBooksOnDay.length.toString(),
                  style: TextStyle(
                    color: Colors.blue.shade900,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          }
          return null;
        },
      ),
    );
  }

  Widget _buildSelectedDateContent(
      BuildContext context, ContactBookListLoaded state) {
    // 不管有没有数据都显示内容区域
    return Column(
      children: [
        // 显示选中日期
        Container(
          padding: EdgeInsets.all(16.w),
          color: Colors.grey[50],
          child: Row(
            children: [
              Icon(Icons.calendar_today, size: 16.sp, color: Colors.grey[600]),
              SizedBox(width: 8.w),
              Text(
                DateFormat('yyyy/MM/dd').format(state.selectedDate),
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),

        // 内容区域
        Expanded(
          child: _buildDateContent(context, state),
        ),
      ],
    );
  }

  Widget _buildDateContent(BuildContext context, ContactBookListLoaded state) {
    final selectedBooks = state.contactBooks
        .where((book) => isSameDay(book.lessonDate, state.selectedDate))
        .toList();

    if (selectedBooks.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.event_busy,
              size: 48.sp,
              color: Colors.grey[400],
            ),
            SizedBox(height: 16.h),
            Text(
              'no_contact_book_data'.tr(),
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemCount: selectedBooks.length,
      itemBuilder: (context, index) {
        final book = selectedBooks[index];
        return Card(
          margin: EdgeInsets.only(bottom: 8.h),
          child: InkWell(
            borderRadius: BorderRadius.circular(8.r),
            onTap: () {
              context.push(
                '/student-contact-books/daily?contactBookId=${book.contactBookId}',
              );
            },
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    book.title,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person,
                              size: 16.sp, color: Colors.grey[600]),
                          SizedBox(width: 4.w),
                          Text(
                            book.teacherName,
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      if (book.messages.isNotEmpty)
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                            vertical: 4.h,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Text(
                            book.messages.length.toString(),
                            style: TextStyle(
                              color: Colors.blue.shade700,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildMessageIndicator(int count) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: Colors.blue.shade100),
      ),
      child: Text(
        count.toString(),
        style: TextStyle(
          color: Colors.blue.shade700,
          fontSize: 12.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
