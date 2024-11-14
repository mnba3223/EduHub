// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Student _$StudentFromJson(Map<String, dynamic> json) {
  return _Student.fromJson(json);
}

/// @nodoc
mixin _$Student {
  @JsonKey(name: 'student_id')
  int get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_name')
  String get studentName => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_dob')
  DateTime get studentDob => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_gender')
  String get studentGender => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_phone')
  String get studentPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_address')
  String get studentAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_email')
  String get studentEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_code')
  String? get studentCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'school_id')
  int get schoolId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  /// Serializes this Student to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentCopyWith<Student> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCopyWith<$Res> {
  factory $StudentCopyWith(Student value, $Res Function(Student) then) =
      _$StudentCopyWithImpl<$Res, Student>;
  @useResult
  $Res call(
      {@JsonKey(name: 'student_id') int studentId,
      @JsonKey(name: 'student_name') String studentName,
      @JsonKey(name: 'student_dob') DateTime studentDob,
      @JsonKey(name: 'student_gender') String studentGender,
      @JsonKey(name: 'student_phone') String studentPhone,
      @JsonKey(name: 'student_address') String studentAddress,
      @JsonKey(name: 'student_email') String studentEmail,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'student_code') String? studentCode,
      @JsonKey(name: 'school_id') int schoolId,
      @JsonKey(name: 'user_id') int userId,
      String username});
}

/// @nodoc
class _$StudentCopyWithImpl<$Res, $Val extends Student>
    implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? studentName = null,
    Object? studentDob = null,
    Object? studentGender = null,
    Object? studentPhone = null,
    Object? studentAddress = null,
    Object? studentEmail = null,
    Object? profileImage = freezed,
    Object? studentCode = freezed,
    Object? schoolId = null,
    Object? userId = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      studentDob: null == studentDob
          ? _value.studentDob
          : studentDob // ignore: cast_nullable_to_non_nullable
              as DateTime,
      studentGender: null == studentGender
          ? _value.studentGender
          : studentGender // ignore: cast_nullable_to_non_nullable
              as String,
      studentPhone: null == studentPhone
          ? _value.studentPhone
          : studentPhone // ignore: cast_nullable_to_non_nullable
              as String,
      studentAddress: null == studentAddress
          ? _value.studentAddress
          : studentAddress // ignore: cast_nullable_to_non_nullable
              as String,
      studentEmail: null == studentEmail
          ? _value.studentEmail
          : studentEmail // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      studentCode: freezed == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
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
abstract class _$$StudentImplCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$$StudentImplCopyWith(
          _$StudentImpl value, $Res Function(_$StudentImpl) then) =
      __$$StudentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'student_id') int studentId,
      @JsonKey(name: 'student_name') String studentName,
      @JsonKey(name: 'student_dob') DateTime studentDob,
      @JsonKey(name: 'student_gender') String studentGender,
      @JsonKey(name: 'student_phone') String studentPhone,
      @JsonKey(name: 'student_address') String studentAddress,
      @JsonKey(name: 'student_email') String studentEmail,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'student_code') String? studentCode,
      @JsonKey(name: 'school_id') int schoolId,
      @JsonKey(name: 'user_id') int userId,
      String username});
}

