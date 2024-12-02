// Cubit部分 - teacher_contact_book_cubit.dart
import 'dart:io';

import 'package:edutec_hub/data/models/student/student.dart';
import 'package:edutec_hub/data/models/teacher/teacher_contact_book_model.dart';
import 'package:edutec_hub/data/repositories/contact_book/teacher_contact_book_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeacherContactBookCubit extends Cubit<TeacherContactBookState> {
  final TeacherContactBookRepository repository;

  TeacherContactBookCubit({required this.repository})
      : super(const TeacherContactBookState());

  Future<void> loadContactBooks() async {
    emit(state.copyWith(isLoading: true));
    try {
      final contactBooks = await repository.getContactBooks();
      // final students = await repository.getStudents();
      final List<Student> students = [];
      emit(state.copyWith(
        contactBooks: contactBooks,
        // students: students,
        isLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        isLoading: false,
      ));
    }
  }

  Future<void> loadLessonStudents(int lessonId) async {
    emit(state.copyWith(isLoading: true));
    try {
      final students = await repository.getLessonStudents(lessonId);
      emit(state.copyWith(
        lessonStudents: students,
        selectedLessonId: lessonId,
        isLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        isLoading: false,
      ));
    }
  }

  void filterContactBooks({
    required DateTime date,
  }) {
    final filtered = state.contactBooks.where((contactBook) {
      return contactBook.lessonDate.year == date.year &&
          contactBook.lessonDate.month == date.month &&
          contactBook.lessonDate.day == date.day;
    }).toList();

    emit(state.copyWith(filteredContactBooks: filtered));
  }

  Future<void> createContactBook({
    required String title,
    required int studentId,
    required int lessonId,
  }) async {
    try {
      await repository.createContactBook(
        title: title,
        studentId: studentId,
        lessonId: lessonId,
      );
      await loadContactBooks(); // 重新載入清單
    } catch (e) {
      throw e;
    }
  }

  Future<void> updateContactBook({
    required int contactBookId,
    required String title,
    required String status,
  }) async {
    try {
      emit(state.copyWith(isLoading: true));
      await repository.updateContactBook(
        contactBookId: contactBookId,
        title: title,
        status: status,
      );
      await loadContactBooks();
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        isLoading: false,
      ));
    }
  }

  Future<void> addMessage({
    required int contactBookId,
    required String message,
    File? file,
  }) async {
    try {
      emit(state.copyWith(isLoading: true));
      await repository.addMessage(
        contactBookId: contactBookId,
        message: message,
        file: file,
      );
      await loadContactBooks();
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        isLoading: false,
      ));
    }
  }

  Future<void> downloadFile(String fileUrl) async {
    try {
      await repository.downloadFile(fileUrl);
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }
}
