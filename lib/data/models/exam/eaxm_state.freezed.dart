// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'eaxm_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExamState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Exam> exams, DateTime selectedDate) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Exam> exams, DateTime selectedDate)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Exam> exams, DateTime selectedDate)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExamStateInitial value) initial,
    required TResult Function(ExamStateLoading value) loading,
    required TResult Function(ExamStateLoaded value) loaded,
    required TResult Function(ExamStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExamStateInitial value)? initial,
    TResult? Function(ExamStateLoading value)? loading,
    TResult? Function(ExamStateLoaded value)? loaded,
    TResult? Function(ExamStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExamStateInitial value)? initial,
    TResult Function(ExamStateLoading value)? loading,
    TResult Function(ExamStateLoaded value)? loaded,
    TResult Function(ExamStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamStateCopyWith<$Res> {
  factory $ExamStateCopyWith(ExamState value, $Res Function(ExamState) then) =
      _$ExamStateCopyWithImpl<$Res, ExamState>;
}

/// @nodoc
class _$ExamStateCopyWithImpl<$Res, $Val extends ExamState>
    implements $ExamStateCopyWith<$Res> {
  _$ExamStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ExamStateInitialImplCopyWith<$Res> {
  factory _$$ExamStateInitialImplCopyWith(_$ExamStateInitialImpl value,
          $Res Function(_$ExamStateInitialImpl) then) =
      __$$ExamStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExamStateInitialImplCopyWithImpl<$Res>
    extends _$ExamStateCopyWithImpl<$Res, _$ExamStateInitialImpl>
    implements _$$ExamStateInitialImplCopyWith<$Res> {
  __$$ExamStateInitialImplCopyWithImpl(_$ExamStateInitialImpl _value,
      $Res Function(_$ExamStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ExamStateInitialImpl implements ExamStateInitial {
  const _$ExamStateInitialImpl();

  @override
  String toString() {
    return 'ExamState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExamStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Exam> exams, DateTime selectedDate) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Exam> exams, DateTime selectedDate)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Exam> exams, DateTime selectedDate)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExamStateInitial value) initial,
    required TResult Function(ExamStateLoading value) loading,
    required TResult Function(ExamStateLoaded value) loaded,
    required TResult Function(ExamStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExamStateInitial value)? initial,
    TResult? Function(ExamStateLoading value)? loading,
    TResult? Function(ExamStateLoaded value)? loaded,
    TResult? Function(ExamStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExamStateInitial value)? initial,
    TResult Function(ExamStateLoading value)? loading,
    TResult Function(ExamStateLoaded value)? loaded,
    TResult Function(ExamStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ExamStateInitial implements ExamState {
  const factory ExamStateInitial() = _$ExamStateInitialImpl;
}

/// @nodoc
abstract class _$$ExamStateLoadingImplCopyWith<$Res> {
  factory _$$ExamStateLoadingImplCopyWith(_$ExamStateLoadingImpl value,
          $Res Function(_$ExamStateLoadingImpl) then) =
      __$$ExamStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExamStateLoadingImplCopyWithImpl<$Res>
    extends _$ExamStateCopyWithImpl<$Res, _$ExamStateLoadingImpl>
    implements _$$ExamStateLoadingImplCopyWith<$Res> {
  __$$ExamStateLoadingImplCopyWithImpl(_$ExamStateLoadingImpl _value,
      $Res Function(_$ExamStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ExamStateLoadingImpl implements ExamStateLoading {
  const _$ExamStateLoadingImpl();

  @override
  String toString() {
    return 'ExamState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExamStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Exam> exams, DateTime selectedDate) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Exam> exams, DateTime selectedDate)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Exam> exams, DateTime selectedDate)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExamStateInitial value) initial,
    required TResult Function(ExamStateLoading value) loading,
    required TResult Function(ExamStateLoaded value) loaded,
    required TResult Function(ExamStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExamStateInitial value)? initial,
    TResult? Function(ExamStateLoading value)? loading,
    TResult? Function(ExamStateLoaded value)? loaded,
    TResult? Function(ExamStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExamStateInitial value)? initial,
    TResult Function(ExamStateLoading value)? loading,
    TResult Function(ExamStateLoaded value)? loaded,
    TResult Function(ExamStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ExamStateLoading implements ExamState {
  const factory ExamStateLoading() = _$ExamStateLoadingImpl;
}

/// @nodoc
abstract class _$$ExamStateLoadedImplCopyWith<$Res> {
  factory _$$ExamStateLoadedImplCopyWith(_$ExamStateLoadedImpl value,
          $Res Function(_$ExamStateLoadedImpl) then) =
      __$$ExamStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Exam> exams, DateTime selectedDate});
}

/// @nodoc
class __$$ExamStateLoadedImplCopyWithImpl<$Res>
    extends _$ExamStateCopyWithImpl<$Res, _$ExamStateLoadedImpl>
    implements _$$ExamStateLoadedImplCopyWith<$Res> {
  __$$ExamStateLoadedImplCopyWithImpl(
      _$ExamStateLoadedImpl _value, $Res Function(_$ExamStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exams = null,
    Object? selectedDate = null,
  }) {
    return _then(_$ExamStateLoadedImpl(
      exams: null == exams
          ? _value._exams
          : exams // ignore: cast_nullable_to_non_nullable
              as List<Exam>,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ExamStateLoadedImpl implements ExamStateLoaded {
  const _$ExamStateLoadedImpl(
      {required final List<Exam> exams, required this.selectedDate})
      : _exams = exams;

  final List<Exam> _exams;
  @override
  List<Exam> get exams {
    if (_exams is EqualUnmodifiableListView) return _exams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exams);
  }

  @override
  final DateTime selectedDate;

  @override
  String toString() {
    return 'ExamState.loaded(exams: $exams, selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamStateLoadedImpl &&
            const DeepCollectionEquality().equals(other._exams, _exams) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_exams), selectedDate);

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamStateLoadedImplCopyWith<_$ExamStateLoadedImpl> get copyWith =>
      __$$ExamStateLoadedImplCopyWithImpl<_$ExamStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Exam> exams, DateTime selectedDate) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(exams, selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Exam> exams, DateTime selectedDate)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(exams, selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Exam> exams, DateTime selectedDate)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(exams, selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExamStateInitial value) initial,
    required TResult Function(ExamStateLoading value) loading,
    required TResult Function(ExamStateLoaded value) loaded,
    required TResult Function(ExamStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExamStateInitial value)? initial,
    TResult? Function(ExamStateLoading value)? loading,
    TResult? Function(ExamStateLoaded value)? loaded,
    TResult? Function(ExamStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExamStateInitial value)? initial,
    TResult Function(ExamStateLoading value)? loading,
    TResult Function(ExamStateLoaded value)? loaded,
    TResult Function(ExamStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ExamStateLoaded implements ExamState {
  const factory ExamStateLoaded(
      {required final List<Exam> exams,
      required final DateTime selectedDate}) = _$ExamStateLoadedImpl;

  List<Exam> get exams;
  DateTime get selectedDate;

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamStateLoadedImplCopyWith<_$ExamStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExamStateErrorImplCopyWith<$Res> {
  factory _$$ExamStateErrorImplCopyWith(_$ExamStateErrorImpl value,
          $Res Function(_$ExamStateErrorImpl) then) =
      __$$ExamStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ExamStateErrorImplCopyWithImpl<$Res>
    extends _$ExamStateCopyWithImpl<$Res, _$ExamStateErrorImpl>
    implements _$$ExamStateErrorImplCopyWith<$Res> {
  __$$ExamStateErrorImplCopyWithImpl(
      _$ExamStateErrorImpl _value, $Res Function(_$ExamStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ExamStateErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExamStateErrorImpl implements ExamStateError {
  const _$ExamStateErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ExamState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamStateErrorImplCopyWith<_$ExamStateErrorImpl> get copyWith =>
      __$$ExamStateErrorImplCopyWithImpl<_$ExamStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Exam> exams, DateTime selectedDate) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Exam> exams, DateTime selectedDate)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Exam> exams, DateTime selectedDate)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExamStateInitial value) initial,
    required TResult Function(ExamStateLoading value) loading,
    required TResult Function(ExamStateLoaded value) loaded,
    required TResult Function(ExamStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExamStateInitial value)? initial,
    TResult? Function(ExamStateLoading value)? loading,
    TResult? Function(ExamStateLoaded value)? loaded,
    TResult? Function(ExamStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExamStateInitial value)? initial,
    TResult Function(ExamStateLoading value)? loading,
    TResult Function(ExamStateLoaded value)? loaded,
    TResult Function(ExamStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ExamStateError implements ExamState {
  const factory ExamStateError({required final String message}) =
      _$ExamStateErrorImpl;

  String get message;

  /// Create a copy of ExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamStateErrorImplCopyWith<_$ExamStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
