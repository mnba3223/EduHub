// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppException {
  String get message => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String message, String? code, ErrorDetails? details)
        $default, {
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) unauthorized,
    required TResult Function(
            String message, String code, ErrorDetails? details)
        validation,
    required TResult Function(
            String message, String code, ErrorDetails? details)
        server,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String message, String? code, ErrorDetails? details)?
        $default, {
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? unauthorized,
    TResult? Function(String message, String code, ErrorDetails? details)?
        validation,
    TResult? Function(String message, String code, ErrorDetails? details)?
        server,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String message, String? code, ErrorDetails? details)?
        $default, {
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? unauthorized,
    TResult Function(String message, String code, ErrorDetails? details)?
        validation,
    TResult Function(String message, String code, ErrorDetails? details)?
        server,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppException value) $default, {
    required TResult Function(NetworkException value) network,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ValidationException value) validation,
    required TResult Function(ServerException value) server,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AppException value)? $default, {
    TResult? Function(NetworkException value)? network,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ValidationException value)? validation,
    TResult? Function(ServerException value)? server,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppException value)? $default, {
    TResult Function(NetworkException value)? network,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ValidationException value)? validation,
    TResult Function(ServerException value)? server,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppExceptionCopyWith<AppException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppExceptionCopyWith<$Res> {
  factory $AppExceptionCopyWith(
          AppException value, $Res Function(AppException) then) =
      _$AppExceptionCopyWithImpl<$Res, AppException>;
  @useResult
  $Res call({String message, String code});
}

/// @nodoc
class _$AppExceptionCopyWithImpl<$Res, $Val extends AppException>
    implements $AppExceptionCopyWith<$Res> {
  _$AppExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code!
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppExceptionImplCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$AppExceptionImplCopyWith(
          _$AppExceptionImpl value, $Res Function(_$AppExceptionImpl) then) =
      __$$AppExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? code, ErrorDetails? details});

  $ErrorDetailsCopyWith<$Res>? get details;
}

/// @nodoc
class __$$AppExceptionImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$AppExceptionImpl>
    implements _$$AppExceptionImplCopyWith<$Res> {
  __$$AppExceptionImplCopyWithImpl(
      _$AppExceptionImpl _value, $Res Function(_$AppExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = freezed,
    Object? details = freezed,
  }) {
    return _then(_$AppExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ErrorDetails?,
    ));
  }

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorDetailsCopyWith<$Res>? get details {
    if (_value.details == null) {
      return null;
    }

    return $ErrorDetailsCopyWith<$Res>(_value.details!, (value) {
      return _then(_value.copyWith(details: value));
    });
  }
}

/// @nodoc

class _$AppExceptionImpl implements _AppException {
  const _$AppExceptionImpl({required this.message, this.code, this.details});

  @override
  final String message;
  @override
  final String? code;
  @override
  final ErrorDetails? details;

  @override
  String toString() {
    return 'AppException(message: $message, code: $code, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppExceptionImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.details, details) || other.details == details));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code, details);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppExceptionImplCopyWith<_$AppExceptionImpl> get copyWith =>
      __$$AppExceptionImplCopyWithImpl<_$AppExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String message, String? code, ErrorDetails? details)
        $default, {
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) unauthorized,
    required TResult Function(
            String message, String code, ErrorDetails? details)
        validation,
    required TResult Function(
            String message, String code, ErrorDetails? details)
        server,
  }) {
    return $default(message, code, details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String message, String? code, ErrorDetails? details)?
        $default, {
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? unauthorized,
    TResult? Function(String message, String code, ErrorDetails? details)?
        validation,
    TResult? Function(String message, String code, ErrorDetails? details)?
        server,
  }) {
    return $default?.call(message, code, details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String message, String? code, ErrorDetails? details)?
        $default, {
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? unauthorized,
    TResult Function(String message, String code, ErrorDetails? details)?
        validation,
    TResult Function(String message, String code, ErrorDetails? details)?
        server,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(message, code, details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppException value) $default, {
    required TResult Function(NetworkException value) network,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ValidationException value) validation,
    required TResult Function(ServerException value) server,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AppException value)? $default, {
    TResult? Function(NetworkException value)? network,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ValidationException value)? validation,
    TResult? Function(ServerException value)? server,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppException value)? $default, {
    TResult Function(NetworkException value)? network,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ValidationException value)? validation,
    TResult Function(ServerException value)? server,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _AppException implements AppException {
  const factory _AppException(
      {required final String message,
      final String? code,
      final ErrorDetails? details}) = _$AppExceptionImpl;

  @override
  String get message;
  @override
  String? get code;
  ErrorDetails? get details;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppExceptionImplCopyWith<_$AppExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkExceptionImplCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$NetworkExceptionImplCopyWith(_$NetworkExceptionImpl value,
          $Res Function(_$NetworkExceptionImpl) then) =
      __$$NetworkExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String code});
}

