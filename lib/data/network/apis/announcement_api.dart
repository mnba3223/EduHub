import 'package:edutec_hub/data/models/api_model/api_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../../models/announcement/announcement.dart';

part 'announcement_api.g.dart';

@RestApi()
abstract class AnnouncementApi {
  factory AnnouncementApi(Dio dio, {String baseUrl}) = _AnnouncementApi;

  @GET('/api/Announcement')
  Future<ApiResponse<List<Announcement>>> getAnnouncements();

  @GET('/api/Announcement/{id}')
  Future<ApiResponse<Announcement>> getAnnouncementById(@Path('id') int id);

  @GET('/api/Announcement')
  Future<ApiResponse<List<Announcement>>> searchAnnouncements(
    @Query('keyword') String keyword,
  );
}