/// @nodoc
class __$$StudentImplCopyWithImpl<$Res>
    extends _$StudentCopyWithImpl<$Res, _$StudentImpl>
    implements _$$StudentImplCopyWith<$Res> {
  __$$StudentImplCopyWithImpl(
      _$StudentImpl _value, $Res Function(_$StudentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? studentName = null,
    Object? studentDob = null,
    Object? studentGender = null,
    Object? studentPhone = null,
    Object? studentAddress = null,
    Object? studentEmail = null,
    Object? profileImage = freezed,
    Object? studentCode = freezed,
    Object? schoolId = null,
    Object? userId = null,
    Object? username = null,
  }) {
    return _then(_$StudentImpl(
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      studentDob: null == studentDob
          ? _value.studentDob
          : studentDob // ignore: cast_nullable_to_non_nullable
              as DateTime,
      studentGender: null == studentGender
          ? _value.studentGender
          : studentGender // ignore: cast_nullable_to_non_nullable
              as String,
      studentPhone: null == studentPhone
          ? _value.studentPhone
          : studentPhone // ignore: cast_nullable_to_non_nullable
              as String,
      studentAddress: null == studentAddress
          ? _value.studentAddress
          : studentAddress // ignore: cast_nullable_to_non_nullable
              as String,
      studentEmail: null == studentEmail
          ? _value.studentEmail
          : studentEmail // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      studentCode: freezed == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
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
class _$StudentImpl implements _Student {
  const _$StudentImpl(
      {@JsonKey(name: 'student_id') required this.studentId,
      @JsonKey(name: 'student_name') required this.studentName,
      @JsonKey(name: 'student_dob') required this.studentDob,
      @JsonKey(name: 'student_gender') required this.studentGender,
      @JsonKey(name: 'student_phone') required this.studentPhone,
      @JsonKey(name: 'student_address') required this.studentAddress,
      @JsonKey(name: 'student_email') required this.studentEmail,
      @JsonKey(name: 'profile_image') this.profileImage,
      @JsonKey(name: 'student_code') this.studentCode,
      @JsonKey(name: 'school_id') required this.schoolId,
      @JsonKey(name: 'user_id') required this.userId,
      required this.username});

  factory _$StudentImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentImplFromJson(json);

  @override
  @JsonKey(name: 'student_id')
  final int studentId;
  @override
  @JsonKey(name: 'student_name')
  final String studentName;
  @override
  @JsonKey(name: 'student_dob')
  final DateTime studentDob;
  @override
  @JsonKey(name: 'student_gender')
  final String studentGender;
  @override
  @JsonKey(name: 'student_phone')
  final String studentPhone;
  @override
  @JsonKey(name: 'student_address')
  final String studentAddress;
  @override
  @JsonKey(name: 'student_email')
  final String studentEmail;
  @override
  @JsonKey(name: 'profile_image')
  final String? profileImage;
  @override
  @JsonKey(name: 'student_code')
  final String? studentCode;
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
    return 'Student(studentId: $studentId, studentName: $studentName, studentDob: $studentDob, studentGender: $studentGender, studentPhone: $studentPhone, studentAddress: $studentAddress, studentEmail: $studentEmail, profileImage: $profileImage, studentCode: $studentCode, schoolId: $schoolId, userId: $userId, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.studentDob, studentDob) ||
                other.studentDob == studentDob) &&
            (identical(other.studentGender, studentGender) ||
                other.studentGender == studentGender) &&
            (identical(other.studentPhone, studentPhone) ||
                other.studentPhone == studentPhone) &&
            (identical(other.studentAddress, studentAddress) ||
                other.studentAddress == studentAddress) &&
            (identical(other.studentEmail, studentEmail) ||
                other.studentEmail == studentEmail) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      studentId,
      studentName,
      studentDob,
      studentGender,
      studentPhone,
      studentAddress,
      studentEmail,
      profileImage,
      studentCode,
      schoolId,
      userId,
      username);

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentImplCopyWith<_$StudentImpl> get copyWith =>
      __$$StudentImplCopyWithImpl<_$StudentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentImplToJson(
      this,
    );
  }
}

abstract class _Student implements Student {
  const factory _Student(
      {@JsonKey(name: 'student_id') required final int studentId,
      @JsonKey(name: 'student_name') required final String studentName,
      @JsonKey(name: 'student_dob') required final DateTime studentDob,
      @JsonKey(name: 'student_gender') required final String studentGender,
      @JsonKey(name: 'student_phone') required final String studentPhone,
      @JsonKey(name: 'student_address') required final String studentAddress,
      @JsonKey(name: 'student_email') required final String studentEmail,
      @JsonKey(name: 'profile_image') final String? profileImage,
      @JsonKey(name: 'student_code') final String? studentCode,
      @JsonKey(name: 'school_id') required final int schoolId,
      @JsonKey(name: 'user_id') required final int userId,
      required final String username}) = _$StudentImpl;

  factory _Student.fromJson(Map<String, dynamic> json) = _$StudentImpl.fromJson;

  @override
  @JsonKey(name: 'student_id')
  int get studentId;
  @override
  @JsonKey(name: 'student_name')
  String get studentName;
  @override
  @JsonKey(name: 'student_dob')
  DateTime get studentDob;
  @override
  @JsonKey(name: 'student_gender')
  String get studentGender;
  @override
  @JsonKey(name: 'student_phone')
  String get studentPhone;
  @override
  @JsonKey(name: 'student_address')
  String get studentAddress;
  @override
  @JsonKey(name: 'student_email')
  String get studentEmail;
  @override
  @JsonKey(name: 'profile_image')
  String? get profileImage;
  @override
  @JsonKey(name: 'student_code')
  String? get studentCode;
  @override
  @JsonKey(name: 'school_id')
  int get schoolId;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  String get username;

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentImplCopyWith<_$StudentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
