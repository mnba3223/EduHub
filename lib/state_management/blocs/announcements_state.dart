import 'package:edutec_hub/data/models/Announcement.dart';

abstract class AnnouncementsState {
  const AnnouncementsState();
}

class AnnouncementsInitial extends AnnouncementsState {}

class AnnouncementsLoading extends AnnouncementsState {}

class AnnouncementsLoaded extends AnnouncementsState {
  final List<Announcement> announcements;

  AnnouncementsLoaded(this.announcements);
}

class AnnouncementsError extends AnnouncementsState {
  final String message;

  AnnouncementsError(this.message);
}
