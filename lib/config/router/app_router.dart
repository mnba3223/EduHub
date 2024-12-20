import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/config/router/provider_config.dart';
import 'package:edutec_hub/data/models/teacher/teacher_contact_book_model.dart';
import 'package:edutec_hub/data/models/teacher/teacher_exam.dart';
import 'package:edutec_hub/data/models/common/user_role.dart';
import 'package:edutec_hub/data/repositories/leave/leave_repository.dart';

import 'package:edutec_hub/data/repositories/student_exam_repository.dart';

import 'package:edutec_hub/presentation/screens/message_board/message_board_screen.dart';
import 'package:edutec_hub/presentation/screens/student/booking/student_booking_history_screen.dart';
import 'package:edutec_hub/presentation/screens/student/contact_book/contact_book_detail_screen.dart';
import 'package:edutec_hub/presentation/screens/student/contact_book/contact_book_list_screen.dart';
import 'package:edutec_hub/presentation/screens/student/course/student_lesson_screen.dart';

import 'package:edutec_hub/presentation/screens/student/exam/exam_screen.dart';
import 'package:edutec_hub/presentation/screens/student/homework/student_homework_detail_screen.dart';
import 'package:edutec_hub/presentation/screens/student/homework/student_homework_screen.dart';
import 'package:edutec_hub/presentation/screens/student/attendance/student_attendance_screen.dart';
import 'package:edutec_hub/presentation/screens/student/homework/student_homwork_submit_screen.dart';
import 'package:edutec_hub/presentation/screens/student/leave/student_leave_screen.dart';
import 'package:edutec_hub/presentation/screens/student/leave/student_request_form_screen.dart';
import 'package:edutec_hub/presentation/screens/student/student_payment_upload_screen.dart';
import 'package:edutec_hub/presentation/screens/teacher/attendance/teacher_leave_screen.dart';

import 'package:edutec_hub/presentation/screens/teacher/contact_book/teacher_contact_book_detail_screen.dart';
import 'package:edutec_hub/presentation/screens/teacher/contact_book/teacher_contact_book_screen.dart';
import 'package:edutec_hub/presentation/screens/teacher/exam/teacher_detail_screen.dart';
import 'package:edutec_hub/presentation/screens/teacher/exam/teacher_exam_screen.dart';
import 'package:edutec_hub/presentation/screens/teacher/exam/teaher_create_edit_screen.dart';
import 'package:edutec_hub/presentation/screens/teacher/homework/teacher_homework_detail_screen.dart';
import 'package:edutec_hub/presentation/screens/teacher/homework/teacher_homework_screen.dart';
import 'package:edutec_hub/presentation/screens/teacher/lesson/teacher_lesson_screen.dart';

import 'package:edutec_hub/presentation/screens/teacher/home/teacher_home_screen.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/top_bar.dart';
import 'package:edutec_hub/state_management/blocs/booking/booking_bloc.dart';
import 'package:edutec_hub/state_management/blocs/contact_book/contact_book_bloc.dart';

import 'package:edutec_hub/state_management/cubit/exam/student_exam_cubit.dart';
import 'package:edutec_hub/state_management/cubit/homework/homework_cubit.dart';
import 'package:edutec_hub/state_management/cubit/leave/leave_cubit.dart';
import 'package:edutec_hub/state_management/cubit/message_board/message_board_cubit.dart';

import 'package:edutec_hub/state_management/cubit/signInCubit.dart';
import 'package:edutec_hub/data/repositories/auth_repository.dart';