/// @nodoc
class __$$NetworkExceptionImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$NetworkExceptionImpl>
    implements _$$NetworkExceptionImplCopyWith<$Res> {
  __$$NetworkExceptionImplCopyWithImpl(_$NetworkExceptionImpl _value,
      $Res Function(_$NetworkExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$NetworkExceptionImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NetworkExceptionImpl implements NetworkException {
  const _$NetworkExceptionImpl(this.message, {this.code = 'NETWORK_ERROR'});

  @override
  final String message;
  @override
  @JsonKey()
  final String code;

  @override
  String toString() {
    return 'AppException.network(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkExceptionImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkExceptionImplCopyWith<_$NetworkExceptionImpl> get copyWith =>
      __$$NetworkExceptionImplCopyWithImpl<_$NetworkExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String message, String? code, ErrorDetails? details)
        $default, {
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) unauthorized,
    required TResult Function(
            String message, String code, ErrorDetails? details)
        validation,
    required TResult Function(
            String message, String code, ErrorDetails? details)
        server,
  }) {
    return network(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String message, String? code, ErrorDetails? details)?
        $default, {
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? unauthorized,
    TResult? Function(String message, String code, ErrorDetails? details)?
        validation,
    TResult? Function(String message, String code, ErrorDetails? details)?
        server,
  }) {
    return network?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String message, String? code, ErrorDetails? details)?
        $default, {
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? unauthorized,
    TResult Function(String message, String code, ErrorDetails? details)?
        validation,
    TResult Function(String message, String code, ErrorDetails? details)?
        server,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppException value) $default, {
    required TResult Function(NetworkException value) network,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ValidationException value) validation,
    required TResult Function(ServerException value) server,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AppException value)? $default, {
    TResult? Function(NetworkException value)? network,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ValidationException value)? validation,
    TResult? Function(ServerException value)? server,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppException value)? $default, {
    TResult Function(NetworkException value)? network,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ValidationException value)? validation,
    TResult Function(ServerException value)? server,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class NetworkException implements AppException {
  const factory NetworkException(final String message, {final String code}) =
      _$NetworkExceptionImpl;

  @override
  String get message;
  @override
  String get code;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkExceptionImplCopyWith<_$NetworkExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedExceptionImplCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$UnauthorizedExceptionImplCopyWith(
          _$UnauthorizedExceptionImpl value,
          $Res Function(_$UnauthorizedExceptionImpl) then) =
      __$$UnauthorizedExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String code});
}

/// @nodoc
class __$$UnauthorizedExceptionImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$UnauthorizedExceptionImpl>
    implements _$$UnauthorizedExceptionImplCopyWith<$Res> {
  __$$UnauthorizedExceptionImplCopyWithImpl(_$UnauthorizedExceptionImpl _value,
      $Res Function(_$UnauthorizedExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$UnauthorizedExceptionImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnauthorizedExceptionImpl implements UnauthorizedException {
  const _$UnauthorizedExceptionImpl(this.message, {this.code = 'UNAUTHORIZED'});

  @override
  final String message;
  @override
  @JsonKey()
  final String code;

  @override
  String toString() {
    return 'AppException.unauthorized(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedExceptionImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedExceptionImplCopyWith<_$UnauthorizedExceptionImpl>
      get copyWith => __$$UnauthorizedExceptionImplCopyWithImpl<
          _$UnauthorizedExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String message, String? code, ErrorDetails? details)
        $default, {
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) unauthorized,
    required TResult Function(
            String message, String code, ErrorDetails? details)
        validation,
    required TResult Function(
            String message, String code, ErrorDetails? details)
        server,
  }) {
    return unauthorized(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String message, String? code, ErrorDetails? details)?
        $default, {
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? unauthorized,
    TResult? Function(String message, String code, ErrorDetails? details)?
        validation,
    TResult? Function(String message, String code, ErrorDetails? details)?
        server,
  }) {
    return unauthorized?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String message, String? code, ErrorDetails? details)?
        $default, {
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? unauthorized,
    TResult Function(String message, String code, ErrorDetails? details)?
        validation,
    TResult Function(String message, String code, ErrorDetails? details)?
        server,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppException value) $default, {
    required TResult Function(NetworkException value) network,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ValidationException value) validation,
    required TResult Function(ServerException value) server,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AppException value)? $default, {
    TResult? Function(NetworkException value)? network,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ValidationException value)? validation,
    TResult? Function(ServerException value)? server,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppException value)? $default, {
    TResult Function(NetworkException value)? network,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ValidationException value)? validation,
    TResult Function(ServerException value)? server,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class UnauthorizedException implements AppException {
  const factory UnauthorizedException(final String message,
      {final String code}) = _$UnauthorizedExceptionImpl;

  @override
  String get message;
  @override
  String get code;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnauthorizedExceptionImplCopyWith<_$UnauthorizedExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidationExceptionImplCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$ValidationExceptionImplCopyWith(_$ValidationExceptionImpl value,
          $Res Function(_$ValidationExceptionImpl) then) =
      __$$ValidationExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String code, ErrorDetails? details});

  $ErrorDetailsCopyWith<$Res>? get details;
}

