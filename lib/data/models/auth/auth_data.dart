import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_data.freezed.dart';
part 'auth_data.g.dart';

@freezed
class AuthData with _$AuthData {
  const factory AuthData({
    String? avatar,
    required String username,
    String? nickname,
    @JsonKey(name: 'userId') required String userId,
    @JsonKey(name: "userSpecificId") required int userSpecificId,
    @JsonKey(name: "roles") required String roles,
    // required List<String> permissions,
    required String accessToken,
    required String refreshToken,
    required DateTime expires,
    required DateTime refreshTokenExpires,
    // int? userId, // 添加 userId 字段
  }) = _AuthData;

  factory AuthData.fromJson(Map<String, dynamic> json) =>
      _$AuthDataFromJson(json);
}
