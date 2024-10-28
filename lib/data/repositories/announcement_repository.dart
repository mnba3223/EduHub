import 'package:dio/dio.dart';
import 'package:edutec_hub/data/models/Announcement.dart';
import 'package:edutec_hub/data/network/apis/announcement_api.dart';

import 'package:edutec_hub/data/network/core/dio_client.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';

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

  //get by id
  Future<Announcement> getAnnouncementById(int id) async {
    try {
      final response = await _api.getAnnouncementById(id);
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
