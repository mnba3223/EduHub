// import 'package:edutec_hub/config/user_session.dart';
// import 'package:edutec_hub/data/models/card_list.dart';
// import 'package:edutec_hub/data/repositories/silder_repository.dart';
// import 'package:edutec_hub/presentation/screens/student/home/widgets/student_home_setting_dialog.dart';

// import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
// import 'package:edutec_hub/presentation/ui_widget/card/card.dart';
// import 'package:edutec_hub/presentation/ui_widget/custom_widget/slider.dart';
// import 'package:edutec_hub/state_management/cubit/homework/homework_cubit.dart';
// import 'package:edutec_hub/state_management/cubit/homework/homework_state.dart';
// import 'package:edutec_hub/state_management/cubit/signInCubit.dart';
// import 'package:edutec_hub/state_management/cubit/silder/silder_cubit.dart';
// import 'package:edutec_hub/state_management/cubit/silder/slider_state.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:go_router/go_router.dart';

// class StudentHomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => SliderCubit(
//         repository: ImageSliderRepository(useMock: false),
//       )..loadSliders(),
//       child: StudentHomeContent(),
//     );
//   }
// }

// class StudentHomeContent extends StatefulWidget {
//   @override
//   State<StudentHomeContent> createState() => _StudentHomeContentState();
// }

// class _StudentHomeContentState extends State<StudentHomeContent> {
//   @override
//   void initState() {
//     super.initState();
//     context.read<HomeworkCubit>().loadHomeworks();
//     // context.read<SliderCubit>().loadSliders();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           _buildTopBar(),
//           Expanded(
//             child: ListView(
//               children: [
//                 _buildImageSlider(),
//                 _buildTodaysCourse(),
//                 _buildMyCourse(),
//                 _buildContactBook(),
//                 _buildHomework(),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildImageSlider() {
//     return BlocBuilder<SliderCubit, SliderState>(
//       buildWhen: (previous, current) =>
//           previous.isLoading != current.isLoading ||
//           previous.sliders != current.sliders ||
//           previous.error != current.error,
//       builder: (context, state) {
//         if (state.isLoading) {
//           return const SizedBox(
//             height: 200,
//             child: Center(child: CircularProgressIndicator()),
//           );
//         }

//         if (state.error != null) {
//           return SizedBox(
//             height: 200,
//             child: Center(
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(state.error!),
//                   ElevatedButton(
//                     onPressed: () =>
//                         context.read<SliderCubit>().refreshSliders(),
//                     child: const Text('重试'),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         }

//         return state.sliders.isEmpty
//             ? const SizedBox()
//             : SlidersContainer(
//                 sliders: state.sliders,
//               );
//       },
//     );
//   }

//   Widget _buildTopBar() {
//     final String username = UserSession.instance.username ?? 'Unknown Teacher';

//     return FixedHeightSmoothTopBarV2(
//       height: 140.h,
//       child: SafeArea(
//         child: Container(
//           padding: EdgeInsets.fromLTRB(20.w, 40.h, 20.w, 0.w),
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   // 顯示使用者頭像縮寫
//                   CircleAvatar(
//                     backgroundColor: Colors.blue,
//                     radius: 25,
//                     child: Text(
//                       username.isNotEmpty ? username[0].toUpperCase() : 'T',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20.sp,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Padding(
//                       padding: EdgeInsets.only(left: 16.w),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             username,
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 18.sp,
//                             ),
//                           ),
//                           // // 可以顯示 Role ID 或其他信息
//                           // if (UserSession.instance.roleId != null)
//                           //   Text(
//                           //     'Teacher ID: ${UserSession.instance.roleId}',
//                           //     style: TextStyle(
//                           //       color: Colors.white70,
//                           //       fontSize: 14.sp,
//                           //     ),
//                           //   ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   IconButton(
//                     icon: Icon(Icons.settings, color: Colors.white),
//                     onPressed: _showSettingsDialog,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void _showSettingsDialog() {
//     // 取得上層的 SignInCubit
//     final signInCubit = context.read<SignInCubit>();

//     showDialog(
//       context: context,
//       builder: (dialogContext) => BlocProvider.value(
//         value: signInCubit, // 將已存在的 SignInCubit 傳遞給對話框
//         child: const StudentHomeSettingDialog(),
//       ),
//     );
//   }

//   Widget _buildTodaysCourse() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding:
//               EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h, bottom: 10.h),
//           child: Text(
//             'todays_course'.tr(),
//             style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
//           ),
//         ),
//         SelfAnimatedCourseListView(
//           courseList: CourseListData.todaysCourseList,
//         ),
//       ],
//     );
//   }

