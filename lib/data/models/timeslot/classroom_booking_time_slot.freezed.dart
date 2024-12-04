// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'classroom_booking_time_slot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClassroomTimeSlot _$ClassroomTimeSlotFromJson(Map<String, dynamic> json) {
  return _ClassroomTimeSlot.fromJson(json);
}

/// @nodoc
mixin _$ClassroomTimeSlot {
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  ClassroomBookingStatus get status => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  /// Serializes this ClassroomTimeSlot to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassroomTimeSlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassroomTimeSlotCopyWith<ClassroomTimeSlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassroomTimeSlotCopyWith<$Res> {
  factory $ClassroomTimeSlotCopyWith(
          ClassroomTimeSlot value, $Res Function(ClassroomTimeSlot) then) =
      _$ClassroomTimeSlotCopyWithImpl<$Res, ClassroomTimeSlot>;
  @useResult
  $Res call(
      {String startTime,
      String endTime,
      ClassroomBookingStatus status,
      bool isSelected});
}

/// @nodoc
class _$ClassroomTimeSlotCopyWithImpl<$Res, $Val extends ClassroomTimeSlot>
    implements $ClassroomTimeSlotCopyWith<$Res> {
  _$ClassroomTimeSlotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassroomTimeSlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? status = null,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ClassroomBookingStatus,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassroomTimeSlotImplCopyWith<$Res>
    implements $ClassroomTimeSlotCopyWith<$Res> {
  factory _$$ClassroomTimeSlotImplCopyWith(_$ClassroomTimeSlotImpl value,
          $Res Function(_$ClassroomTimeSlotImpl) then) =
      __$$ClassroomTimeSlotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String startTime,
      String endTime,
      ClassroomBookingStatus status,
      bool isSelected});
}

/// @nodoc
class __$$ClassroomTimeSlotImplCopyWithImpl<$Res>
    extends _$ClassroomTimeSlotCopyWithImpl<$Res, _$ClassroomTimeSlotImpl>
    implements _$$ClassroomTimeSlotImplCopyWith<$Res> {
  __$$ClassroomTimeSlotImplCopyWithImpl(_$ClassroomTimeSlotImpl _value,
      $Res Function(_$ClassroomTimeSlotImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassroomTimeSlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? status = null,
    Object? isSelected = null,
  }) {
    return _then(_$ClassroomTimeSlotImpl(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ClassroomBookingStatus,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassroomTimeSlotImpl implements _ClassroomTimeSlot {
  const _$ClassroomTimeSlotImpl(
      {required this.startTime,
      required this.endTime,
      required this.status,
      this.isSelected = false});

  factory _$ClassroomTimeSlotImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassroomTimeSlotImplFromJson(json);

  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final ClassroomBookingStatus status;
  @override
  @JsonKey()
  final bool isSelected;

  @override
  String toString() {
    return 'ClassroomTimeSlot(startTime: $startTime, endTime: $endTime, status: $status, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassroomTimeSlotImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, startTime, endTime, status, isSelected);

  /// Create a copy of ClassroomTimeSlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassroomTimeSlotImplCopyWith<_$ClassroomTimeSlotImpl> get copyWith =>
      __$$ClassroomTimeSlotImplCopyWithImpl<_$ClassroomTimeSlotImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassroomTimeSlotImplToJson(
      this,
    );
  }
}

abstract class _ClassroomTimeSlot implements ClassroomTimeSlot {
  const factory _ClassroomTimeSlot(
      {required final String startTime,
      required final String endTime,
      required final ClassroomBookingStatus status,
      final bool isSelected}) = _$ClassroomTimeSlotImpl;

  factory _ClassroomTimeSlot.fromJson(Map<String, dynamic> json) =
      _$ClassroomTimeSlotImpl.fromJson;

  @override
  String get startTime;
  @override
  String get endTime;
  @override
  ClassroomBookingStatus get status;
  @override
  bool get isSelected;

  /// Create a copy of ClassroomTimeSlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassroomTimeSlotImplCopyWith<_$ClassroomTimeSlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
