// cubit/teacher_homework_cubit.dart
import 'dart:io';

import 'package:edutec_hub/data/models/teacher/teacher_homework.dart';
import 'package:edutec_hub/data/repositories/homework/teacher_homework_repository.dart';
import 'package:edutec_hub/state_management/cubit/download/downloadFileCubit.dart';
import 'package:edutec_hub/state_management/cubit/homework/teacher/teacher_homework_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_filex/open_filex.dart';
// import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:table_calendar/table_calendar.dart';

class TeacherHomeworkCubit extends Cubit<TeacherHomeworkState> {
  final TeacherHomeworkRepository _repository;
  final DownloadCubit _downloadCubit;

  TeacherHomeworkCubit({
    required TeacherHomeworkRepository repository,
    required DownloadCubit downloadCubit,
  })  : _repository = repository,
        _downloadCubit = downloadCubit,
        super(TeacherHomeworkState(
          selectedDate: DateTime.now(),
          focusedDay: DateTime.now(),
        ));

  // 載入作業列表
  Future<void> loadHomeworks() async {
    try {
      emit(state.copyWith(isLoading: true, error: null));

      // 載入作業數據
      final homeworks = await _repository.getTeacherHomeworks();

      // 提取所有教室和課程選項
      final classrooms = homeworks
          .where((h) => h.classroomName != null)
          .map((h) => h.classroomName!)
          .toSet()
          .toList()
        ..sort();

      final lessons = homeworks.map((h) => h.lessonTitle).toSet().toList()
        ..sort();

      emit(state.copyWith(
        homeworks: homeworks,
        filteredHomeworks: homeworks,
        classrooms: classrooms,
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

  // 詳情頁面方法

  Future<void> loadHomeworkDetail(int homeworkId) async {
    try {
      emit(state.copyWith(isLoading: true, error: null));

      // 1. 如果沒有選中的作業，從當前列表中查找
      if (state.selectedHomework == null ||
          state.selectedHomework!.homeworkId != homeworkId) {
        final homework = state.homeworks.firstWhere(
          (h) => h.homeworkId == homeworkId,
          orElse: () => throw Exception('Homework not found'),
        );
        emit(state.copyWith(selectedHomework: homework));
      }

      // 2. 獲取提交記錄
      final submissions =
          await _repository.getTeacherHomeworkDetail(homeworkId);

      emit(state.copyWith(
        submissions: submissions,
        isLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        isLoading: false,
      ));
    }
  }

  Future<void> updateGrade({
    required int submissionId,
    required int rating,
    String? comment,
  }) async {
    try {
      emit(state.copyWith(isGrading: true));

      await _repository.gradeSubmission(
        submissionId: submissionId,
        grade: rating,
        comment: comment,
      );

      // 重新加载作业详情以更新评分
      if (state.selectedHomework != null) {
        await loadHomeworkDetail(state.selectedHomework!.homeworkId);
      }

      emit(state.copyWith(isGrading: false));
    } catch (e) {
      emit(state.copyWith(
        error: '評分失敗: ${e.toString()}',
        isGrading: false,
      ));
    }
  }

  void setSelectedHomework(TeacherHomeworkListItem homework) {
    emit(state.copyWith(selectedHomework: homework));
  }

  // void clearHomeworkDetail() {
  //   emit(state.copyWith(
  //     selectedHomework: null,
  //     submissions: [],
  //   ));
  // }

  // 更新日期選擇
  void updateSelectedDate(DateTime? selectedDate, DateTime focusedDay) {
    final filteredHomeworks = _filterHomeworks(
      selectedDate: selectedDate,
      classroom: state.selectedClassroom,
      lesson: state.selectedLesson,
    );

    emit(state.copyWith(
      selectedDate: selectedDate ?? state.selectedDate,
      focusedDay: focusedDay,
      filteredHomeworks: filteredHomeworks,
    ));
  }

  // 更新教室過濾器
  void updateClassroomFilter(String? classroom) {
    final filteredHomeworks = _filterHomeworks(
      selectedDate: state.selectedDate,
      classroom: classroom,
      lesson: state.selectedLesson,
    );

    emit(state.copyWith(
      selectedClassroom: classroom,
      filteredHomeworks: filteredHomeworks,
    ));
  }

  // 更新課程過濾器
  void updateLessonFilter(String? lesson) {
    final filteredHomeworks = _filterHomeworks(
      selectedDate: state.selectedDate,
      classroom: state.selectedClassroom,
      lesson: lesson,
    );

    emit(state.copyWith(
      selectedLesson: lesson,
      filteredHomeworks: filteredHomeworks,
    ));
  }

  // 重置過濾器
  void resetFilters() {
    emit(state.copyWith(
      selectedClassroom: null,
      selectedLesson: null,
      selectedDate: state.selectedDate,
      filteredHomeworks: state.homeworks,
    ));
  }

  // 私有的過濾方法
  List<TeacherHomeworkListItem> _filterHomeworks({
    DateTime? selectedDate,
    String? classroom,
    String? lesson,
  }) {
    var filtered = List<TeacherHomeworkListItem>.from(state.homeworks);

    // 使用 isSameDay 來比較日期
    if (selectedDate != null) {
      filtered = filtered
          .where((homework) => isSameDay(homework.endTime, selectedDate))
          .toList();
    }

    // 教室過濾
    if (classroom != null) {
      filtered = filtered
          .where((homework) => homework.classroomName == classroom)
          .toList();
    }

    // 課程過濾
    if (lesson != null) {
      filtered =
          filtered.where((homework) => homework.lessonTitle == lesson).toList();
    }

    return filtered;
  }

  // 取得特定日期的作業數量（用於日曆標記）  // 修正日期計算邏輯
  int getHomeworkCount(DateTime day) {
    return state.homeworks.where((homework) {
      return isSameDay(homework.endTime, day); // 只比較結束日期
    }).length;
  }

  // 建立日曆標記建構器
  Widget? Function(BuildContext, DateTime, List<dynamic>)? get markerBuilder =>
      (context, date, events) {
        final count = getHomeworkCount(date);
        if (count == 0) return null;

        return Container(
          width: 16,
          height: 16,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
          ),
          child: Text(
            count.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 10,
            ),
          ),
        );
      };

  String _getFileExtension(String url) {
    final uri = Uri.parse(url);
    final path = uri.path;
    final lastDot = path.lastIndexOf('.');
    if (lastDot != -1) {
      return path.substring(lastDot);
    }
    return '';
  }

  @override
  void clearHomeworkDetail() {
    emit(state.copyWith(
      selectedHomework: null,
      submissions: [],
      isDownloading: false,
      isGrading: false,
      error: null,
      message: null,
    ));
  }
}
