// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthDataImpl _$$AuthDataImplFromJson(Map<String, dynamic> json) =>
    _$AuthDataImpl(
      avatar: json['avatar'] as String?,
      username: json['username'] as String,
      nickname: json['nickname'] as String?,
      userId: json['userId'] as String,
      userSpecificId: (json['userSpecificId'] as num).toInt(),
      usertype: json['usertype'] as String,
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      expires: DateTime.parse(json['expires'] as String),
      refreshTokenExpires:
          DateTime.parse(json['refreshTokenExpires'] as String),
    );

Map<String, dynamic> _$$AuthDataImplToJson(_$AuthDataImpl instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'username': instance.username,
      'nickname': instance.nickname,
      'userId': instance.userId,
      'userSpecificId': instance.userSpecificId,
      'usertype': instance.usertype,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expires': instance.expires.toIso8601String(),
      'refreshTokenExpires': instance.refreshTokenExpires.toIso8601String(),
    };