/// @nodoc
class __$$ValidationExceptionImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$ValidationExceptionImpl>
    implements _$$ValidationExceptionImplCopyWith<$Res> {
  __$$ValidationExceptionImplCopyWithImpl(_$ValidationExceptionImpl _value,
      $Res Function(_$ValidationExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
    Object? details = freezed,
  }) {
    return _then(_$ValidationExceptionImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ErrorDetails?,
    ));
  }

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorDetailsCopyWith<$Res>? get details {
    if (_value.details == null) {
      return null;
    }

    return $ErrorDetailsCopyWith<$Res>(_value.details!, (value) {
      return _then(_value.copyWith(details: value));
    });
  }
}

/// @nodoc

class _$ValidationExceptionImpl implements ValidationException {
  const _$ValidationExceptionImpl(this.message,
      {this.code = 'VALIDATION_ERROR', this.details});

  @override
  final String message;
  @override
  @JsonKey()
  final String code;
  @override
  final ErrorDetails? details;

  @override
  String toString() {
    return 'AppException.validation(message: $message, code: $code, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationExceptionImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.details, details) || other.details == details));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code, details);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationExceptionImplCopyWith<_$ValidationExceptionImpl> get copyWith =>
      __$$ValidationExceptionImplCopyWithImpl<_$ValidationExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String message, String? code, ErrorDetails? details)
        $default, {
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) unauthorized,
    required TResult Function(
            String message, String code, ErrorDetails? details)
        validation,
    required TResult Function(
            String message, String code, ErrorDetails? details)
        server,
  }) {
    return validation(message, code, details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String message, String? code, ErrorDetails? details)?
        $default, {
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? unauthorized,
    TResult? Function(String message, String code, ErrorDetails? details)?
        validation,
    TResult? Function(String message, String code, ErrorDetails? details)?
        server,
  }) {
    return validation?.call(message, code, details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String message, String? code, ErrorDetails? details)?
        $default, {
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? unauthorized,
    TResult Function(String message, String code, ErrorDetails? details)?
        validation,
    TResult Function(String message, String code, ErrorDetails? details)?
        server,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(message, code, details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppException value) $default, {
    required TResult Function(NetworkException value) network,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ValidationException value) validation,
    required TResult Function(ServerException value) server,
  }) {
    return validation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AppException value)? $default, {
    TResult? Function(NetworkException value)? network,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ValidationException value)? validation,
    TResult? Function(ServerException value)? server,
  }) {
    return validation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppException value)? $default, {
    TResult Function(NetworkException value)? network,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ValidationException value)? validation,
    TResult Function(ServerException value)? server,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(this);
    }
    return orElse();
  }
}

abstract class ValidationException implements AppException {
  const factory ValidationException(final String message,
      {final String code,
      final ErrorDetails? details}) = _$ValidationExceptionImpl;

  @override
  String get message;
  @override
  String get code;
  ErrorDetails? get details;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationExceptionImplCopyWith<_$ValidationExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerExceptionImplCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$ServerExceptionImplCopyWith(_$ServerExceptionImpl value,
          $Res Function(_$ServerExceptionImpl) then) =
      __$$ServerExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String code, ErrorDetails? details});

  $ErrorDetailsCopyWith<$Res>? get details;
}

/// @nodoc
class __$$ServerExceptionImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$ServerExceptionImpl>
    implements _$$ServerExceptionImplCopyWith<$Res> {
  __$$ServerExceptionImplCopyWithImpl(
      _$ServerExceptionImpl _value, $Res Function(_$ServerExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
    Object? details = freezed,
  }) {
    return _then(_$ServerExceptionImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ErrorDetails?,
    ));
  }

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorDetailsCopyWith<$Res>? get details {
    if (_value.details == null) {
      return null;
    }

    return $ErrorDetailsCopyWith<$Res>(_value.details!, (value) {
      return _then(_value.copyWith(details: value));
    });
  }
}

/// @nodoc

class _$ServerExceptionImpl implements ServerException {
  const _$ServerExceptionImpl(this.message,
      {this.code = 'SERVER_ERROR', this.details});

  @override
  final String message;
  @override
  @JsonKey()
  final String code;
  @override
  final ErrorDetails? details;

