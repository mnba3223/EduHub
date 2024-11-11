import 'package:edutec_hub/data/models/exam/eaxm_state.dart';
import 'package:edutec_hub/data/repositories/exam_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExamCubit extends Cubit<ExamState> {
  final ExamRepository _repository;

  ExamCubit(this._repository) : super(const ExamState.initial());

  Future<void> loadExams() async {
    emit(const ExamState.loading());
    try {
      final response = await _repository.getExams();
      if (response.success && response.data != null) {
        emit(ExamState.loaded(
          exams: response.data!,
          selectedDate: DateTime.now(),
        ));
      } else {
        emit(ExamState.error(message: response.message));
      }
    } catch (e) {
      emit(ExamState.error(message: e.toString()));
    }
  }

  void selectDate(DateTime date) {
    final currentState = state;
    if (currentState is ExamStateLoaded) {
      emit(currentState.copyWith(selectedDate: date));
    }
  }

  Future<void> updateExamStatus(String examId, bool isCompleted) async {
    final currentState = state;
    if (currentState is ExamStateLoaded) {
      try {
        final response =
            await _repository.updateExamStatus(examId, isCompleted);
        if (response.success) {
          await loadExams();
        }
      } catch (e) {
        emit(ExamState.error(message: e.toString()));
      }
    }
  }
}
