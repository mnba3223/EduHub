// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_exam.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentExam _$StudentExamFromJson(Map<String, dynamic> json) {
  return _StudentExam.fromJson(json);
}

/// @nodoc
mixin _$StudentExam {
  String get id => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  DateTime get examDate => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  String? get completedAt => throw _privateConstructorUsedError;

  /// Serializes this StudentExam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentExam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentExamCopyWith<StudentExam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentExamCopyWith<$Res> {
  factory $StudentExamCopyWith(
          StudentExam value, $Res Function(StudentExam) then) =
      _$StudentExamCopyWithImpl<$Res, StudentExam>;
  @useResult
  $Res call(
      {String id,
      String subject,
      DateTime examDate,
      String location,
      String description,
      bool isCompleted,
      String? completedAt});
}

/// @nodoc
class _$StudentExamCopyWithImpl<$Res, $Val extends StudentExam>
    implements $StudentExamCopyWith<$Res> {
  _$StudentExamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentExam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subject = null,
    Object? examDate = null,
    Object? location = null,
    Object? description = null,
    Object? isCompleted = null,
    Object? completedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      examDate: null == examDate
          ? _value.examDate
          : examDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentExamImplCopyWith<$Res>
    implements $StudentExamCopyWith<$Res> {
  factory _$$StudentExamImplCopyWith(
          _$StudentExamImpl value, $Res Function(_$StudentExamImpl) then) =
      __$$StudentExamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String subject,
      DateTime examDate,
      String location,
      String description,
      bool isCompleted,
      String? completedAt});
}

/// @nodoc
class __$$StudentExamImplCopyWithImpl<$Res>
    extends _$StudentExamCopyWithImpl<$Res, _$StudentExamImpl>
    implements _$$StudentExamImplCopyWith<$Res> {
  __$$StudentExamImplCopyWithImpl(
      _$StudentExamImpl _value, $Res Function(_$StudentExamImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentExam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subject = null,
    Object? examDate = null,
    Object? location = null,
    Object? description = null,
    Object? isCompleted = null,
    Object? completedAt = freezed,
  }) {
    return _then(_$StudentExamImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      examDate: null == examDate
          ? _value.examDate
          : examDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentExamImpl implements _StudentExam {
  const _$StudentExamImpl(
      {required this.id,
      required this.subject,
      required this.examDate,
      required this.location,
      required this.description,
      this.isCompleted = false,
      this.completedAt});

  factory _$StudentExamImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentExamImplFromJson(json);

  @override
  final String id;
  @override
  final String subject;
  @override
  final DateTime examDate;
  @override
  final String location;
  @override
  final String description;
  @override
  @JsonKey()
  final bool isCompleted;
  @override
  final String? completedAt;

  @override
  String toString() {
    return 'StudentExam(id: $id, subject: $subject, examDate: $examDate, location: $location, description: $description, isCompleted: $isCompleted, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentExamImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.examDate, examDate) ||
                other.examDate == examDate) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, subject, examDate, location,
      description, isCompleted, completedAt);

  /// Create a copy of StudentExam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentExamImplCopyWith<_$StudentExamImpl> get copyWith =>
      __$$StudentExamImplCopyWithImpl<_$StudentExamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentExamImplToJson(
      this,
    );
  }
}

abstract class _StudentExam implements StudentExam {
  const factory _StudentExam(
      {required final String id,
      required final String subject,
      required final DateTime examDate,
      required final String location,
      required final String description,
      final bool isCompleted,
      final String? completedAt}) = _$StudentExamImpl;

  factory _StudentExam.fromJson(Map<String, dynamic> json) =
      _$StudentExamImpl.fromJson;

  @override
  String get id;
  @override
  String get subject;
  @override
  DateTime get examDate;
  @override
  String get location;
  @override
  String get description;
  @override
  bool get isCompleted;
  @override
  String? get completedAt;

  /// Create a copy of StudentExam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentExamImplCopyWith<_$StudentExamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
