// lib/state_management/cubit/lesson/lesson_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:edutec_hub/data/models/common/lesson.dart';
import 'package:edutec_hub/data/repositories/lesson/lesson_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LessonCubit extends Cubit<LessonState> {
  final LessonRepository _repository;

  LessonCubit({
    required LessonRepository repository,
  })  : _repository = repository,
        super(LessonState(
          selectedDate: DateTime.now(),
          focusedDay: DateTime.now(),
        ));

  Future<void> loadLessons() async {
    try {
      emit(state.copyWith(isLoading: true, error: null));

      // 獲取當月的開始和結束日期
      final now = DateTime.now();
      final startDate = DateTime(now.year, now.month, 1);
      final endDate = DateTime(now.year, now.month + 1, 0);

      final lessons = await _repository.getLessons(
        startDate: startDate,
        endDate: endDate,
      );

      // 提取所有科目和教室
      final subjects = lessons
          .where((lesson) => lesson.subjectName != null)
          .map((lesson) => lesson.subjectName!)
          .toSet()
          .toList()
        ..sort();

      final classrooms = lessons
          .where((lesson) => lesson.classroomName != null)
          .map((lesson) => lesson.classroomName!)
          .toSet()
          .toList()
        ..sort();

      emit(state.copyWith(
        lessons: lessons,
        filteredLessons: lessons,
        subjects: subjects,
        classrooms: classrooms,
        isLoading: false,
      ));

      _applyFilters();
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        isLoading: false,
      ));
    }
  }

  void updateSelectedDate(DateTime selected, DateTime focused) {
    emit(state.copyWith(
      selectedDate: selected,
      focusedDay: focused,
    ));
    _applyFilters();
  }

  void updateSubjectFilter(String? subject) {
    emit(state.copyWith(selectedSubject: subject));
    _applyFilters();
  }

  void updateClassroomFilter(String? classroom) {
    emit(state.copyWith(selectedClassroom: classroom));
    _applyFilters();
  }

  void resetFilters() {
    emit(state.copyWith(
      selectedSubject: null,
      selectedClassroom: null,
    ));
    _applyFilters();
  }

  void _applyFilters() {
    var filtered = List<Lesson>.from(state.lessons);

    // 日期過濾
    if (state.selectedDate != null) {
      filtered = filtered.where((lesson) {
        return isSameDay(lesson.lessonDate, state.selectedDate);
      }).toList();
    }

    // 科目過濾
    if (state.selectedSubject != null) {
      filtered = filtered
          .where((lesson) => lesson.subjectName == state.selectedSubject)
          .toList();
    }

    // 教室過濾
    if (state.selectedClassroom != null) {
      filtered = filtered
          .where((lesson) => lesson.classroomName == state.selectedClassroom)
          .toList();
    }

    emit(state.copyWith(filteredLessons: filtered));
  }

  Widget? markerBuilder(BuildContext context, DateTime date, dynamic events) {
    final lessonsOnDate = state.lessons.where((lesson) {
      return isSameDay(lesson.lessonDate, date);
    }).toList();

    if (lessonsOnDate.isEmpty) return null;

    return Positioned(
      bottom: 1,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: lessonsOnDate.take(3).map((lesson) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 1.w),
            width: 6.w,
            height: 6.h,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
            ),
          );
        }).toList(),
      ),
    );
  }

  bool isSameDay(DateTime? dateA, DateTime? dateB) {
    if (dateA == null || dateB == null) return false;
    return dateA.year == dateB.year &&
        dateA.month == dateB.month &&
        dateA.day == dateB.day;
  }
}
