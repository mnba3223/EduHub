// cubit/teacher_exam_cubit.dart
import 'package:edutec_hub/data/repositories/exam/teacher_exam_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:edutec_hub/data/models/teacher/teacher_exam.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      debugPrint('Loading exams...');

      final exams = await _repository.getTeacherExams();
      debugPrint('Loaded ${exams.length} exams');

      final lessons = exams.map((e) => e.lessonTitle).toSet().toList()..sort();
      debugPrint('Extracted ${lessons.length} unique lessons');

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
      debugPrint('Starting to create exam...');
      emit(state.copyWith(isLoading: true, error: null));

      await _repository.createExam(request); // 這是 void return
      debugPrint('Exam created successfully');

      debugPrint('Starting to reload exams...');
      await loadExams(); // 重新加載考試列表
      debugPrint('Exams reloaded successfully');
    } catch (e) {
      debugPrint('Error in createExam: $e');
      emit(state.copyWith(
        error: e.toString(),
        isLoading: false,
      ));
      rethrow; // 重新拋出錯誤讓 UI 層處理
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> updateExam(int examId, ExamCreateRequest request) async {
    try {
      emit(state.copyWith(isLoading: true, error: null));
      await _repository.updateExam(examId, request);
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

  Future<void> loadExamRegistrations(int examId) async {
    try {
      emit(state.copyWith(isLoading: true, error: null));
      final registrations = await _repository.getExamRegistrations(examId);
      emit(state.copyWith(
        registrations: registrations,
        isLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        isLoading: false,
      ));
    }
  }

  Future<void> gradeExam(int registrationId, int score) async {
    try {
      emit(state.copyWith(isLoading: true, error: null));
      await _repository.gradeExam(registrationId, score);

      // 如果目前有載入某個考試的註冊列表，重新載入它
      if (state.registrations.isNotEmpty) {
        final examId = state.registrations.first.examId;
        await loadExamRegistrations(examId);
      }

      emit(state.copyWith(isLoading: false));
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        isLoading: false,
      ));
    }
  }

  Widget? markerBuilder(BuildContext context, DateTime date, List events) {
    final count =
        state.exams.where((exam) => isSameDay(exam.examDate, date)).length;

    if (count == 0) return null;

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        shape: BoxShape.circle,
      ),
      width: 16.w,
      height: 16.w,
      child: Center(
        child: Text(
          count.toString(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 10.sp,
          ),
        ),
      ),
    );
  }

  void clearState() {
    emit(TeacherExamState(
      selectedDate: DateTime.now(),
      focusedDay: DateTime.now(),
    ));
  }
}
