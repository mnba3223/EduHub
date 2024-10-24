import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../../models/Announcement.dart';

part 'announcement_api.g.dart';

@RestApi()
abstract class AnnouncementApi {
  factory AnnouncementApi(Dio dio, {String baseUrl}) = _AnnouncementApi;

  @GET('/api/School')
  Future<List<Announcement>> getAnnouncements();

  @GET('/api/School')
  Future<List<Announcement>> searchAnnouncements(
    @Query('keyword') String keyword,
  );
}