//   Widget _buildMyCourse() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding:
//               EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h, bottom: 10.h),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 'all_courses'.tr(),
//                 style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
//               ),
//               GestureDetector(
//                 onTap: () => context.push('/student-courses'),
//                 child: Text(
//                   'more'.tr(),
//                   style: TextStyle(color: Colors.blue),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         SelfAnimatedCourseListView(
//           courseList: CourseListData.myCourseList,
//         ),
//       ],
//     );
//   }

//   Widget _buildContactBook() {
//     return Container(
//       margin: EdgeInsets.all(20.w),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text('contact_book'.tr(),
//                   style:
//                       TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
//               GestureDetector(
//                 // onTap: () => context.push('/message-board'),
//                 onTap: () => context.push('/student-contact-books'),
//                 child: Text(
//                   'more'.tr(),
//                   style: TextStyle(color: Colors.blue),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 10.h),
//           Container(
//             padding: EdgeInsets.all(15.w),
//             decoration: BoxDecoration(
//               color: Colors.grey[200],
//               borderRadius: BorderRadius.circular(10.r),
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('date'.tr()),
//                 Text('course'.tr()),
//                 Text('${('more'.tr())}→'),
//               ],
//             ),
//           ),
//           SizedBox(height: 10.h),
//           Container(
//             padding: EdgeInsets.all(15.w),
//             decoration: BoxDecoration(
//               color: Colors.grey[200],
//               borderRadius: BorderRadius.circular(10.r),
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('date'.tr()),
//                 Text('course'.tr()),
//                 Text('${('more'.tr())}→'),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildHomework() {
//     return Container(
//       margin: EdgeInsets.all(20.w),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 'homework'.tr(),
//                 style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
//               ),
//               GestureDetector(
//                 onTap: () => context.push('/student-homework'),
//                 child: Text(
//                   'more'.tr(),
//                   style: TextStyle(color: Colors.blue),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 10.h),
//           BlocBuilder<HomeworkCubit, HomeworkState>(
//             builder: (context, state) {
//               if (state.isLoading) {
//                 return Center(child: CircularProgressIndicator());
//               }

//               // 獲取未來7天內的待完成作業
//               // final pendingHomeworks = state.homeworks
//               //     .where((homework) =>
//               //         homework.status == HomeworkStatus.pending &&
//               //         homework.dueDate.difference(DateTime.now()).inDays <= 7)
//               //     .toList();

//               // 獲取所有待完成作業，並按截止日期排序
//               final pendingHomeworks =
//                   context.read<HomeworkCubit>().getHomePageHomeworks();
//               print('Pending homeworks: ${pendingHomeworks.length}'); // 添加日誌
//               if (pendingHomeworks.isEmpty) {
//                 return Container(
//                   padding: EdgeInsets.all(15.w),
//                   decoration: BoxDecoration(
//                     color: Colors.grey[100],
//                     borderRadius: BorderRadius.circular(10.r),
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(Icons.check_circle, color: Colors.green),
//                       SizedBox(width: 8.w),
//                       Text('no_pending_homework'.tr()),
//                     ],
//                   ),
//                 );
//               }

//               // 只顯示最多3個作業
//               final displayHomeworks = pendingHomeworks.take(3).toList();

//               return Column(
//                 children: displayHomeworks.map((homework) {
//                   final daysLeft =
//                       homework.endTime.difference(DateTime.now()).inDays;

//                   return Container(
//                     margin: EdgeInsets.only(bottom: 8.h),
//                     padding: EdgeInsets.all(12.w),
//                     decoration: BoxDecoration(
//                       color: Colors.grey[100],
//                       borderRadius: BorderRadius.circular(10.r),
//                       border: Border.all(
//                         color: daysLeft <= 1
//                             ? Colors.red[100]!
//                             : Colors.transparent,
//                       ),
//                     ),
//                     child: InkWell(
//                       onTap: () {
//                         context.pushNamed(
//                           'student-homework-detail',
//                           pathParameters: {
//                             'id': homework.homeworkId.toString()
//                           },
//                         );
//                       },
//                       child: Row(
//                         children: [
//                           Container(
//                             padding: EdgeInsets.all(8.w),
//                             decoration: BoxDecoration(
//                               color: _getDueDateColor(daysLeft),
//                               borderRadius: BorderRadius.circular(8.r),
//                             ),
//                             child: Text(
//                               '$daysLeft天',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                           SizedBox(width: 12.w),
//                           Expanded(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   homework.lessonTitle,
//                                   style: TextStyle(
//                                     fontSize: 14.sp,
//                                     color: Colors.grey[600],
//                                   ),
//                                 ),
//                                 Text(
//                                   homework.description,
//                                   style: TextStyle(
//                                     fontSize: 16.sp,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                   maxLines: 1,
//                                   overflow: TextOverflow.ellipsis,
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Icon(Icons.chevron_right, color: Colors.grey),
//                         ],
//                       ),
//                     ),
//                   );
//                 }).toList(),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }

