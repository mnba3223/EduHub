// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_slider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageSlider _$ImageSliderFromJson(Map<String, dynamic> json) {
  return _ImageSlider.fromJson(json);
}

/// @nodoc
mixin _$ImageSlider {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_path')
  String get imagePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_order')
  int get displayOrder => throw _privateConstructorUsedError;

  /// Serializes this ImageSlider to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageSlider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageSliderCopyWith<ImageSlider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageSliderCopyWith<$Res> {
  factory $ImageSliderCopyWith(
          ImageSlider value, $Res Function(ImageSlider) then) =
      _$ImageSliderCopyWithImpl<$Res, ImageSlider>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'image_path') String imagePath,
      @JsonKey(name: 'display_order') int displayOrder});
}

/// @nodoc
class _$ImageSliderCopyWithImpl<$Res, $Val extends ImageSlider>
    implements $ImageSliderCopyWith<$Res> {
  _$ImageSliderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageSlider
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imagePath = null,
    Object? displayOrder = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      displayOrder: null == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageSliderImplCopyWith<$Res>
    implements $ImageSliderCopyWith<$Res> {
  factory _$$ImageSliderImplCopyWith(
          _$ImageSliderImpl value, $Res Function(_$ImageSliderImpl) then) =
      __$$ImageSliderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'image_path') String imagePath,
      @JsonKey(name: 'display_order') int displayOrder});
}

/// @nodoc
class __$$ImageSliderImplCopyWithImpl<$Res>
    extends _$ImageSliderCopyWithImpl<$Res, _$ImageSliderImpl>
    implements _$$ImageSliderImplCopyWith<$Res> {
  __$$ImageSliderImplCopyWithImpl(
      _$ImageSliderImpl _value, $Res Function(_$ImageSliderImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageSlider
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imagePath = null,
    Object? displayOrder = null,
  }) {
    return _then(_$ImageSliderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      displayOrder: null == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageSliderImpl implements _ImageSlider {
  const _$ImageSliderImpl(
      {required this.id,
      @JsonKey(name: 'image_path') required this.imagePath,
      @JsonKey(name: 'display_order') required this.displayOrder});

  factory _$ImageSliderImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageSliderImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'image_path')
  final String imagePath;
  @override
  @JsonKey(name: 'display_order')
  final int displayOrder;

  @override
  String toString() {
    return 'ImageSlider(id: $id, imagePath: $imagePath, displayOrder: $displayOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageSliderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.displayOrder, displayOrder) ||
                other.displayOrder == displayOrder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, imagePath, displayOrder);

  /// Create a copy of ImageSlider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageSliderImplCopyWith<_$ImageSliderImpl> get copyWith =>
      __$$ImageSliderImplCopyWithImpl<_$ImageSliderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageSliderImplToJson(
      this,
    );
  }
}

abstract class _ImageSlider implements ImageSlider {
  const factory _ImageSlider(
          {required final int id,
          @JsonKey(name: 'image_path') required final String imagePath,
          @JsonKey(name: 'display_order') required final int displayOrder}) =
      _$ImageSliderImpl;

  factory _ImageSlider.fromJson(Map<String, dynamic> json) =
      _$ImageSliderImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'image_path')
  String get imagePath;
  @override
  @JsonKey(name: 'display_order')
  int get displayOrder;

  /// Create a copy of ImageSlider
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageSliderImplCopyWith<_$ImageSliderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
