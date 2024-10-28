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
  List<Homework> get homeworks => throw _privateConstructorUsedError;
  List<Homework> get filteredHomeworks => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Homework? get currentHomework =>
      throw _privateConstructorUsedError; // 添加當前查看的作業
  String? get error => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;

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
      {List<Homework> homeworks,
      List<Homework> filteredHomeworks,
      bool isLoading,
      Homework? currentHomework,
      String? error,
      DateTime? selectedDate});

  $HomeworkCopyWith<$Res>? get currentHomework;
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
    Object? isLoading = null,
    Object? currentHomework = freezed,
    Object? error = freezed,
    Object? selectedDate = freezed,
  }) {
    return _then(_value.copyWith(
      homeworks: null == homeworks
          ? _value.homeworks
          : homeworks // ignore: cast_nullable_to_non_nullable
              as List<Homework>,
      filteredHomeworks: null == filteredHomeworks
          ? _value.filteredHomeworks
          : filteredHomeworks // ignore: cast_nullable_to_non_nullable
              as List<Homework>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentHomework: freezed == currentHomework
          ? _value.currentHomework
          : currentHomework // ignore: cast_nullable_to_non_nullable
              as Homework?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of HomeworkState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomeworkCopyWith<$Res>? get currentHomework {
    if (_value.currentHomework == null) {
      return null;
    }

    return $HomeworkCopyWith<$Res>(_value.currentHomework!, (value) {
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
      {List<Homework> homeworks,
      List<Homework> filteredHomeworks,
      bool isLoading,
      Homework? currentHomework,
      String? error,
      DateTime? selectedDate});

  @override
  $HomeworkCopyWith<$Res>? get currentHomework;
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
    Object? isLoading = null,
    Object? currentHomework = freezed,
    Object? error = freezed,
    Object? selectedDate = freezed,
  }) {
    return _then(_$HomeworkStateImpl(
      homeworks: null == homeworks
          ? _value._homeworks
          : homeworks // ignore: cast_nullable_to_non_nullable
              as List<Homework>,
      filteredHomeworks: null == filteredHomeworks
          ? _value._filteredHomeworks
          : filteredHomeworks // ignore: cast_nullable_to_non_nullable
              as List<Homework>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentHomework: freezed == currentHomework
          ? _value.currentHomework
          : currentHomework // ignore: cast_nullable_to_non_nullable
              as Homework?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$HomeworkStateImpl implements _HomeworkState {
  const _$HomeworkStateImpl(
      {final List<Homework> homeworks = const [],
      final List<Homework> filteredHomeworks = const [],
      this.isLoading = false,
      this.currentHomework,
      this.error,
      this.selectedDate})
      : _homeworks = homeworks,
        _filteredHomeworks = filteredHomeworks;

  final List<Homework> _homeworks;
  @override
  @JsonKey()
  List<Homework> get homeworks {
    if (_homeworks is EqualUnmodifiableListView) return _homeworks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_homeworks);
  }

  final List<Homework> _filteredHomeworks;
  @override
  @JsonKey()
  List<Homework> get filteredHomeworks {
    if (_filteredHomeworks is EqualUnmodifiableListView)
      return _filteredHomeworks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredHomeworks);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Homework? currentHomework;
// 添加當前查看的作業
  @override
  final String? error;
  @override
  final DateTime? selectedDate;

  @override
  String toString() {
    return 'HomeworkState(homeworks: $homeworks, filteredHomeworks: $filteredHomeworks, isLoading: $isLoading, currentHomework: $currentHomework, error: $error, selectedDate: $selectedDate)';
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
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.currentHomework, currentHomework) ||
                other.currentHomework == currentHomework) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_homeworks),
      const DeepCollectionEquality().hash(_filteredHomeworks),
      isLoading,
      currentHomework,
      error,
      selectedDate);

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
      {final List<Homework> homeworks,
      final List<Homework> filteredHomeworks,
      final bool isLoading,
      final Homework? currentHomework,
      final String? error,
      final DateTime? selectedDate}) = _$HomeworkStateImpl;

  @override
  List<Homework> get homeworks;
  @override
  List<Homework> get filteredHomeworks;
  @override
  bool get isLoading;
  @override
  Homework? get currentHomework; // 添加當前查看的作業
  @override
  String? get error;
  @override
  DateTime? get selectedDate;

  /// Create a copy of HomeworkState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeworkStateImplCopyWith<_$HomeworkStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
