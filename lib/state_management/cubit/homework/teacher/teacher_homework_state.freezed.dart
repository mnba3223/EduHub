// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_homework_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TeacherHomeworkState {
  List<TeacherHomeworkListItem> get homeworks =>
      throw _privateConstructorUsedError;
  List<TeacherHomeworkListItem> get filteredHomeworks =>
      throw _privateConstructorUsedError;
  List<String> get classrooms => throw _privateConstructorUsedError;
  List<String> get lessons => throw _privateConstructorUsedError;
  TeacherHomeworkListItem? get selectedHomework =>
      throw _privateConstructorUsedError;
  List<TeacherHomeworkSubmission> get submissions =>
      throw _privateConstructorUsedError;
  String? get selectedClassroom => throw _privateConstructorUsedError;
  String? get selectedLesson => throw _privateConstructorUsedError;
  DateTime get selectedDate => throw _privateConstructorUsedError;
  DateTime get focusedDay => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of TeacherHomeworkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherHomeworkStateCopyWith<TeacherHomeworkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherHomeworkStateCopyWith<$Res> {
  factory $TeacherHomeworkStateCopyWith(TeacherHomeworkState value,
          $Res Function(TeacherHomeworkState) then) =
      _$TeacherHomeworkStateCopyWithImpl<$Res, TeacherHomeworkState>;
  @useResult
  $Res call(
      {List<TeacherHomeworkListItem> homeworks,
      List<TeacherHomeworkListItem> filteredHomeworks,
      List<String> classrooms,
      List<String> lessons,
      TeacherHomeworkListItem? selectedHomework,
      List<TeacherHomeworkSubmission> submissions,
      String? selectedClassroom,
      String? selectedLesson,
      DateTime selectedDate,
      DateTime focusedDay,
      bool isLoading,
      String? error});

  $TeacherHomeworkListItemCopyWith<$Res>? get selectedHomework;
}

