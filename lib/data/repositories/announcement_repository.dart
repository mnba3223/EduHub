import 'package:dio/dio.dart';
import 'package:edutec_hub/data/models/announcement/announcement.dart';
import 'package:edutec_hub/data/network/apis/announcement_api.dart';
import 'package:edutec_hub/data/network/core/dio_client.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';

class AnnouncementRepository {
  final AnnouncementApi _api;

  AnnouncementRepository() : _api = AnnouncementApi(DioClient().dio);

  Future<List<Announcement>> getAnnouncements() async {
    try {
      final response = await _api.getAnnouncements();
      if (response.success) {
        return response.data!;
      } else {
        throw ApiException(
          response.message,
          errorCode: response.code.toString(),
          errorDetails: response.data,
        );
      }
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  Future<Announcement> getAnnouncementById(int id) async {
    try {
      final response = await _api.getAnnouncementById(id);
      if (response.success) {
        return response.data!;
      } else {
        throw ApiException(
          response.message,
          errorCode: response.code.toString(),
          errorDetails: response.data,
        );
      }
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }

  Future<List<Announcement>> searchAnnouncements(String keyword) async {
    try {
      final response = await _api.searchAnnouncements(keyword);
      if (response.success) {
        return response.data!;
      } else {
        throw ApiException(
          response.message,
          errorCode: response.code.toString(),
          errorDetails: response.data,
        );
      }
    } on DioException catch (e) {
      throw e.toApiException();
    }
  }
}
