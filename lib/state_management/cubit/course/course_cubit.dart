// lib/state_management/cubit/course/teacher_course_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:edutec_hub/data/models/common/course.dart';

import 'package:edutec_hub/data/repositories/course/course_repository.dart';
import 'package:edutec_hub/data/repositories/homework/teacher_homework_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:table_calendar/table_calendar.dart';

class TeacherCourseCubit extends Cubit<CourseState> {
  final CourseRepository _courseRepository;
  final TeacherHomeworkRepository _homeworkRepository;

  TeacherCourseCubit({
    required CourseRepository courseRepository,
    required TeacherHomeworkRepository homeworkRepository,
  })  : _courseRepository = courseRepository,
        _homeworkRepository = homeworkRepository,
        super(CourseState(
          selectedDate: DateTime.now(),
          focusedDay: DateTime.now(),
        ));

  // 加載課程列表
  Future<void> loadCourses() async {
    try {
      emit(state.copyWith(isLoading: true, error: null));
      final courses = await _courseRepository.getCourses();

      // 提取所有科目名稱
      final subjects =
          courses.map((course) => course.subjectName).toSet().toList()..sort();

      emit(state.copyWith(
        courses: courses,
        filteredCourses: courses,
        subjects: subjects,
        isLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        isLoading: false,
      ));
    }
  }

  // 更新選擇的日期
  void updateSelectedDate(DateTime selected, DateTime focused) {
    emit(state.copyWith(
      selectedDate: selected,
      focusedDay: focused,
    ));
    _applyFilters();
  }

  // 更新科目過濾器
  void updateSubjectFilter(String? subject) {
    emit(state.copyWith(selectedSubject: subject));
    _applyFilters();
  }

  // 重置所有過濾器
  void resetFilters() {
    emit(state.copyWith(
      selectedSubject: null,
      filteredCourses: state.courses,
    ));
  }

  // 應用所有過濾條件
  void _applyFilters() {
    var filtered = List<Course>.from(state.courses);

    // 應用科目過濾
    if (state.selectedSubject != null) {
      filtered = filtered
          .where((course) => course.subjectName == state.selectedSubject)
          .toList();
    }

    // 可以添加更多過濾邏輯，例如按日期過濾等

    emit(state.copyWith(filteredCourses: filtered));
  }

  // 日曆標記構建器
  Widget? markerBuilder(BuildContext context, DateTime date, dynamic events) {
    // 找出該日期的課程
    final coursesOnDate = state.filteredCourses
        .where((course) => _isCourseOnDate(course, date))
        .toList();

    if (coursesOnDate.isEmpty) return null;

    // 返回標記 Widget
    return Positioned(
      bottom: 1,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(
            int.parse(coursesOnDate.first.courseColor.replaceAll('#', '0xFF')),
          ),
        ),
        width: 8.w,
        height: 8.h,
      ),
    );
  }

  bool _isCourseOnDate(Course course, DateTime date) {
    // 這裡添加判斷課程是否在特定日期的邏輯
    // 實際應用中可能需要根據具體的課程時間表來判斷
    return true; // 臨時返回值，需要根據實際邏輯修改
  }
}
