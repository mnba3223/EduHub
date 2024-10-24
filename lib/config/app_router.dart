import 'package:edutec_hub/presentation/screens/student/student_booking_history_screen.dart';
import 'package:edutec_hub/presentation/screens/student/student_payment_upload_screen.dart';
import 'package:edutec_hub/state_management/blocs/booking_bloc.dart';
import 'package:edutec_hub/state_management/cubit/payment/payment_cubit.dart';
import 'package:edutec_hub/state_management/cubit/signInCubit.dart';
import 'package:edutec_hub/data/repositories/authRepository.dart';
import 'package:edutec_hub/data/repositories/payment_repository.dart';
import 'package:edutec_hub/presentation/screens/auth/parentLoginScreen.dart';
import 'package:edutec_hub/presentation/screens/auth/studentLoginScreen.dart';
import 'package:edutec_hub/presentation/screens/student/student_announcement_screen.dart';
import 'package:edutec_hub/presentation/screens/student/student_booking_Info_screen.dart';
import 'package:edutec_hub/presentation/screens/student/student_booking_screen.dart';
import 'package:edutec_hub/presentation/screens/student/student_courses_screen.dart';
import 'package:edutec_hub/presentation/screens/student/student_home_screen.dart';
import 'package:edutec_hub/presentation/screens/student/student_more_screen.dart';
import 'package:edutec_hub/presentation/screens/student/student_payment_complete_screen.dart';
import 'package:edutec_hub/presentation/screens/student/student_payment_method_screen.dart';
import 'package:edutec_hub/presentation/ui_widget/bar/custom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../presentation/screens/auth/authScreen.dart';
import '../presentation/screens/course_list_screen.dart';
import '../presentation/screens/course_detail_screen.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKeyParent = GlobalKey<NavigatorState>();
  static final _shellNavigatorKeyTeacher = GlobalKey<NavigatorState>();
  static final _shellNavigatorKeyStudent = GlobalKey<NavigatorState>();
  static final _signInCubit = SignInCubit(AuthRepository()); // 創建單一實例
  static final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const AuthScreen(),
      ),
      GoRoute(
        path: '/courses',
        builder: (context, state) => const CourseListScreen(),
      ),
      GoRoute(
        path: '/course/:id',
        builder: (context, state) {
          final id = state.pathParameters['id'] ?? '';
          return CourseDetailScreen(courseId: id);
        },
      ),
      GoRoute(
        path: '/parent-login',
        builder: (context, state) => BlocProvider(
          create: (context) => SignInCubit(AuthRepository()),
          child: const ParentLoginScreen(),
        ),
      ),
      //  GoRoute(
      //   path: '/teacher-login',
      //   builder: (context, state) => BlocProvider(
      //     create: (context) => SignInCubit(AuthRepository()),
      //     child: const TeacherLoginScreen(),
      //   ),
      // ),
      GoRoute(
        path: '/student-login',
        builder: (context, state) => BlocProvider.value(
          // 使用 value 提供已存在的實例
          value: _signInCubit,
          child: const StudentLoginScreen(),
        ),
      ),

      // GoRoute(
      //   path: '/studentHome',
      //   builder: (context, state) => StudentHomeScreen(),
      // ),
      //  ShellRoute(
      //   navigatorKey: _shellNavigatorKeyParent,
      //   builder: (context, state, child) {
      //     return ScaffoldWithNavBar(child: child, role: 'parent');
      //   },
      //   routes: [
      //     GoRoute(
      //       path: '/parent-home',
      //       pageBuilder: (context, state) => NoTransitionPage(
      //         child: ParentHomeScreen(),
      //       ),
      //     ),
      //     // Add more parent-specific routes here
      //   ],
      // ),
      // ShellRoute(
      //   navigatorKey: _shellNavigatorKeyTeacher,
      //   builder: (context, state, child) {
      //     return ScaffoldWithNavBar(child: child, role: 'teacher');
      //   },
      //   routes: [
      //     GoRoute(
      //       path: '/teacher-home',
      //       pageBuilder: (context, state) => NoTransitionPage(
      //         child: TeacherHomeScreen(),
      //       ),
      //     ),
      //     // Add more teacher-specific routes here
      //   ],
      // ),
      ShellRoute(
        navigatorKey: _shellNavigatorKeyStudent,
        builder: (context, state, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider.value(
                // 使用相同的實例
                value: _signInCubit,
              ),
              BlocProvider<BookingBloc>(
                create: (context) => BookingBloc(),
              ),
              BlocProvider<PaymentCubit>(
                create: (context) => PaymentCubit(PaymentRepository()),
              ),
            ],
            child: ScaffoldWithNavBarV2(child: child, role: 'student'),
          );
        },
        routes: [
          // 學生基本頁面
          GoRoute(
            path: '/student-home',
            builder: (context, state) => StudentHomeScreen(),
          ),
          GoRoute(
            path: '/student-booking',
            builder: (context, state) => StudentBookingScreen(),
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
            path: '/student-courses',
            builder: (context, state) => const StudentCoursesScreen(),
          ),

          GoRoute(
            path: '/booking-history',
            builder: (context, state) => BookingHistoryScreen(),
          ),

          // 預約相關頁面
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
        ],
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('No route defined for ${state.uri.path}'),
      ),
    ),
  );
}
