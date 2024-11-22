import 'package:edutec_hub/data/models/exam/student_eaxm_state.dart';
import 'package:edutec_hub/data/repositories/student_exam_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StudentExamCubit extends Cubit<StudentExamState> {
  final StudentExamRepository _repository;

  StudentExamCubit(this._repository) : super(const StudentExamState.initial());

  Future<void> loadExams() async {
    emit(const StudentExamState.loading());
    try {
      final response = await _repository.getExams();
      if (response.success && response.data != null) {
        emit(StudentExamState.loaded(
          exams: response.data!,
          selectedDate: DateTime.now(),
        ));
      } else {
        emit(StudentExamState.error(message: response.message));
      }
    } catch (e) {
      emit(StudentExamState.error(message: e.toString()));
    }
  }

  void selectDate(DateTime date) {
    final currentState = state;
    if (currentState is StudentExamStateLoaded) {
      emit(currentState.copyWith(selectedDate: date));
    }
  }

  Future<void> updateExamStatus(String examId, bool isCompleted) async {
    final currentState = state;
    if (currentState is StudentExamStateLoaded) {
      try {
        final response =
            await _repository.updateExamStatus(examId, isCompleted);
        if (response.success) {
          await loadExams();
        }
      } catch (e) {
        emit(StudentExamState.error(message: e.toString()));
      }
    }
  }
}
