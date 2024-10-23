import 'package:dio/dio.dart';
import 'package:edutec_hub/data/models/Announcement.dart';
import 'package:edutec_hub/utils/api_service.dart';

class AnnouncementRepository {
  final AnnouncementApi _api;

  AnnouncementRepository() : _api = AnnouncementApi(DioClient().dio);

  Future<List<Announcement>> getAnnouncements() async {
    try {
      final response = await _api.getAnnouncements();
      return response;
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  Future<List<Announcement>> searchAnnouncements(String keyword) async {
    try {
      final response = await _api.searchAnnouncements(keyword);
      return response;
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }
}
