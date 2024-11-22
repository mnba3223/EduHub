// providers_manager.dart
import 'package:edutec_hub/data/models/user_role.dart';
import 'package:edutec_hub/data/repositories/contact_book_repository.dart';
import 'package:edutec_hub/data/repositories/exam/teacher_exam_repository.dart';
import 'package:edutec_hub/data/repositories/homework/homework_repository.dart';
import 'package:edutec_hub/data/repositories/homework/teacher_homework_repository.dart';
import 'package:edutec_hub/data/repositories/student_exam_repository.dart';
import 'package:edutec_hub/state_management/blocs/booking_bloc.dart';
import 'package:edutec_hub/state_management/blocs/contact_book/contact_book_bloc.dart';
import 'package:edutec_hub/state_management/cubit/exam/student_exam_cubit.dart';
import 'package:edutec_hub/state_management/cubit/exam/teacher_exam_cubit.dart';
import 'package:edutec_hub/state_management/cubit/homework/homework_cubit.dart';
import 'package:edutec_hub/state_management/cubit/homework/teacher/teacher_homework_cubit.dart';
import 'package:edutec_hub/state_management/cubit/message_board/message_board_cubit.dart';
import 'package:edutec_hub/state_management/cubit/signInCubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProvidersManager {
  static List<BlocProvider> getProviders(SignInState signInState) {
    // 基礎 providers，所有角色都需要的
    final baseProviders = [
      BlocProvider<MessageBoardCubit>(
        create: (context) => MessageBoardCubit(),
      ),
    ];

    // 根據角色添加特定的 providers
    if (signInState is SignInSuccess) {
      switch (signInState.role) {
        case UserRole.student:
          return [
            ...baseProviders,
            ...getStudentProviders(signInState),
          ];
        case UserRole.parent:
          return [
            ...baseProviders,
            ...getParentProviders(signInState),
          ];
        case UserRole.teacher:
          return [
            ...baseProviders,
            ...getTeacherProviders(signInState),
          ];
        default:
          return baseProviders;
      }
    }

    return baseProviders;
  }

  // 學生特定的 providers
  static List<BlocProvider> getStudentProviders(SignInSuccess state) {
    return [
      // BlocProvider<HomeworkCubit>(
      //   create: (context) => HomeworkCubit(
      //     repository: HomeworkRepositoryImpl(
      //       signInCubit: context.read<SignInCubit>(),
      //       useMock: false,
      //     ),
      //   )..loadHomeworks(),
      // ),
      BlocProvider<HomeworkCubit>(
        create: (context) {
          final repository = HomeworkRepositoryImpl(
            signInCubit: context.read<SignInCubit>(),
            useMock: false,
          );
          return HomeworkCubit(repository: repository)..loadHomeworks();
        },
      ),
      BlocProvider<StudentExamCubit>(
        create: (context) => StudentExamCubit(
          StudentExamRepository(useMock: true),
        )..loadExams(),
      ),
      BlocProvider<ContactBookBloc>(
        create: (context) => ContactBookBloc(
          repository: ContactBookRepository(
            signInCubit: context.read<SignInCubit>(),
            useMock: true,
          ),
        ),
      ),
      BlocProvider<BookingBloc>(
        create: (context) => BookingBloc(),
      ),
      // 其他學生需要的 providers...
    ];
  }

  // 家長特定的 providers
  static List<BlocProvider> getParentProviders(SignInSuccess state) {
    return [
      // BlocProvider<ParentStudentsCubit>(
      //   create: (context) => ParentStudentsCubit()..loadStudents(),
      // ),
      // 其他家長需要的 providers...
    ];
  }

  // 老師特定的 providers
  static List<BlocProvider> getTeacherProviders(SignInSuccess state) {
    return [
      BlocProvider<TeacherHomeworkCubit>(
        create: (context) => TeacherHomeworkCubit(
          repository: TeacherHomeworkRepositoryImpl(useMock: false),
        )..loadHomeworks(),
      ),
      // 老師需要的 providers...
      //    BlocProvider<TeacherAnnouncementCubit>(
      //   create: (context) => TeacherAnnouncementCubit(
      //     repository: TeacherAnnouncementRepository(
      //       signInCubit: context.read<SignInCubit>(),
      //       useMock: true,
      //     ),
      //   )..loadAnnouncements(),
      // ),
      // BlocProvider<TeacherScheduleCubit>(
      //   create: (context) => TeacherScheduleCubit(
      //     repository: TeacherScheduleRepository(
      //       signInCubit: context.read<SignInCubit>(),
      //       useMock: true,
      //     ),
      //   )..loadTodaySchedule(),
      // ),
      BlocProvider<TeacherExamCubit>(
        create: (context) => TeacherExamCubit(
          TeacherExamRepositoryImpl(useMock: true),
        )..loadExams(),
      ),
      // BlocProvider<TeacherHomeworkCubit>(
      //   create: (context) => TeacherHomeworkCubit(
      //     repository: TeacherHomeworkRepository(
      //       signInCubit: context.read<SignInCubit>(),
      //       useMock: true,
      //     ),
      //   )..loadWeeklyHomework(),
      // ),
    ];
  }
}