import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_data.freezed.dart';
part 'auth_data.g.dart';

@freezed
class AuthData with _$AuthData {
  const factory AuthData({
    String? avatar,
    required String username,
    required String nickname,
    required int userid,
    required List<String> roles,
    required List<String> permissions,
    required String accessToken,
    required String refreshToken,
    required DateTime expires,
    required DateTime refreshTokenExpires,
    int? userId, // 添加 userId 字段
  }) = _AuthData;

  factory AuthData.fromJson(Map<String, dynamic> json) =>
      _$AuthDataFromJson(json);
}