//   Color _getDueDateColor(int daysLeft) {
//     if (daysLeft <= 1) {
//       return Colors.red;
//     } else if (daysLeft <= 3) {
//       return Colors.orange;
//     } else {
//       return Colors.blue;
//     }
//   }

//   Widget _buildInfoCard(String title, Color color) {
//     return Container(
//       margin: EdgeInsets.all(20.w),
//       padding: EdgeInsets.all(15.w),
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(15.r),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(title,
//               style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
//           SizedBox(height: 10.h),
//           Row(
//             children: [
//               Container(
//                 padding: EdgeInsets.all(10.w),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10.r),
//                 ),
//                 child: Icon(Icons.egg_alt, color: Colors.orange),
//               ),
//               SizedBox(width: 10.w),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('Breakfast',
//                         style: TextStyle(fontWeight: FontWeight.bold)),
//                     Text('Bread, Peanut butter, Apple'),
//                     Text('525 kcal',
//                         style: TextStyle(fontWeight: FontWeight.bold)),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/config/user_session.dart';
import 'package:edutec_hub/data/models/course/course.dart';
import 'package:edutec_hub/data/models/student/homework.dart';
import 'package:edutec_hub/data/repositories/course/course_repository.dart';

import 'package:edutec_hub/data/repositories/silder_repository.dart';
import 'package:edutec_hub/presentation/screens/student/home/widgets/student_home_course_screen.dart';
import 'package:edutec_hub/presentation/screens/student/home/widgets/student_home_setting_dialog.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/slider.dart';
import 'package:edutec_hub/state_management/cubit/course/course_cubit.dart';
import 'package:edutec_hub/state_management/cubit/homework/homework_cubit.dart';
import 'package:edutec_hub/state_management/cubit/homework/homework_state.dart';
import 'package:edutec_hub/state_management/cubit/signInCubit.dart';
import 'package:edutec_hub/state_management/cubit/silder/silder_cubit.dart';
import 'package:edutec_hub/state_management/cubit/silder/slider_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class StudentHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SliderCubit(
            repository: ImageSliderRepository(useMock: false),
          )..loadSliders(),
        ),
        BlocProvider(
          create: (context) => CourseCubit(
            repository: CourseRepositoryImpl(useMock: false),
          )..loadAllData(),
        ),
      ],
      child: StudentHomeContent(),
    );
  }
}

class StudentHomeContent extends StatefulWidget {
  @override
  State<StudentHomeContent> createState() => _StudentHomeContentState();
}

