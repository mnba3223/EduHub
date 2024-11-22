// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'homework_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeworkState {
  List<HomeworkListItem> get homeworks => throw _privateConstructorUsedError;
  List<HomeworkListItem> get filteredHomeworks =>
      throw _privateConstructorUsedError;
  HomeworkSubmission? get currentHomework => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  DateTime? get focusedDay => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;
  HomeworkStatus? get selectedStatus => throw _privateConstructorUsedError;
  CalendarFormat get calendarFormat => throw _privateConstructorUsedError;

  /// Create a copy of HomeworkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeworkStateCopyWith<HomeworkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeworkStateCopyWith<$Res> {
  factory $HomeworkStateCopyWith(
          HomeworkState value, $Res Function(HomeworkState) then) =
      _$HomeworkStateCopyWithImpl<$Res, HomeworkState>;
  @useResult
  $Res call(
      {List<HomeworkListItem> homeworks,
      List<HomeworkListItem> filteredHomeworks,
      HomeworkSubmission? currentHomework,
      bool isLoading,
      String? error,
      DateTime? focusedDay,
      DateTime? selectedDate,
      HomeworkStatus? selectedStatus,
      CalendarFormat calendarFormat});

  $HomeworkSubmissionCopyWith<$Res>? get currentHomework;
}

/// @nodoc
class _$HomeworkStateCopyWithImpl<$Res, $Val extends HomeworkState>
    implements $HomeworkStateCopyWith<$Res> {
  _$HomeworkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeworkState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeworks = null,
    Object? filteredHomeworks = null,
    Object? currentHomework = freezed,
    Object? isLoading = null,
    Object? error = freezed,
    Object? focusedDay = freezed,
    Object? selectedDate = freezed,
    Object? selectedStatus = freezed,
    Object? calendarFormat = null,
  }) {
    return _then(_value.copyWith(
      homeworks: null == homeworks
          ? _value.homeworks
          : homeworks // ignore: cast_nullable_to_non_nullable
              as List<HomeworkListItem>,
      filteredHomeworks: null == filteredHomeworks
          ? _value.filteredHomeworks
          : filteredHomeworks // ignore: cast_nullable_to_non_nullable
              as List<HomeworkListItem>,
      currentHomework: freezed == currentHomework
          ? _value.currentHomework
          : currentHomework // ignore: cast_nullable_to_non_nullable
              as HomeworkSubmission?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      focusedDay: freezed == focusedDay
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedStatus: freezed == selectedStatus
          ? _value.selectedStatus
          : selectedStatus // ignore: cast_nullable_to_non_nullable
              as HomeworkStatus?,
      calendarFormat: null == calendarFormat
          ? _value.calendarFormat
          : calendarFormat // ignore: cast_nullable_to_non_nullable
              as CalendarFormat,
    ) as $Val);
  }

  /// Create a copy of HomeworkState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomeworkSubmissionCopyWith<$Res>? get currentHomework {
    if (_value.currentHomework == null) {
      return null;
    }

    return $HomeworkSubmissionCopyWith<$Res>(_value.currentHomework!, (value) {
      return _then(_value.copyWith(currentHomework: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeworkStateImplCopyWith<$Res>
    implements $HomeworkStateCopyWith<$Res> {
  factory _$$HomeworkStateImplCopyWith(
          _$HomeworkStateImpl value, $Res Function(_$HomeworkStateImpl) then) =
      __$$HomeworkStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<HomeworkListItem> homeworks,
      List<HomeworkListItem> filteredHomeworks,
      HomeworkSubmission? currentHomework,
      bool isLoading,
      String? error,
      DateTime? focusedDay,
      DateTime? selectedDate,
      HomeworkStatus? selectedStatus,
      CalendarFormat calendarFormat});

  @override
  $HomeworkSubmissionCopyWith<$Res>? get currentHomework;
}

/// @nodoc
class __$$HomeworkStateImplCopyWithImpl<$Res>
    extends _$HomeworkStateCopyWithImpl<$Res, _$HomeworkStateImpl>
    implements _$$HomeworkStateImplCopyWith<$Res> {
  __$$HomeworkStateImplCopyWithImpl(
      _$HomeworkStateImpl _value, $Res Function(_$HomeworkStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeworkState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeworks = null,
    Object? filteredHomeworks = null,
    Object? currentHomework = freezed,
    Object? isLoading = null,
    Object? error = freezed,
    Object? focusedDay = freezed,
    Object? selectedDate = freezed,
    Object? selectedStatus = freezed,
    Object? calendarFormat = null,
  }) {
    return _then(_$HomeworkStateImpl(
      homeworks: null == homeworks
          ? _value._homeworks
          : homeworks // ignore: cast_nullable_to_non_nullable
              as List<HomeworkListItem>,
      filteredHomeworks: null == filteredHomeworks
          ? _value._filteredHomeworks
          : filteredHomeworks // ignore: cast_nullable_to_non_nullable
              as List<HomeworkListItem>,
      currentHomework: freezed == currentHomework
          ? _value.currentHomework
          : currentHomework // ignore: cast_nullable_to_non_nullable
              as HomeworkSubmission?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      focusedDay: freezed == focusedDay
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedStatus: freezed == selectedStatus
          ? _value.selectedStatus
          : selectedStatus // ignore: cast_nullable_to_non_nullable
              as HomeworkStatus?,
      calendarFormat: null == calendarFormat
          ? _value.calendarFormat
          : calendarFormat // ignore: cast_nullable_to_non_nullable
              as CalendarFormat,
    ));
  }
}

/// @nodoc

class _$HomeworkStateImpl implements _HomeworkState {
  const _$HomeworkStateImpl(
      {final List<HomeworkListItem> homeworks = const [],
      final List<HomeworkListItem> filteredHomeworks = const [],
      this.currentHomework,
      this.isLoading = false,
      this.error,
      this.focusedDay,
      this.selectedDate,
      this.selectedStatus,
      this.calendarFormat = CalendarFormat.month})
      : _homeworks = homeworks,
        _filteredHomeworks = filteredHomeworks;

  final List<HomeworkListItem> _homeworks;
  @override
  @JsonKey()
  List<HomeworkListItem> get homeworks {
    if (_homeworks is EqualUnmodifiableListView) return _homeworks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_homeworks);
  }

  final List<HomeworkListItem> _filteredHomeworks;
  @override
  @JsonKey()
  List<HomeworkListItem> get filteredHomeworks {
    if (_filteredHomeworks is EqualUnmodifiableListView)
      return _filteredHomeworks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredHomeworks);
  }

  @override
  final HomeworkSubmission? currentHomework;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  @override
  final DateTime? focusedDay;
  @override
  final DateTime? selectedDate;
  @override
  final HomeworkStatus? selectedStatus;
  @override
  @JsonKey()
  final CalendarFormat calendarFormat;

  @override
  String toString() {
    return 'HomeworkState(homeworks: $homeworks, filteredHomeworks: $filteredHomeworks, currentHomework: $currentHomework, isLoading: $isLoading, error: $error, focusedDay: $focusedDay, selectedDate: $selectedDate, selectedStatus: $selectedStatus, calendarFormat: $calendarFormat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeworkStateImpl &&
            const DeepCollectionEquality()
                .equals(other._homeworks, _homeworks) &&
            const DeepCollectionEquality()
                .equals(other._filteredHomeworks, _filteredHomeworks) &&
            (identical(other.currentHomework, currentHomework) ||
                other.currentHomework == currentHomework) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.focusedDay, focusedDay) ||
                other.focusedDay == focusedDay) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.selectedStatus, selectedStatus) ||
                other.selectedStatus == selectedStatus) &&
            (identical(other.calendarFormat, calendarFormat) ||
                other.calendarFormat == calendarFormat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_homeworks),
      const DeepCollectionEquality().hash(_filteredHomeworks),
      currentHomework,
      isLoading,
      error,
      focusedDay,
      selectedDate,
      selectedStatus,
      calendarFormat);

  /// Create a copy of HomeworkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeworkStateImplCopyWith<_$HomeworkStateImpl> get copyWith =>
      __$$HomeworkStateImplCopyWithImpl<_$HomeworkStateImpl>(this, _$identity);
}

abstract class _HomeworkState implements HomeworkState {
  const factory _HomeworkState(
      {final List<HomeworkListItem> homeworks,
      final List<HomeworkListItem> filteredHomeworks,
      final HomeworkSubmission? currentHomework,
      final bool isLoading,
      final String? error,
      final DateTime? focusedDay,
      final DateTime? selectedDate,
      final HomeworkStatus? selectedStatus,
      final CalendarFormat calendarFormat}) = _$HomeworkStateImpl;

  @override
  List<HomeworkListItem> get homeworks;
  @override
  List<HomeworkListItem> get filteredHomeworks;
  @override
  HomeworkSubmission? get currentHomework;
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  DateTime? get focusedDay;
  @override
  DateTime? get selectedDate;
  @override
  HomeworkStatus? get selectedStatus;
  @override
  CalendarFormat get calendarFormat;

  /// Create a copy of HomeworkState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeworkStateImplCopyWith<_$HomeworkStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
