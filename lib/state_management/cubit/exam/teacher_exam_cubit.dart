// cubit/teacher_exam_cubit.dart
import 'package:edutec_hub/data/repositories/exam/teacher_exam_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:edutec_hub/data/models/teacher/teacher_exam.dart';

import 'package:table_calendar/table_calendar.dart';

class TeacherExamCubit extends Cubit<TeacherExamState> {
  final TeacherExamRepository _repository;

  TeacherExamCubit(this._repository)
      : super(TeacherExamState(
          selectedDate: DateTime.now(),
          focusedDay: DateTime.now(),
        ));

  Future<void> loadExams() async {
    try {
      emit(state.copyWith(isLoading: true, error: null));

      final exams = await _repository.getTeacherExams();
      final lessons = exams.map((e) => e.lessonTitle).toSet().toList()..sort();

      emit(state.copyWith(
        exams: exams,
        filteredExams: exams,
        lessons: lessons,
        isLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        isLoading: false,
      ));
    }
  }

  void updateSelectedDate(DateTime selectedDate, DateTime focusedDay) {
    final filteredExams = _filterExams(
      selectedDate: selectedDate,
      lesson: state.selectedLesson,
    );

    emit(state.copyWith(
      selectedDate: selectedDate,
      focusedDay: focusedDay,
      filteredExams: filteredExams,
    ));
  }

  void updateLessonFilter(String? lesson) {
    final filteredExams = _filterExams(
      selectedDate: state.selectedDate,
      lesson: lesson,
    );

    emit(state.copyWith(
      selectedLesson: lesson,
      filteredExams: filteredExams,
    ));
  }

  List<TeacherExam> _filterExams({
    DateTime? selectedDate,
    String? lesson,
  }) {
    var filtered = List<TeacherExam>.from(state.exams);

    if (selectedDate != null) {
      filtered = filtered
          .where((exam) => isSameDay(exam.examDate, selectedDate))
          .toList();
    }

    if (lesson != null) {
      filtered = filtered.where((exam) => exam.lessonTitle == lesson).toList();
    }

    return filtered;
  }

  Future<void> createExam(ExamCreateRequest request) async {
    try {
      emit(state.copyWith(isLoading: true, error: null));
      await _repository.createExam(request);
      await loadExams(); // 重新加載考試列表
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        isLoading: false,
      ));
    }
  }

  Future<void> updateExam(t) async {
    try {
      emit(state.copyWith(isLoading: true, error: null));
      // await _repository.updateExam(request);
      await loadExams(); // 重新加載考試列表
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        isLoading: false,
      ));
    }
  }

  Future<void> deleteExam(int examId) async {
    try {
      emit(state.copyWith(isLoading: true, error: null));
      await _repository.deleteExam(examId);
      await loadExams(); // 重新加載考試列表
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        isLoading: false,
      ));
    }
  }

  void clearState() {
    emit(TeacherExamState(
      selectedDate: DateTime.now(),
      focusedDay: DateTime.now(),
    ));
  }
}