class _StudentHomeContentState extends State<StudentHomeContent> {
  @override
  void initState() {
    super.initState();
    context.read<HomeworkCubit>().loadHomeworks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTopBar(),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                await Future.wait([
                  context.read<HomeworkCubit>().loadHomeworks(),
                  context.read<CourseCubit>().loadAllData(),
                  context.read<SliderCubit>().loadSliders(),
                ]);
              },
              child: ListView(
                children: [
                  _buildImageSlider(),
                  _buildTodaysCourse(),
                  _buildMyCourse(),
                  _buildContactBook(),
                  _buildHomework(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopBar() {
    final String username = UserSession.instance.username ?? 'Unknown';

    return FixedHeightSmoothTopBarV2(
      height: 140.h,
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(20.w, 40.h, 20.w, 0.w),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 25,
                    child: Text(
                      username.isNotEmpty ? username[0].toUpperCase() : 'S',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            username,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.settings, color: Colors.white),
                    onPressed: _showSettingsDialog,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageSlider() {
    return BlocBuilder<SliderCubit, SliderState>(
      buildWhen: (previous, current) =>
          previous.isLoading != current.isLoading ||
          previous.sliders != current.sliders ||
          previous.error != current.error,
      builder: (context, state) {
        if (state.isLoading) {
          return const SizedBox(
            height: 200,
            child: Center(child: CircularProgressIndicator()),
          );
        }

        if (state.error != null) {
          return SizedBox(
            height: 200,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(state.error!),
                  ElevatedButton(
                    onPressed: () =>
                        context.read<SliderCubit>().refreshSliders(),
                    child: Text('retry'.tr()),
                  ),
                ],
              ),
            ),
          );
        }

        return state.sliders.isEmpty
            ? const SizedBox()
            : SlidersContainer(sliders: state.sliders);
      },
    );
  }

  Widget _buildTodaysCourse() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            top: 20.h,
            bottom: 10.h,
          ),
          child: Text(
            'todays_course'.tr(),
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        BlocBuilder<CourseCubit, CourseState>(
          builder: (context, state) {
            if (state.isLoading) {
              return Center(child: CircularProgressIndicator());
            }

            if (state.error != null) {
              return Center(child: Text(state.error!));
            }

            if (state.todayLessons.isEmpty) {
              return Container(
                padding: EdgeInsets.all(16.w),
                child: Center(
                  child: Text('no_course_records'.tr()),
                ),
              );
            }

            return // 顯示今日課程
                SelfAnimatedCourseListView(
              items: state.todayLessons,
              isToday: true,
            );
            // return CourseListView(
            //   courses: [],
            //   lessons: state.todayLessons,
            //   isToday: true,
            // );
          },
        ),
      ],
    );
  }

  Widget _buildMyCourse() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            top: 20.h,
            bottom: 10.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'all_courses'.tr(),
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () => context.push('/student-courses'),
                child: Text(
                  'more'.tr(),
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
        BlocBuilder<CourseCubit, CourseState>(
          builder: (context, state) {
            if (state.isLoading) {
              return Center(child: CircularProgressIndicator());
            }

            if (state.error != null) {
              return Center(child: Text(state.error!));
            }

            final courses = context.read<CourseCubit>().getTopSubjectCourses();
            return SelfAnimatedCourseListView(
              items: state.allCourses,
              isToday: false,
            );
            // return CourseListView(
            //   courses: courses,
            //   lessons: [],
            //   isToday: false,
            // );
          },
        ),
      ],
    );
  }

  Widget _buildContactBook() {
    return Container(
      margin: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'contact_book'.tr(),
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () => context.push('/student-contact-books'),
                child: Text(
                  'more'.tr(),
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          _buildContactBookItem(),
          SizedBox(height: 10.h),
          _buildContactBookItem(),
        ],
      ),
    );
  }

  Widget _buildContactBookItem() {
    return Container(
      padding: EdgeInsets.all(15.w),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('date'.tr()),
          Text('course'.tr()),
          Text('${('more'.tr())}→'),
        ],
      ),
    );
  }

  Widget _buildHomework() {
    return Container(
      margin: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'homework'.tr(),
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () => context.push('/student-homework'),
                child: Text(
                  'more'.tr(),
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          _buildHomeworkList(),
        ],
      ),
    );
  }

  Widget _buildHomeworkList() {
    return BlocBuilder<HomeworkCubit, HomeworkState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(child: CircularProgressIndicator());
        }

        final pendingHomeworks =
            context.read<HomeworkCubit>().getHomePageHomeworks();

        if (pendingHomeworks.isEmpty) {
          return Container(
            padding: EdgeInsets.all(15.w),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check_circle, color: Colors.green),
                SizedBox(width: 8.w),
                Text('no_pending_homework'.tr()),
              ],
            ),
          );
        }

        return Column(
          children: pendingHomeworks.take(3).map((homework) {
            final daysLeft = homework.endTime.difference(DateTime.now()).inDays;
            return _buildHomeworkItem(homework, daysLeft);
          }).toList(),
        );
      },
    );
  }

  Widget _buildHomeworkItem(HomeworkListItem homework, int daysLeft) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: daysLeft <= 1 ? Colors.red[100]! : Colors.transparent,
        ),
      ),
      child: InkWell(
        onTap: () {
          context.pushNamed(
            'student-homework-detail',
            pathParameters: {'id': homework.homeworkId.toString()},
          );
        },
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(8.w),
              decoration: BoxDecoration(
                color: _getDueDateColor(daysLeft),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Text(
                '$daysLeft天',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    homework.lessonTitle,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    homework.description,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Icon(Icons.chevron_right, color: Colors.grey),
          ],
        ),
      ),
    );
  }

  Color _getDueDateColor(int daysLeft) {
    if (daysLeft <= 1) {
      return Colors.red;
    } else if (daysLeft <= 3) {
      return Colors.orange;
    } else {
      return Colors.blue;
    }
  }

  void _showSettingsDialog() {
    final signInCubit = context.read<SignInCubit>();
    showDialog(
      context: context,
      builder: (dialogContext) => BlocProvider.value(
        value: signInCubit,
        child: const StudentHomeSettingDialog(),
      ),
    );
  }
}