/// @nodoc
class _$TeacherHomeworkStateCopyWithImpl<$Res,
        $Val extends TeacherHomeworkState>
    implements $TeacherHomeworkStateCopyWith<$Res> {
  _$TeacherHomeworkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherHomeworkState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeworks = null,
    Object? filteredHomeworks = null,
    Object? classrooms = null,
    Object? lessons = null,
    Object? selectedHomework = freezed,
    Object? submissions = null,
    Object? selectedClassroom = freezed,
    Object? selectedLesson = freezed,
    Object? selectedDate = null,
    Object? focusedDay = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      homeworks: null == homeworks
          ? _value.homeworks
          : homeworks // ignore: cast_nullable_to_non_nullable
              as List<TeacherHomeworkListItem>,
      filteredHomeworks: null == filteredHomeworks
          ? _value.filteredHomeworks
          : filteredHomeworks // ignore: cast_nullable_to_non_nullable
              as List<TeacherHomeworkListItem>,
      classrooms: null == classrooms
          ? _value.classrooms
          : classrooms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lessons: null == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedHomework: freezed == selectedHomework
          ? _value.selectedHomework
          : selectedHomework // ignore: cast_nullable_to_non_nullable
              as TeacherHomeworkListItem?,
      submissions: null == submissions
          ? _value.submissions
          : submissions // ignore: cast_nullable_to_non_nullable
              as List<TeacherHomeworkSubmission>,
      selectedClassroom: freezed == selectedClassroom
          ? _value.selectedClassroom
          : selectedClassroom // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedLesson: freezed == selectedLesson
          ? _value.selectedLesson
          : selectedLesson // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      focusedDay: null == focusedDay
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
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

  /// Create a copy of TeacherHomeworkState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TeacherHomeworkListItemCopyWith<$Res>? get selectedHomework {
    if (_value.selectedHomework == null) {
      return null;
    }

    return $TeacherHomeworkListItemCopyWith<$Res>(_value.selectedHomework!,
        (value) {
      return _then(_value.copyWith(selectedHomework: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeacherHomeworkStateImplCopyWith<$Res>
    implements $TeacherHomeworkStateCopyWith<$Res> {
  factory _$$TeacherHomeworkStateImplCopyWith(_$TeacherHomeworkStateImpl value,
          $Res Function(_$TeacherHomeworkStateImpl) then) =
      __$$TeacherHomeworkStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TeacherHomeworkListItem> homeworks,
      List<TeacherHomeworkListItem> filteredHomeworks,
      List<String> classrooms,
      List<String> lessons,
      TeacherHomeworkListItem? selectedHomework,
      List<TeacherHomeworkSubmission> submissions,
      String? selectedClassroom,
      String? selectedLesson,
      DateTime selectedDate,
      DateTime focusedDay,
      bool isLoading,
      String? error});

  @override
  $TeacherHomeworkListItemCopyWith<$Res>? get selectedHomework;
}

/// @nodoc
class __$$TeacherHomeworkStateImplCopyWithImpl<$Res>
    extends _$TeacherHomeworkStateCopyWithImpl<$Res, _$TeacherHomeworkStateImpl>
    implements _$$TeacherHomeworkStateImplCopyWith<$Res> {
  __$$TeacherHomeworkStateImplCopyWithImpl(_$TeacherHomeworkStateImpl _value,
      $Res Function(_$TeacherHomeworkStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherHomeworkState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeworks = null,
    Object? filteredHomeworks = null,
    Object? classrooms = null,
    Object? lessons = null,
    Object? selectedHomework = freezed,
    Object? submissions = null,
    Object? selectedClassroom = freezed,
    Object? selectedLesson = freezed,
    Object? selectedDate = null,
    Object? focusedDay = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$TeacherHomeworkStateImpl(
      homeworks: null == homeworks
          ? _value._homeworks
          : homeworks // ignore: cast_nullable_to_non_nullable
              as List<TeacherHomeworkListItem>,
      filteredHomeworks: null == filteredHomeworks
          ? _value._filteredHomeworks
          : filteredHomeworks // ignore: cast_nullable_to_non_nullable
              as List<TeacherHomeworkListItem>,
      classrooms: null == classrooms
          ? _value._classrooms
          : classrooms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lessons: null == lessons
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedHomework: freezed == selectedHomework
          ? _value.selectedHomework
          : selectedHomework // ignore: cast_nullable_to_non_nullable
              as TeacherHomeworkListItem?,
      submissions: null == submissions
          ? _value._submissions
          : submissions // ignore: cast_nullable_to_non_nullable
              as List<TeacherHomeworkSubmission>,
      selectedClassroom: freezed == selectedClassroom
          ? _value.selectedClassroom
          : selectedClassroom // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedLesson: freezed == selectedLesson
          ? _value.selectedLesson
          : selectedLesson // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      focusedDay: null == focusedDay
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
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

class _$TeacherHomeworkStateImpl implements _TeacherHomeworkState {
  const _$TeacherHomeworkStateImpl(
      {final List<TeacherHomeworkListItem> homeworks = const [],
      final List<TeacherHomeworkListItem> filteredHomeworks = const [],
      final List<String> classrooms = const [],
      final List<String> lessons = const [],
      this.selectedHomework,
      final List<TeacherHomeworkSubmission> submissions = const [],
      this.selectedClassroom,
      this.selectedLesson,
      required this.selectedDate,
      required this.focusedDay,
      this.isLoading = false,
      this.error})
      : _homeworks = homeworks,
        _filteredHomeworks = filteredHomeworks,
        _classrooms = classrooms,
        _lessons = lessons,
        _submissions = submissions;

  final List<TeacherHomeworkListItem> _homeworks;
  @override
  @JsonKey()
  List<TeacherHomeworkListItem> get homeworks {
    if (_homeworks is EqualUnmodifiableListView) return _homeworks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_homeworks);
  }

  final List<TeacherHomeworkListItem> _filteredHomeworks;
  @override
  @JsonKey()
  List<TeacherHomeworkListItem> get filteredHomeworks {
    if (_filteredHomeworks is EqualUnmodifiableListView)
      return _filteredHomeworks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredHomeworks);
  }

  final List<String> _classrooms;
  @override
  @JsonKey()
  List<String> get classrooms {
    if (_classrooms is EqualUnmodifiableListView) return _classrooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classrooms);
  }

  final List<String> _lessons;
  @override
  @JsonKey()
  List<String> get lessons {
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  @override
  final TeacherHomeworkListItem? selectedHomework;
  final List<TeacherHomeworkSubmission> _submissions;
  @override
  @JsonKey()
  List<TeacherHomeworkSubmission> get submissions {
    if (_submissions is EqualUnmodifiableListView) return _submissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_submissions);
  }

  @override
  final String? selectedClassroom;
  @override
  final String? selectedLesson;
  @override
  final DateTime selectedDate;
  @override
  final DateTime focusedDay;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'TeacherHomeworkState(homeworks: $homeworks, filteredHomeworks: $filteredHomeworks, classrooms: $classrooms, lessons: $lessons, selectedHomework: $selectedHomework, submissions: $submissions, selectedClassroom: $selectedClassroom, selectedLesson: $selectedLesson, selectedDate: $selectedDate, focusedDay: $focusedDay, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherHomeworkStateImpl &&
            const DeepCollectionEquality()
                .equals(other._homeworks, _homeworks) &&
            const DeepCollectionEquality()
                .equals(other._filteredHomeworks, _filteredHomeworks) &&
            const DeepCollectionEquality()
                .equals(other._classrooms, _classrooms) &&
            const DeepCollectionEquality().equals(other._lessons, _lessons) &&
            (identical(other.selectedHomework, selectedHomework) ||
                other.selectedHomework == selectedHomework) &&
            const DeepCollectionEquality()
                .equals(other._submissions, _submissions) &&
            (identical(other.selectedClassroom, selectedClassroom) ||
                other.selectedClassroom == selectedClassroom) &&
            (identical(other.selectedLesson, selectedLesson) ||
                other.selectedLesson == selectedLesson) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.focusedDay, focusedDay) ||
                other.focusedDay == focusedDay) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_homeworks),
      const DeepCollectionEquality().hash(_filteredHomeworks),
      const DeepCollectionEquality().hash(_classrooms),
      const DeepCollectionEquality().hash(_lessons),
      selectedHomework,
      const DeepCollectionEquality().hash(_submissions),
      selectedClassroom,
      selectedLesson,
      selectedDate,
      focusedDay,
      isLoading,
      error);

  /// Create a copy of TeacherHomeworkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherHomeworkStateImplCopyWith<_$TeacherHomeworkStateImpl>
      get copyWith =>
          __$$TeacherHomeworkStateImplCopyWithImpl<_$TeacherHomeworkStateImpl>(
              this, _$identity);
}

