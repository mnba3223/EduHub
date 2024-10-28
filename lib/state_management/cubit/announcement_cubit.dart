import 'package:edutec_hub/data/network/core/exceptions.dart';
import 'package:edutec_hub/data/repositories/announcement_repository.dart';
import 'package:edutec_hub/state_management/blocs/announcements_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class AnnouncementsCubit extends Cubit<AnnouncementsState> {
  final AnnouncementRepository _repository;

  AnnouncementsCubit()
      : _repository = AnnouncementRepository(),
        super(AnnouncementsInitial());

  Future<void> loadAnnouncements() async {
    emit(AnnouncementsLoading());

    try {
      final announcements = await _repository.getAnnouncements();
      emit(AnnouncementsLoaded(announcements));
    } on ApiException catch (e) {
      emit(AnnouncementsError(e.message));
    } catch (e) {
      emit(AnnouncementsError('Failed to load announcements'));
    }
  }
  // load announcements by id

  Future<void> getAnnouncementById(int id) async {
    emit(AnnouncementsLoading());

    try {
      final announcement = await _repository.getAnnouncementById(id);
      emit(AnnouncementsLoaded([announcement]));
    } on ApiException catch (e) {
      emit(AnnouncementsError(e.message));
    } catch (e) {
      emit(AnnouncementsError('Failed to load announcements'));
    }
  }

  Future<void> refreshAnnouncements() => loadAnnouncements();

  Future<void> searchAnnouncements(String keyword) async {
    emit(AnnouncementsLoading());

    try {
      final announcements = await _repository.searchAnnouncements(keyword);
      emit(AnnouncementsLoaded(announcements));
    } on ApiException catch (e) {
      emit(AnnouncementsError(e.message));
    } catch (e) {
      emit(AnnouncementsError('Failed to search announcements'));
    }
  }
}