  @override
  String toString() {
    return 'AppException.server(message: $message, code: $code, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerExceptionImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.details, details) || other.details == details));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code, details);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerExceptionImplCopyWith<_$ServerExceptionImpl> get copyWith =>
      __$$ServerExceptionImplCopyWithImpl<_$ServerExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String message, String? code, ErrorDetails? details)
        $default, {
    required TResult Function(String message, String code) network,
    required TResult Function(String message, String code) unauthorized,
    required TResult Function(
            String message, String code, ErrorDetails? details)
        validation,
    required TResult Function(
            String message, String code, ErrorDetails? details)
        server,
  }) {
    return server(message, code, details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String message, String? code, ErrorDetails? details)?
        $default, {
    TResult? Function(String message, String code)? network,
    TResult? Function(String message, String code)? unauthorized,
    TResult? Function(String message, String code, ErrorDetails? details)?
        validation,
    TResult? Function(String message, String code, ErrorDetails? details)?
        server,
  }) {
    return server?.call(message, code, details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String message, String? code, ErrorDetails? details)?
        $default, {
    TResult Function(String message, String code)? network,
    TResult Function(String message, String code)? unauthorized,
    TResult Function(String message, String code, ErrorDetails? details)?
        validation,
    TResult Function(String message, String code, ErrorDetails? details)?
        server,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message, code, details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AppException value) $default, {
    required TResult Function(NetworkException value) network,
    required TResult Function(UnauthorizedException value) unauthorized,
    required TResult Function(ValidationException value) validation,
    required TResult Function(ServerException value) server,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AppException value)? $default, {
    TResult? Function(NetworkException value)? network,
    TResult? Function(UnauthorizedException value)? unauthorized,
    TResult? Function(ValidationException value)? validation,
    TResult? Function(ServerException value)? server,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AppException value)? $default, {
    TResult Function(NetworkException value)? network,
    TResult Function(UnauthorizedException value)? unauthorized,
    TResult Function(ValidationException value)? validation,
    TResult Function(ServerException value)? server,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class ServerException implements AppException {
  const factory ServerException(final String message,
      {final String code, final ErrorDetails? details}) = _$ServerExceptionImpl;

  @override
  String get message;
  @override
  String get code;
  ErrorDetails? get details;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerExceptionImplCopyWith<_$ServerExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorDetails _$ErrorDetailsFromJson(Map<String, dynamic> json) {
  return _ErrorDetails.fromJson(json);
}

/// @nodoc
mixin _$ErrorDetails {
  String? get field => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;

  /// Serializes this ErrorDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ErrorDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ErrorDetailsCopyWith<ErrorDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorDetailsCopyWith<$Res> {
  factory $ErrorDetailsCopyWith(
          ErrorDetails value, $Res Function(ErrorDetails) then) =
      _$ErrorDetailsCopyWithImpl<$Res, ErrorDetails>;
  @useResult
  $Res call({String? field, String? reason});
}

/// @nodoc
class _$ErrorDetailsCopyWithImpl<$Res, $Val extends ErrorDetails>
    implements $ErrorDetailsCopyWith<$Res> {
  _$ErrorDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ErrorDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = freezed,
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      field: freezed == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorDetailsImplCopyWith<$Res>
    implements $ErrorDetailsCopyWith<$Res> {
  factory _$$ErrorDetailsImplCopyWith(
          _$ErrorDetailsImpl value, $Res Function(_$ErrorDetailsImpl) then) =
      __$$ErrorDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? field, String? reason});
}

/// @nodoc
class __$$ErrorDetailsImplCopyWithImpl<$Res>
    extends _$ErrorDetailsCopyWithImpl<$Res, _$ErrorDetailsImpl>
    implements _$$ErrorDetailsImplCopyWith<$Res> {
  __$$ErrorDetailsImplCopyWithImpl(
      _$ErrorDetailsImpl _value, $Res Function(_$ErrorDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ErrorDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$ErrorDetailsImpl(
      field: freezed == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorDetailsImpl implements _ErrorDetails {
  const _$ErrorDetailsImpl({this.field, this.reason});

  factory _$ErrorDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorDetailsImplFromJson(json);

  @override
  final String? field;
  @override
  final String? reason;

  @override
  String toString() {
    return 'ErrorDetails(field: $field, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorDetailsImpl &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field, reason);

  /// Create a copy of ErrorDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorDetailsImplCopyWith<_$ErrorDetailsImpl> get copyWith =>
      __$$ErrorDetailsImplCopyWithImpl<_$ErrorDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorDetailsImplToJson(
      this,
    );
  }
}

abstract class _ErrorDetails implements ErrorDetails {
  const factory _ErrorDetails({final String? field, final String? reason}) =
      _$ErrorDetailsImpl;

  factory _ErrorDetails.fromJson(Map<String, dynamic> json) =
      _$ErrorDetailsImpl.fromJson;

  @override
  String? get field;
  @override
  String? get reason;

  /// Create a copy of ErrorDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorDetailsImplCopyWith<_$ErrorDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
