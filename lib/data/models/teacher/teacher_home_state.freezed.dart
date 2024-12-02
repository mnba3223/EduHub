// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TeacherHomeState {
  List<Lesson> get todayCourses => throw _privateConstructorUsedError;
  List<TeacherExam> get weeklyExams => throw _privateConstructorUsedError;
  List<TeacherHomeworkListItem> get weeklyHomework =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of TeacherHomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherHomeStateCopyWith<TeacherHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherHomeStateCopyWith<$Res> {
  factory $TeacherHomeStateCopyWith(
          TeacherHomeState value, $Res Function(TeacherHomeState) then) =
      _$TeacherHomeStateCopyWithImpl<$Res, TeacherHomeState>;
  @useResult
  $Res call(
      {List<Lesson> todayCourses,
      List<TeacherExam> weeklyExams,
      List<TeacherHomeworkListItem> weeklyHomework,
      bool isLoading,
      String? error});
}

/// @nodoc
class _$TeacherHomeStateCopyWithImpl<$Res, $Val extends TeacherHomeState>
    implements $TeacherHomeStateCopyWith<$Res> {
  _$TeacherHomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherHomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todayCourses = null,
    Object? weeklyExams = null,
    Object? weeklyHomework = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      todayCourses: null == todayCourses
          ? _value.todayCourses
          : todayCourses // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
      weeklyExams: null == weeklyExams
          ? _value.weeklyExams
          : weeklyExams // ignore: cast_nullable_to_non_nullable
              as List<TeacherExam>,
      weeklyHomework: null == weeklyHomework
          ? _value.weeklyHomework
          : weeklyHomework // ignore: cast_nullable_to_non_nullable
              as List<TeacherHomeworkListItem>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherHomeStateImplCopyWith<$Res>
    implements $TeacherHomeStateCopyWith<$Res> {
  factory _$$TeacherHomeStateImplCopyWith(_$TeacherHomeStateImpl value,
          $Res Function(_$TeacherHomeStateImpl) then) =
      __$$TeacherHomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Lesson> todayCourses,
      List<TeacherExam> weeklyExams,
      List<TeacherHomeworkListItem> weeklyHomework,
      bool isLoading,
      String? error});
}

/// @nodoc
class __$$TeacherHomeStateImplCopyWithImpl<$Res>
    extends _$TeacherHomeStateCopyWithImpl<$Res, _$TeacherHomeStateImpl>
    implements _$$TeacherHomeStateImplCopyWith<$Res> {
  __$$TeacherHomeStateImplCopyWithImpl(_$TeacherHomeStateImpl _value,
      $Res Function(_$TeacherHomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherHomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todayCourses = null,
    Object? weeklyExams = null,
    Object? weeklyHomework = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$TeacherHomeStateImpl(
      todayCourses: null == todayCourses
          ? _value._todayCourses
          : todayCourses // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
      weeklyExams: null == weeklyExams
          ? _value._weeklyExams
          : weeklyExams // ignore: cast_nullable_to_non_nullable
              as List<TeacherExam>,
      weeklyHomework: null == weeklyHomework
          ? _value._weeklyHomework
          : weeklyHomework // ignore: cast_nullable_to_non_nullable
              as List<TeacherHomeworkListItem>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TeacherHomeStateImpl implements _TeacherHomeState {
  const _$TeacherHomeStateImpl(
      {final List<Lesson> todayCourses = const [],
      final List<TeacherExam> weeklyExams = const [],
      final List<TeacherHomeworkListItem> weeklyHomework = const [],
      this.isLoading = true,
      this.error})
      : _todayCourses = todayCourses,
        _weeklyExams = weeklyExams,
        _weeklyHomework = weeklyHomework;

  final List<Lesson> _todayCourses;
  @override
  @JsonKey()
  List<Lesson> get todayCourses {
    if (_todayCourses is EqualUnmodifiableListView) return _todayCourses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todayCourses);
  }

  final List<TeacherExam> _weeklyExams;
  @override
  @JsonKey()
  List<TeacherExam> get weeklyExams {
    if (_weeklyExams is EqualUnmodifiableListView) return _weeklyExams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weeklyExams);
  }

  final List<TeacherHomeworkListItem> _weeklyHomework;
  @override
  @JsonKey()
  List<TeacherHomeworkListItem> get weeklyHomework {
    if (_weeklyHomework is EqualUnmodifiableListView) return _weeklyHomework;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weeklyHomework);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'TeacherHomeState(todayCourses: $todayCourses, weeklyExams: $weeklyExams, weeklyHomework: $weeklyHomework, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherHomeStateImpl &&
            const DeepCollectionEquality()
                .equals(other._todayCourses, _todayCourses) &&
            const DeepCollectionEquality()
                .equals(other._weeklyExams, _weeklyExams) &&
            const DeepCollectionEquality()
                .equals(other._weeklyHomework, _weeklyHomework) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_todayCourses),
      const DeepCollectionEquality().hash(_weeklyExams),
      const DeepCollectionEquality().hash(_weeklyHomework),
      isLoading,
      error);

  /// Create a copy of TeacherHomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherHomeStateImplCopyWith<_$TeacherHomeStateImpl> get copyWith =>
      __$$TeacherHomeStateImplCopyWithImpl<_$TeacherHomeStateImpl>(
          this, _$identity);
}

abstract class _TeacherHomeState implements TeacherHomeState {
  const factory _TeacherHomeState(
      {final List<Lesson> todayCourses,
      final List<TeacherExam> weeklyExams,
      final List<TeacherHomeworkListItem> weeklyHomework,
      final bool isLoading,
      final String? error}) = _$TeacherHomeStateImpl;

  @override
  List<Lesson> get todayCourses;
  @override
  List<TeacherExam> get weeklyExams;
  @override
  List<TeacherHomeworkListItem> get weeklyHomework;
  @override
  bool get isLoading;
  @override
  String? get error;

  /// Create a copy of TeacherHomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherHomeStateImplCopyWith<_$TeacherHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
