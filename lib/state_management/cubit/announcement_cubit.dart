import 'package:dio/dio.dart';
import 'package:edutec_hub/state_management/blocs/announcements_state.dart';
import 'package:edutec_hub/data/models/Announcement.dart';
import 'package:edutec_hub/utils/api_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnnouncementsCubit extends Cubit<AnnouncementsState> {
  final Dio _dio;

  AnnouncementsCubit()
      : _dio = DioClient().dio,
        super(AnnouncementsInitial());

  // API endpoint 直接定義在 Cubit 中
  Future<void> loadAnnouncements() async {
    emit(AnnouncementsLoading());

    try {
      final response = await _dio.get<List<dynamic>>(
        '${ApiConfig.apiUrl}School',
        options: Options(
          headers: {
            'accept': 'text/plain',
          },
        ),
      );

      if (response.data != null) {
        final announcements = response.data!
            .map((json) => Announcement.fromJson(json as Map<String, dynamic>))
            .toList();

        emit(AnnouncementsLoaded(announcements));
      } else {
        emit(AnnouncementsError('No data received'));
      }
    } on DioException catch (e) {
      emit(AnnouncementsError(e.toApiException().message));
    } catch (e) {
      emit(AnnouncementsError('Failed to load announcements'));
    }
  }

  // 可選：添加刷新方法
  Future<void> refreshAnnouncements() => loadAnnouncements();

  // 可選：添加搜索方法
  Future<void> searchAnnouncements(String keyword) async {
    emit(AnnouncementsLoading());

    try {
      final response = await _dio.get<List<dynamic>>(
        '${ApiConfig.apiUrl}School',
        queryParameters: {
          'keyword': keyword,
        },
      );

      if (response.data != null) {
        final announcements = response.data!
            .map((json) => Announcement.fromJson(json as Map<String, dynamic>))
            .toList()
            .where((announcement) => announcement.content
                .toLowerCase()
                .contains(keyword.toLowerCase()))
            .toList();

        emit(AnnouncementsLoaded(announcements));
      } else {
        emit(AnnouncementsError('No data received'));
      }
    } on DioException catch (e) {
      emit(AnnouncementsError(e.toApiException().message));
    } catch (e) {
      emit(AnnouncementsError('Failed to search announcements'));
    }
  }
}
