import 'dart:async';

import 'package:edutec_hub/data/models/common/lesson.dart';
import 'package:edutec_hub/data/models/teacher/teacher_exam.dart';
import 'package:edutec_hub/data/models/teacher/teacher_home_state.dart';
import 'package:edutec_hub/state_management/cubit/homework/teacher/teacher_homework_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:edutec_hub/state_management/cubit/exam/teacher_exam_cubit.dart';
import 'package:edutec_hub/state_management/cubit/homework/teacher/teacher_homework_cubit.dart';
import 'package:edutec_hub/state_management/cubit/lesson/lesson_cubit.dart';

class TeacherHomeCubit extends Cubit<TeacherHomeState> {
  final TeacherExamCubit _examCubit;
  final TeacherHomeworkCubit _homeworkCubit;
  final LessonCubit _lessonCubit;
  late final List<StreamSubscription> _subscriptions;

  TeacherHomeCubit({
    required TeacherExamCubit examCubit,
    required TeacherHomeworkCubit homeworkCubit,
    required LessonCubit lessonCubit,
  })  : _examCubit = examCubit,
        _homeworkCubit = homeworkCubit,
        _lessonCubit = lessonCubit,
        super(const TeacherHomeState()) {
    _subscriptions = [
      _examCubit.stream.listen(_onExamStateChanged),
      _homeworkCubit.stream.listen(_onHomeworkStateChanged),
      _lessonCubit.stream.listen(_onLessonStateChanged),
    ];
  }

  void loadAllData() {
    emit(state.copyWith(isLoading: true, error: null));
    _examCubit.loadExams();
    _homeworkCubit.loadHomeworks();
    _lessonCubit.loadLessons();
  }

  void _onExamStateChanged(TeacherExamState examState) {
    _checkAndUpdateState();
  }

  void _onHomeworkStateChanged(TeacherHomeworkState homeworkState) {
    _checkAndUpdateState();
  }

  void _onLessonStateChanged(LessonState lessonState) {
    _checkAndUpdateState();
  }

  void _checkAndUpdateState() {
    // 檢查所有數據是否都已加載完成
    final allLoaded = !_examCubit.state.isLoading &&
        !_homeworkCubit.state.isLoading &&
        !_lessonCubit.state.isLoading;

    // 檢查是否有任何錯誤
    final List<String> errors = [];
    if (_examCubit.state.error != null) {
      errors.add('Exam: ${_examCubit.state.error}');
    }
    if (_homeworkCubit.state.error != null) {
      errors.add('Homework: ${_homeworkCubit.state.error}');
    }
    if (_lessonCubit.state.error != null) {
      errors.add('Lesson: ${_lessonCubit.state.error}');
    }

    emit(state.copyWith(
      isLoading: !allLoaded,
      error: errors.isEmpty ? null : errors.join('\n'),
      weeklyExams: _examCubit.state.exams,
      weeklyHomework: _homeworkCubit.state.homeworks,
      todayCourses: _lessonCubit.state.lessons,
    ));
  }

  @override
  Future<void> close() {
    for (final subscription in _subscriptions) {
      subscription.cancel();
    }
    return super.close();
  }
}
