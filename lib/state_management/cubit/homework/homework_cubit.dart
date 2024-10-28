import 'package:edutec_hub/data/models/student/homework.dart';
import 'package:edutec_hub/data/repositories/homework_repository.dart';
import 'package:edutec_hub/state_management/cubit/homework/homework_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeworkCubit extends Cubit<HomeworkState> {
  final HomeworkRepository homeworkRepository;

  HomeworkCubit({
    required this.homeworkRepository,
  }) : super(const HomeworkState());

  Future<void> loadHomeworks() async {
    try {
      emit(state.copyWith(isLoading: true));
      final homeworks = await homeworkRepository.getHomeworks();
      emit(state.copyWith(
        homeworks: homeworks,
        filteredHomeworks: homeworks,
        isLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        isLoading: false,
      ));
    }
  }

  Future<void> loadHomeworksByDate(DateTime date) async {
    try {
      emit(state.copyWith(isLoading: true));
      final homeworks = await homeworkRepository.getHomeworksByDate(date);
      emit(state.copyWith(
        homeworks: homeworks,
        filteredHomeworks: homeworks,
        selectedDate: date,
        isLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        isLoading: false,
      ));
    }
  }

  Future<void> submitHomework({
    required String homeworkId,
    required String content,
    required List<String> attachmentUrls,
  }) async {
    try {
      emit(state.copyWith(isLoading: true));
      await homeworkRepository.submitHomework(
        attachmentUrls: attachmentUrls,
        homeworkId: homeworkId,
        content: content,
      );
      await loadHomeworks();
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        isLoading: false,
      ));
    }
  }

  Future<void> loadHomeworkDetail(String id) async {
    try {
      emit(state.copyWith(isLoading: true));
      final homework = await homeworkRepository.getHomeworkDetail(id);
      emit(state.copyWith(
        currentHomework: homework,
        isLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        error: e.toString(),
        isLoading: false,
      ));
    }
  }

  void filterHomeworksByStatus(HomeworkStatus status) {
    final filtered =
        state.homeworks.where((homework) => homework.status == status).toList();
    emit(state.copyWith(filteredHomeworks: filtered));
  }

  void clearError() {
    emit(state.copyWith(error: null));
  }
}