import 'package:edutec_hub/presentation/screens/auth/parentLoginScreen.dart';
import 'package:edutec_hub/presentation/screens/auth/LoginScreen.dart';
import 'package:edutec_hub/presentation/screens/student/student_announcement_screen.dart';
import 'package:edutec_hub/presentation/screens/student/booking/student_booking_Info_screen.dart';
import 'package:edutec_hub/presentation/screens/student/booking/classroom_booking_screen.dart';
import 'package:edutec_hub/presentation/screens/student/course/student_courses_screen.dart';
import 'package:edutec_hub/presentation/screens/student/home/student_home_screen.dart';
import 'package:edutec_hub/presentation/screens/student/student_more_screen.dart';
import 'package:edutec_hub/presentation/screens/student/student_payment_complete_screen.dart';
import 'package:edutec_hub/presentation/screens/student/student_payment_method_screen.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/custom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../presentation/screens/auth/authScreen.dart';
import '../../presentation/screens/course_list_screen.dart';
import '../../presentation/screens/course_detail_screen.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();
  static final _signInCubit = SignInCubit(AuthRepository());

  static final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    redirect: (context, state) {
      final signInState = _signInCubit.state;
      if (state.uri.path == '/login') {
        return null; // 不進行重定向
      }
      if (signInState is! SignInSuccess &&
          state.uri.path != '/' &&
          state.uri.path != '/login') {
        return '/';
      }

      if (signInState is SignInSuccess && state.uri.path == '/') {
        switch (signInState.role) {
          case UserRole.student:
            return '/student-home';
          case UserRole.parent:
            return '/parent-home';
          case UserRole.teacher:
            return '/teacher-home';
          default:
            return '/';
        }
      }
      return null;
    },
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => BlocProvider.value(
          value: _signInCubit,
          child: const AuthScreen(),
        ),
      ),

      // 登入頁面
      GoRoute(
        path: '/login',
        builder: (context, state) => BlocProvider.value(
          value: _signInCubit,
          child: const UserLoginScreen(),
        ),
      ),

      // 主要的 ShellRoute
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return BlocProvider.value(
            value: _signInCubit,
            child: BlocBuilder<SignInCubit, SignInState>(
              builder: (context, signInState) {
                if (signInState is SignInSuccess) {
                  return MultiBlocProvider(
                    // 使用 ProvidersManager 獲取 providers
                    providers: ProvidersManager.getProviders(signInState),
                    child: ScaffoldWithNavBarV2(
                      child: child,
                      role: _getRoleString(signInState.role),
                    ),
                  );
                }
                return const CircularProgressIndicator();
              },
            ),
          );
        },
        routes: [
          // 學生基本頁面
          GoRoute(
            path: '/student-home',
            builder: (context, state) => StudentHomeScreen(),
          ),
          GoRoute(
            path: '/student-courses',
            builder: (context, state) => const StudentCoursesScreen(),
          ),
          GoRoute(
            path: '/student-lessons',
            builder: (context, state) => const StudentLessonsScreen(),
          ),
          // GoRoute(
          //   path: '/student-contact',
          //   builder: (context, state) => ContactBookListScreen(),
          // ),
          GoRoute(
            path: '/student-classroom-booking',
            builder: (context, state) => StudentClassroomBookingScreen(),
            routes: [
              // 添加预订历史作为子路由
              GoRoute(
                path: 'history',
                builder: (context, state) =>
                    const ClassroomBookingHistoryScreen(),
              ),
            ],
          ),
          GoRoute(
            path: '/student-announcements',
            builder: (context, state) => StudentAnnouncementsScreen(),
          ),

          GoRoute(
            path: '/student-more',
            builder: (context, state) => StudentMoreScreen(),
          ),

          GoRoute(
            path: '/booking-info',
            builder: (context, state) => BookingInfoScreen(),
          ),
          GoRoute(
            path: '/payment-upload',
            builder: (context, state) => PaymentUploadScreen(),
          ),
          GoRoute(
            path: '/payment-method',
            builder: (context, state) => PaymentMethodScreen(),
          ),
          GoRoute(
            path: '/payment-complete',
            builder: (context, state) => PaymentCompleteScreen(),
          ),

          // 學生作業相關
          GoRoute(
            path: '/student-homework',
            builder: (context, state) => StudentHomeworkListScreen(),
            routes: [
              GoRoute(
                path: ':id',
                name: 'student-homework-detail',
                builder: (context, state) {
                  final homeworkId =
                      int.tryParse(state.pathParameters['id'] ?? '') ?? 0;
                  return StudentHomeworkDetailScreen(homeworkId: homeworkId);
                },
              ),
            ],
          ),
          GoRoute(
            name: 'student-homework-submit',
            path: '/homework/:homework_id/submit',
            builder: (context, state) {
              final homeworkId =
                  int.parse(state.pathParameters['homework_id']!);
              final extra = state.extra as Map<String, dynamic>;
              return HomeworkSubmitScreen(
                homeworkId: homeworkId,
                submissionId: extra['submissionId'] as int,
                studentId: extra['studentId'] as int,
              );
            },
          ),

          // 學生考試和出席相關
          // GoRoute(
          //   path: '/student-exam',
          //   builder: (context, state) => BlocProvider(
          //     create: (context) => StudentExamCubit(
          //       StudentExamRepository(useMock: true),
          //     )..loadExams(),
          //     child: const StudentExamScreen(),
          //   ),
          // ),
          GoRoute(
            path: '/student-exam',
            builder: (context, state) => const StudentExamScreen(),
          ),

          GoRoute(
            path: '/student-attendance',
            builder: (context, state) => const StudentAttendanceScreen(),
          ),
          GoRoute(
            path: '/student-leave',
            builder: (context, state) => const LeaveListScreen(),
          ),
          GoRoute(
            path: '/student-leave/create',
            builder: (context, state) => const LeaveRequestFormScreen(),
          ),

          // 學生聯絡簿相關
          GoRoute(
            path: '/student-contact',
            builder: (context, state) => const ContactBookListScreen(),
            routes: [
              GoRoute(
                path: 'daily',
                builder: (context, state) {
                  final contactBookId = int.tryParse(
                      state.uri.queryParameters['contactBookId'] ?? '');
                  if (contactBookId == null) {
                    return const Scaffold(body: Center(child: Text('找不到聯絡簿')));
                  }

                  // 使用 BlocBuilder 来监听状态变化
                  return BlocBuilder<ContactBookBloc, ContactBookState>(
                    builder: (context, state) {
                      if (state is ContactBookListLoaded) {
                        try {
                          final contactBook = state.contactBooks.firstWhere(
                              (book) => book.contactBookId == contactBookId);
                          return ContactBookDetailScreen(
                              contactBook: contactBook);
                        } catch (e) {
                          // 如果找不到对应的联络簿，重新加载数据
                          context.read<ContactBookBloc>().add(
                                LoadContactBooks(date: DateTime.now()),
                              );
                        }
                      }

                      return Scaffold(
                        body: Column(
                          children: [
                            FixedHeightSmoothTopBarV2(
                              height: 130.h,
                              child: SafeArea(
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 16.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.arrow_back_ios,
                                            color: Colors.white70, size: 24.sp),
                                        onPressed: () => Navigator.pop(context),
                                      ),
                                      Text(
                                        'contact_book_detail'.tr(),
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      // 使用 SizedBox 來平衡左側的返回按鈕
                                      SizedBox(width: 48.w),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Center(child: CircularProgressIndicator()),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),

          // 留言板
          GoRoute(
            path: '/message-board',
            builder: (context, state) => const MessageBoardScreen(),
          ),

          // 家長路由
          // GoRoute(
          //   path: '/parent-home',
          //   builder: (context, state) => const ParentHomeScreen(),
          // ),
          // GoRoute(
          //   path: '/parent/student/:studentId',
          //   builder: (context, state) {
          //     final studentId = state.pathParameters['studentId']!;
          //     return ParentStudentDashboard(studentId: studentId);
          //   },
          // ),

          // 老師路由（已註釋等待實作）
          GoRoute(
            path: '/teacher-home',
            builder: (context, state) => const TeacherHomeScreen(),
          ),

          // GoRoute(
          //   path: '/teacher-homework',
          //   // name: 'teacher-homework',
          //   builder: (context, state) => const TeacherHomeworkListScreen(),
          // ),
          GoRoute(
            path: '/teacher-homework',
            builder: (context, state) => const TeacherHomeworkListScreen(),
            routes: [
              GoRoute(
                path: ':id',
                name: 'teacher-homework-detail',
                builder: (context, state) {
                  final homeworkId = int.parse(state.pathParameters['id']!);
                  return TeacherHomeworkDetailScreen(homeworkId: homeworkId);
                },
              ),
            ],
          ),

          GoRoute(
            path: '/teacher-contact',
            builder: (context, state) => const TeacherContactBookScreen(),
            routes: [
              GoRoute(
                path: 'detail/:id', // 修改路徑格式保持一致性
                builder: (context, state) {
                  return TeacherContactBookDetailScreen(
                    contactBook: state.extra as TeacherContactBook,
                  );
                },
              ),
            ],
          ),
          GoRoute(
            path: '/teacher-schedule',
            builder: (context, state) => const TeacherLessonScreen(),
          ),

          //老師請假相關
          GoRoute(
            path: '/teacher-leave',
            builder: (context, state) => const TeacherLeaveScreen(),
          ),

          ///exam
          GoRoute(
            path: '/teacher-exam', // 修改為基礎路徑
            builder: (context, state) => const TeacherExamListScreen(),
            routes: [
              GoRoute(
                path: 'create', // 子路由不需要加前導斜線
                builder: (context, state) => const TeacherExamFormScreen(),
              ),
              GoRoute(
                path: ':examId/edit',
                builder: (context, state) {
                  final examId = int.parse(state.pathParameters['examId']!);
                  final exam = state.extra as TeacherExam?;
                  return TeacherExamFormScreen(
                    examId: examId,
                    initialExam: exam,
                  );
                },
              ),
              GoRoute(
                path: ':examId/detail',
                builder: (context, state) {
                  final examId = int.parse(state.pathParameters['examId']!);
                  return TeacherExamDetailScreen(examId: examId);
                },
              ),
            ],
          ),

          // GoRoute(
          //   path: '/teacher-exam/create',
          //   builder: (context, state) => const TeacherExamFormScreen(),
          // ),

          // // 考試編輯頁面
          // GoRoute(
          //   path: '/teacher-exam/:examId/edit',
          //   builder: (context, state) {
          //     final examId = int.parse(state.pathParameters['examId']!);
          //     final exam = state.extra as TeacherExam?;
          //     return TeacherExamFormScreen(
          //       examId: examId,
          //       initialExam: exam,
          //     );
          //   },
          // ),

          // // 考試列表頁面
          // GoRoute(
          //   path: '/teacher-exams',
          //   builder: (context, state) => const TeacherExamListScreen(),
          // ),
          // // 考試詳細頁面
          // GoRoute(
          //   path: '/teacher-exam/:examId/detail',
          //   builder: (context, state) {
          //     final examId = int.parse(state.pathParameters['examId']!);
          //     return TeacherExamDetailScreen(examId: examId);
          //   },
          // ),
        ],
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('找不到頁面：${state.uri.path}'),
      ),
    ),
  );

  static String _getRoleString(UserRole role) {
    switch (role) {
      case UserRole.teacher:
        return 'teacher';
      case UserRole.parent:
        return 'parent';
      case UserRole.student:
        return 'student';
      default:
        return '';
    }
  }
}
