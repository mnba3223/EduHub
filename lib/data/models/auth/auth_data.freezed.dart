// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthData _$AuthDataFromJson(Map<String, dynamic> json) {
  return _AuthData.fromJson(json);
}

/// @nodoc
mixin _$AuthData {
  String? get avatar => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "userSpecificId")
  int get userSpecificId => throw _privateConstructorUsedError;
  @JsonKey(name: "roles")
  String get roles =>
      throw _privateConstructorUsedError; // required List<String> permissions,
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  DateTime get expires => throw _privateConstructorUsedError;
  DateTime get refreshTokenExpires => throw _privateConstructorUsedError;

  /// Serializes this AuthData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthDataCopyWith<AuthData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthDataCopyWith<$Res> {
  factory $AuthDataCopyWith(AuthData value, $Res Function(AuthData) then) =
      _$AuthDataCopyWithImpl<$Res, AuthData>;
  @useResult
  $Res call(
      {String? avatar,
      String username,
      String? nickname,
      @JsonKey(name: 'userId') String userId,
      @JsonKey(name: "userSpecificId") int userSpecificId,
      @JsonKey(name: "roles") String roles,
      String accessToken,
      String refreshToken,
      DateTime expires,
      DateTime refreshTokenExpires});
}

/// @nodoc
class _$AuthDataCopyWithImpl<$Res, $Val extends AuthData>
    implements $AuthDataCopyWith<$Res> {
  _$AuthDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? username = null,
    Object? nickname = freezed,
    Object? userId = null,
    Object? userSpecificId = null,
    Object? roles = null,
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? expires = null,
    Object? refreshTokenExpires = null,
  }) {
    return _then(_value.copyWith(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userSpecificId: null == userSpecificId
          ? _value.userSpecificId
          : userSpecificId // ignore: cast_nullable_to_non_nullable
              as int,
      roles: null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expires: null == expires
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as DateTime,
      refreshTokenExpires: null == refreshTokenExpires
          ? _value.refreshTokenExpires
          : refreshTokenExpires // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthDataImplCopyWith<$Res>
    implements $AuthDataCopyWith<$Res> {
  factory _$$AuthDataImplCopyWith(
          _$AuthDataImpl value, $Res Function(_$AuthDataImpl) then) =
      __$$AuthDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? avatar,
      String username,
      String? nickname,
      @JsonKey(name: 'userId') String userId,
      @JsonKey(name: "userSpecificId") int userSpecificId,
      @JsonKey(name: "roles") String roles,
      String accessToken,
      String refreshToken,
      DateTime expires,
      DateTime refreshTokenExpires});
}

/// @nodoc
class __$$AuthDataImplCopyWithImpl<$Res>
    extends _$AuthDataCopyWithImpl<$Res, _$AuthDataImpl>
    implements _$$AuthDataImplCopyWith<$Res> {
  __$$AuthDataImplCopyWithImpl(
      _$AuthDataImpl _value, $Res Function(_$AuthDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? username = null,
    Object? nickname = freezed,
    Object? userId = null,
    Object? userSpecificId = null,
    Object? roles = null,
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? expires = null,
    Object? refreshTokenExpires = null,
  }) {
    return _then(_$AuthDataImpl(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userSpecificId: null == userSpecificId
          ? _value.userSpecificId
          : userSpecificId // ignore: cast_nullable_to_non_nullable
              as int,
      roles: null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expires: null == expires
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as DateTime,
      refreshTokenExpires: null == refreshTokenExpires
          ? _value.refreshTokenExpires
          : refreshTokenExpires // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthDataImpl implements _AuthData {
  const _$AuthDataImpl(
      {this.avatar,
      required this.username,
      this.nickname,
      @JsonKey(name: 'userId') required this.userId,
      @JsonKey(name: "userSpecificId") required this.userSpecificId,
      @JsonKey(name: "roles") required this.roles,
      required this.accessToken,
      required this.refreshToken,
      required this.expires,
      required this.refreshTokenExpires});

  factory _$AuthDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthDataImplFromJson(json);

  @override
  final String? avatar;
  @override
  final String username;
  @override
  final String? nickname;
  @override
  @JsonKey(name: 'userId')
  final String userId;
  @override
  @JsonKey(name: "userSpecificId")
  final int userSpecificId;
  @override
  @JsonKey(name: "roles")
  final String roles;
// required List<String> permissions,
  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final DateTime expires;
  @override
  final DateTime refreshTokenExpires;

  @override
  String toString() {
    return 'AuthData(avatar: $avatar, username: $username, nickname: $nickname, userId: $userId, userSpecificId: $userSpecificId, roles: $roles, accessToken: $accessToken, refreshToken: $refreshToken, expires: $expires, refreshTokenExpires: $refreshTokenExpires)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthDataImpl &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userSpecificId, userSpecificId) ||
                other.userSpecificId == userSpecificId) &&
            (identical(other.roles, roles) || other.roles == roles) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.expires, expires) || other.expires == expires) &&
            (identical(other.refreshTokenExpires, refreshTokenExpires) ||
                other.refreshTokenExpires == refreshTokenExpires));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      avatar,
      username,
      nickname,
      userId,
      userSpecificId,
      roles,
      accessToken,
      refreshToken,
      expires,
      refreshTokenExpires);

  /// Create a copy of AuthData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthDataImplCopyWith<_$AuthDataImpl> get copyWith =>
      __$$AuthDataImplCopyWithImpl<_$AuthDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthDataImplToJson(
      this,
    );
  }
}

abstract class _AuthData implements AuthData {
  const factory _AuthData(
      {final String? avatar,
      required final String username,
      final String? nickname,
      @JsonKey(name: 'userId') required final String userId,
      @JsonKey(name: "userSpecificId") required final int userSpecificId,
      @JsonKey(name: "roles") required final String roles,
      required final String accessToken,
      required final String refreshToken,
      required final DateTime expires,
      required final DateTime refreshTokenExpires}) = _$AuthDataImpl;

  factory _AuthData.fromJson(Map<String, dynamic> json) =
      _$AuthDataImpl.fromJson;

  @override
  String? get avatar;
  @override
  String get username;
  @override
  String? get nickname;
  @override
  @JsonKey(name: 'userId')
  String get userId;
  @override
  @JsonKey(name: "userSpecificId")
  int get userSpecificId;
  @override
  @JsonKey(name: "roles")
  String get roles; // required List<String> permissions,
  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  DateTime get expires;
  @override
  DateTime get refreshTokenExpires;

  /// Create a copy of AuthData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthDataImplCopyWith<_$AuthDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