abstract class _TeacherHomeworkState implements TeacherHomeworkState {
  const factory _TeacherHomeworkState(
      {final List<TeacherHomeworkListItem> homeworks,
      final List<TeacherHomeworkListItem> filteredHomeworks,
      final List<String> classrooms,
      final List<String> lessons,
      final TeacherHomeworkListItem? selectedHomework,
      final List<TeacherHomeworkSubmission> submissions,
      final String? selectedClassroom,
      final String? selectedLesson,
      required final DateTime selectedDate,
      required final DateTime focusedDay,
      final bool isLoading,
      final String? error}) = _$TeacherHomeworkStateImpl;

  @override
  List<TeacherHomeworkListItem> get homeworks;
  @override
  List<TeacherHomeworkListItem> get filteredHomeworks;
  @override
  List<String> get classrooms;
  @override
  List<String> get lessons;
  @override
  TeacherHomeworkListItem? get selectedHomework;
  @override
  List<TeacherHomeworkSubmission> get submissions;
  @override
  String? get selectedClassroom;
  @override
  String? get selectedLesson;
  @override
  DateTime get selectedDate;
  @override
  DateTime get focusedDay;
  @override
  bool get isLoading;
  @override
  String? get error;

  /// Create a copy of TeacherHomeworkState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherHomeworkStateImplCopyWith<_$TeacherHomeworkStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
