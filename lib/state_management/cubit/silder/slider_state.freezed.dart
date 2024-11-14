// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slider_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SliderState {
  List<ImageSlider> get sliders => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of SliderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SliderStateCopyWith<SliderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderStateCopyWith<$Res> {
  factory $SliderStateCopyWith(
          SliderState value, $Res Function(SliderState) then) =
      _$SliderStateCopyWithImpl<$Res, SliderState>;
  @useResult
  $Res call({List<ImageSlider> sliders, bool isLoading, String? error});
}

/// @nodoc
class _$SliderStateCopyWithImpl<$Res, $Val extends SliderState>
    implements $SliderStateCopyWith<$Res> {
  _$SliderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SliderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sliders = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      sliders: null == sliders
          ? _value.sliders
          : sliders // ignore: cast_nullable_to_non_nullable
              as List<ImageSlider>,
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
abstract class _$$SliderStateImplCopyWith<$Res>
    implements $SliderStateCopyWith<$Res> {
  factory _$$SliderStateImplCopyWith(
          _$SliderStateImpl value, $Res Function(_$SliderStateImpl) then) =
      __$$SliderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ImageSlider> sliders, bool isLoading, String? error});
}

/// @nodoc
class __$$SliderStateImplCopyWithImpl<$Res>
    extends _$SliderStateCopyWithImpl<$Res, _$SliderStateImpl>
    implements _$$SliderStateImplCopyWith<$Res> {
  __$$SliderStateImplCopyWithImpl(
      _$SliderStateImpl _value, $Res Function(_$SliderStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SliderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sliders = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$SliderStateImpl(
      sliders: null == sliders
          ? _value._sliders
          : sliders // ignore: cast_nullable_to_non_nullable
              as List<ImageSlider>,
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

class _$SliderStateImpl implements _SliderState {
  const _$SliderStateImpl(
      {final List<ImageSlider> sliders = const [],
      this.isLoading = false,
      this.error})
      : _sliders = sliders;

  final List<ImageSlider> _sliders;
  @override
  @JsonKey()
  List<ImageSlider> get sliders {
    if (_sliders is EqualUnmodifiableListView) return _sliders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sliders);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'SliderState(sliders: $sliders, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SliderStateImpl &&
            const DeepCollectionEquality().equals(other._sliders, _sliders) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_sliders), isLoading, error);

  /// Create a copy of SliderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SliderStateImplCopyWith<_$SliderStateImpl> get copyWith =>
      __$$SliderStateImplCopyWithImpl<_$SliderStateImpl>(this, _$identity);
}

abstract class _SliderState implements SliderState {
  const factory _SliderState(
      {final List<ImageSlider> sliders,
      final bool isLoading,
      final String? error}) = _$SliderStateImpl;

  @override
  List<ImageSlider> get sliders;
  @override
  bool get isLoading;
  @override
  String? get error;

  /// Create a copy of SliderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SliderStateImplCopyWith<_$SliderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
