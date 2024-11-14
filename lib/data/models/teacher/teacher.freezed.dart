// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Teacher _$TeacherFromJson(Map<String, dynamic> json) {
  return _Teacher.fromJson(json);
}

/// @nodoc
mixin _$Teacher {
  @JsonKey(name: 'teacher_id')
  int get teacherId => throw _privateConstructorUsedError;
  @JsonKey(name: 'teacher_name')
  String get teacherName => throw _privateConstructorUsedError;
  @JsonKey(name: 'teacher_email')
  String get teacherEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'teacher_phone')
  String get teacherPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'school_id')
  int get schoolId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  /// Serializes this Teacher to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Teacher
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherCopyWith<Teacher> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherCopyWith<$Res> {
  factory $TeacherCopyWith(Teacher value, $Res Function(Teacher) then) =
      _$TeacherCopyWithImpl<$Res, Teacher>;
  @useResult
  $Res call(
      {@JsonKey(name: 'teacher_id') int teacherId,
      @JsonKey(name: 'teacher_name') String teacherName,
      @JsonKey(name: 'teacher_email') String teacherEmail,
      @JsonKey(name: 'teacher_phone') String teacherPhone,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'school_id') int schoolId,
      @JsonKey(name: 'user_id') int userId,
      String username});
}

/// @nodoc
class _$TeacherCopyWithImpl<$Res, $Val extends Teacher>
    implements $TeacherCopyWith<$Res> {
  _$TeacherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Teacher
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacherId = null,
    Object? teacherName = null,
    Object? teacherEmail = null,
    Object? teacherPhone = null,
    Object? profileImage = freezed,
    Object? schoolId = null,
    Object? userId = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int,
      teacherName: null == teacherName
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String,
      teacherEmail: null == teacherEmail
          ? _value.teacherEmail
          : teacherEmail // ignore: cast_nullable_to_non_nullable
              as String,
      teacherPhone: null == teacherPhone
          ? _value.teacherPhone
          : teacherPhone // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherImplCopyWith<$Res> implements $TeacherCopyWith<$Res> {
  factory _$$TeacherImplCopyWith(
          _$TeacherImpl value, $Res Function(_$TeacherImpl) then) =
      __$$TeacherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'teacher_id') int teacherId,
      @JsonKey(name: 'teacher_name') String teacherName,
      @JsonKey(name: 'teacher_email') String teacherEmail,
      @JsonKey(name: 'teacher_phone') String teacherPhone,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'school_id') int schoolId,
      @JsonKey(name: 'user_id') int userId,
      String username});
}

/// @nodoc
class __$$TeacherImplCopyWithImpl<$Res>
    extends _$TeacherCopyWithImpl<$Res, _$TeacherImpl>
    implements _$$TeacherImplCopyWith<$Res> {
  __$$TeacherImplCopyWithImpl(
      _$TeacherImpl _value, $Res Function(_$TeacherImpl) _then)
      : super(_value, _then);

  /// Create a copy of Teacher
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacherId = null,
    Object? teacherName = null,
    Object? teacherEmail = null,
    Object? teacherPhone = null,
    Object? profileImage = freezed,
    Object? schoolId = null,
    Object? userId = null,
    Object? username = null,
  }) {
    return _then(_$TeacherImpl(
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int,
      teacherName: null == teacherName
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String,
      teacherEmail: null == teacherEmail
          ? _value.teacherEmail
          : teacherEmail // ignore: cast_nullable_to_non_nullable
              as String,
      teacherPhone: null == teacherPhone
          ? _value.teacherPhone
          : teacherPhone // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherImpl implements _Teacher {
  const _$TeacherImpl(
      {@JsonKey(name: 'teacher_id') required this.teacherId,
      @JsonKey(name: 'teacher_name') required this.teacherName,
      @JsonKey(name: 'teacher_email') required this.teacherEmail,
      @JsonKey(name: 'teacher_phone') required this.teacherPhone,
      @JsonKey(name: 'profile_image') this.profileImage,
      @JsonKey(name: 'school_id') required this.schoolId,
      @JsonKey(name: 'user_id') required this.userId,
      required this.username});

  factory _$TeacherImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherImplFromJson(json);

  @override
  @JsonKey(name: 'teacher_id')
  final int teacherId;
  @override
  @JsonKey(name: 'teacher_name')
  final String teacherName;
  @override
  @JsonKey(name: 'teacher_email')
  final String teacherEmail;
  @override
  @JsonKey(name: 'teacher_phone')
  final String teacherPhone;
  @override
  @JsonKey(name: 'profile_image')
  final String? profileImage;
  @override
  @JsonKey(name: 'school_id')
  final int schoolId;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  final String username;

  @override
  String toString() {
    return 'Teacher(teacherId: $teacherId, teacherName: $teacherName, teacherEmail: $teacherEmail, teacherPhone: $teacherPhone, profileImage: $profileImage, schoolId: $schoolId, userId: $userId, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherImpl &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId) &&
            (identical(other.teacherName, teacherName) ||
                other.teacherName == teacherName) &&
            (identical(other.teacherEmail, teacherEmail) ||
                other.teacherEmail == teacherEmail) &&
            (identical(other.teacherPhone, teacherPhone) ||
                other.teacherPhone == teacherPhone) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, teacherId, teacherName,
      teacherEmail, teacherPhone, profileImage, schoolId, userId, username);

  /// Create a copy of Teacher
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherImplCopyWith<_$TeacherImpl> get copyWith =>
      __$$TeacherImplCopyWithImpl<_$TeacherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherImplToJson(
      this,
    );
  }
}

abstract class _Teacher implements Teacher {
  const factory _Teacher(
      {@JsonKey(name: 'teacher_id') required final int teacherId,
      @JsonKey(name: 'teacher_name') required final String teacherName,
      @JsonKey(name: 'teacher_email') required final String teacherEmail,
      @JsonKey(name: 'teacher_phone') required final String teacherPhone,
      @JsonKey(name: 'profile_image') final String? profileImage,
      @JsonKey(name: 'school_id') required final int schoolId,
      @JsonKey(name: 'user_id') required final int userId,
      required final String username}) = _$TeacherImpl;

  factory _Teacher.fromJson(Map<String, dynamic> json) = _$TeacherImpl.fromJson;

  @override
  @JsonKey(name: 'teacher_id')
  int get teacherId;
  @override
  @JsonKey(name: 'teacher_name')
  String get teacherName;
  @override
  @JsonKey(name: 'teacher_email')
  String get teacherEmail;
  @override
  @JsonKey(name: 'teacher_phone')
  String get teacherPhone;
  @override
  @JsonKey(name: 'profile_image')
  String? get profileImage;
  @override
  @JsonKey(name: 'school_id')
  int get schoolId;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  String get username;

  /// Create a copy of Teacher
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherImplCopyWith<_$TeacherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
