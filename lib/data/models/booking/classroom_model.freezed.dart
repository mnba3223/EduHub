// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'classroom_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Classroom _$ClassroomFromJson(Map<String, dynamic> json) {
  return _Classroom.fromJson(json);
}

/// @nodoc
mixin _$Classroom {
  @JsonKey(name: 'classroom_id')
  int get classroomId => throw _privateConstructorUsedError;
  @JsonKey(name: 'classroom_name')
  String get classroomName => throw _privateConstructorUsedError;
  @JsonKey(name: 'classroom_description')
  String? get classroomDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'classroom_people_number')
  int get peopleNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'weekday_price')
  double get weekdayPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'weekend_price')
  double get weekendPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'classroom_image')
  String? get classroomImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'Bookings')
  List<Booking>? get bookings => throw _privateConstructorUsedError;

  /// Serializes this Classroom to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Classroom
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassroomCopyWith<Classroom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassroomCopyWith<$Res> {
  factory $ClassroomCopyWith(Classroom value, $Res Function(Classroom) then) =
      _$ClassroomCopyWithImpl<$Res, Classroom>;
  @useResult
  $Res call(
      {@JsonKey(name: 'classroom_id') int classroomId,
      @JsonKey(name: 'classroom_name') String classroomName,
      @JsonKey(name: 'classroom_description') String? classroomDescription,
      @JsonKey(name: 'classroom_people_number') int peopleNumber,
      @JsonKey(name: 'weekday_price') double weekdayPrice,
      @JsonKey(name: 'weekend_price') double weekendPrice,
      @JsonKey(name: 'classroom_image') String? classroomImage,
      @JsonKey(name: 'Bookings') List<Booking>? bookings});
}

/// @nodoc
class _$ClassroomCopyWithImpl<$Res, $Val extends Classroom>
    implements $ClassroomCopyWith<$Res> {
  _$ClassroomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Classroom
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classroomId = null,
    Object? classroomName = null,
    Object? classroomDescription = freezed,
    Object? peopleNumber = null,
    Object? weekdayPrice = null,
    Object? weekendPrice = null,
    Object? classroomImage = freezed,
    Object? bookings = freezed,
  }) {
    return _then(_value.copyWith(
      classroomId: null == classroomId
          ? _value.classroomId
          : classroomId // ignore: cast_nullable_to_non_nullable
              as int,
      classroomName: null == classroomName
          ? _value.classroomName
          : classroomName // ignore: cast_nullable_to_non_nullable
              as String,
      classroomDescription: freezed == classroomDescription
          ? _value.classroomDescription
          : classroomDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      peopleNumber: null == peopleNumber
          ? _value.peopleNumber
          : peopleNumber // ignore: cast_nullable_to_non_nullable
              as int,
      weekdayPrice: null == weekdayPrice
          ? _value.weekdayPrice
          : weekdayPrice // ignore: cast_nullable_to_non_nullable
              as double,
      weekendPrice: null == weekendPrice
          ? _value.weekendPrice
          : weekendPrice // ignore: cast_nullable_to_non_nullable
              as double,
      classroomImage: freezed == classroomImage
          ? _value.classroomImage
          : classroomImage // ignore: cast_nullable_to_non_nullable
              as String?,
      bookings: freezed == bookings
          ? _value.bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<Booking>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassroomImplCopyWith<$Res>
    implements $ClassroomCopyWith<$Res> {
  factory _$$ClassroomImplCopyWith(
          _$ClassroomImpl value, $Res Function(_$ClassroomImpl) then) =
      __$$ClassroomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'classroom_id') int classroomId,
      @JsonKey(name: 'classroom_name') String classroomName,
      @JsonKey(name: 'classroom_description') String? classroomDescription,
      @JsonKey(name: 'classroom_people_number') int peopleNumber,
      @JsonKey(name: 'weekday_price') double weekdayPrice,
      @JsonKey(name: 'weekend_price') double weekendPrice,
      @JsonKey(name: 'classroom_image') String? classroomImage,
      @JsonKey(name: 'Bookings') List<Booking>? bookings});
}

/// @nodoc
class __$$ClassroomImplCopyWithImpl<$Res>
    extends _$ClassroomCopyWithImpl<$Res, _$ClassroomImpl>
    implements _$$ClassroomImplCopyWith<$Res> {
  __$$ClassroomImplCopyWithImpl(
      _$ClassroomImpl _value, $Res Function(_$ClassroomImpl) _then)
      : super(_value, _then);

  /// Create a copy of Classroom
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classroomId = null,
    Object? classroomName = null,
    Object? classroomDescription = freezed,
    Object? peopleNumber = null,
    Object? weekdayPrice = null,
    Object? weekendPrice = null,
    Object? classroomImage = freezed,
    Object? bookings = freezed,
  }) {
    return _then(_$ClassroomImpl(
      classroomId: null == classroomId
          ? _value.classroomId
          : classroomId // ignore: cast_nullable_to_non_nullable
              as int,
      classroomName: null == classroomName
          ? _value.classroomName
          : classroomName // ignore: cast_nullable_to_non_nullable
              as String,
      classroomDescription: freezed == classroomDescription
          ? _value.classroomDescription
          : classroomDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      peopleNumber: null == peopleNumber
          ? _value.peopleNumber
          : peopleNumber // ignore: cast_nullable_to_non_nullable
              as int,
      weekdayPrice: null == weekdayPrice
          ? _value.weekdayPrice
          : weekdayPrice // ignore: cast_nullable_to_non_nullable
              as double,
      weekendPrice: null == weekendPrice
          ? _value.weekendPrice
          : weekendPrice // ignore: cast_nullable_to_non_nullable
              as double,
      classroomImage: freezed == classroomImage
          ? _value.classroomImage
          : classroomImage // ignore: cast_nullable_to_non_nullable
              as String?,
      bookings: freezed == bookings
          ? _value._bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<Booking>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassroomImpl implements _Classroom {
  const _$ClassroomImpl(
      {@JsonKey(name: 'classroom_id') required this.classroomId,
      @JsonKey(name: 'classroom_name') required this.classroomName,
      @JsonKey(name: 'classroom_description') this.classroomDescription,
      @JsonKey(name: 'classroom_people_number') required this.peopleNumber,
      @JsonKey(name: 'weekday_price') required this.weekdayPrice,
      @JsonKey(name: 'weekend_price') required this.weekendPrice,
      @JsonKey(name: 'classroom_image') this.classroomImage,
      @JsonKey(name: 'Bookings') final List<Booking>? bookings})
      : _bookings = bookings;

  factory _$ClassroomImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassroomImplFromJson(json);

  @override
  @JsonKey(name: 'classroom_id')
  final int classroomId;
  @override
  @JsonKey(name: 'classroom_name')
  final String classroomName;
  @override
  @JsonKey(name: 'classroom_description')
  final String? classroomDescription;
  @override
  @JsonKey(name: 'classroom_people_number')
  final int peopleNumber;
  @override
  @JsonKey(name: 'weekday_price')
  final double weekdayPrice;
  @override
  @JsonKey(name: 'weekend_price')
  final double weekendPrice;
  @override
  @JsonKey(name: 'classroom_image')
  final String? classroomImage;
  final List<Booking>? _bookings;
  @override
  @JsonKey(name: 'Bookings')
  List<Booking>? get bookings {
    final value = _bookings;
    if (value == null) return null;
    if (_bookings is EqualUnmodifiableListView) return _bookings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Classroom(classroomId: $classroomId, classroomName: $classroomName, classroomDescription: $classroomDescription, peopleNumber: $peopleNumber, weekdayPrice: $weekdayPrice, weekendPrice: $weekendPrice, classroomImage: $classroomImage, bookings: $bookings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassroomImpl &&
            (identical(other.classroomId, classroomId) ||
                other.classroomId == classroomId) &&
            (identical(other.classroomName, classroomName) ||
                other.classroomName == classroomName) &&
            (identical(other.classroomDescription, classroomDescription) ||
                other.classroomDescription == classroomDescription) &&
            (identical(other.peopleNumber, peopleNumber) ||
                other.peopleNumber == peopleNumber) &&
            (identical(other.weekdayPrice, weekdayPrice) ||
                other.weekdayPrice == weekdayPrice) &&
            (identical(other.weekendPrice, weekendPrice) ||
                other.weekendPrice == weekendPrice) &&
            (identical(other.classroomImage, classroomImage) ||
                other.classroomImage == classroomImage) &&
            const DeepCollectionEquality().equals(other._bookings, _bookings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      classroomId,
      classroomName,
      classroomDescription,
      peopleNumber,
      weekdayPrice,
      weekendPrice,
      classroomImage,
      const DeepCollectionEquality().hash(_bookings));

  /// Create a copy of Classroom
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassroomImplCopyWith<_$ClassroomImpl> get copyWith =>
      __$$ClassroomImplCopyWithImpl<_$ClassroomImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassroomImplToJson(
      this,
    );
  }
}

abstract class _Classroom implements Classroom {
  const factory _Classroom(
      {@JsonKey(name: 'classroom_id') required final int classroomId,
      @JsonKey(name: 'classroom_name') required final String classroomName,
      @JsonKey(name: 'classroom_description')
      final String? classroomDescription,
      @JsonKey(name: 'classroom_people_number') required final int peopleNumber,
      @JsonKey(name: 'weekday_price') required final double weekdayPrice,
      @JsonKey(name: 'weekend_price') required final double weekendPrice,
      @JsonKey(name: 'classroom_image') final String? classroomImage,
      @JsonKey(name: 'Bookings')
      final List<Booking>? bookings}) = _$ClassroomImpl;

  factory _Classroom.fromJson(Map<String, dynamic> json) =
      _$ClassroomImpl.fromJson;

  @override
  @JsonKey(name: 'classroom_id')
  int get classroomId;
  @override
  @JsonKey(name: 'classroom_name')
  String get classroomName;
  @override
  @JsonKey(name: 'classroom_description')
  String? get classroomDescription;
  @override
  @JsonKey(name: 'classroom_people_number')
  int get peopleNumber;
  @override
  @JsonKey(name: 'weekday_price')
  double get weekdayPrice;
  @override
  @JsonKey(name: 'weekend_price')
  double get weekendPrice;
  @override
  @JsonKey(name: 'classroom_image')
  String? get classroomImage;
  @override
  @JsonKey(name: 'Bookings')
  List<Booking>? get bookings;

  /// Create a copy of Classroom
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassroomImplCopyWith<_$ClassroomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Booking _$BookingFromJson(Map<String, dynamic> json) {
  return _Booking.fromJson(json);
}

/// @nodoc
mixin _$Booking {
  @JsonKey(name: 'booking_id')
  int get bookingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'booking_date')
  DateTime get bookingDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'booking_start_time')
  String? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'booking_end_time')
  String? get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'isOccupied')
  int get isOccupied => throw _privateConstructorUsedError;

  /// Serializes this Booking to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingCopyWith<Booking> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingCopyWith<$Res> {
  factory $BookingCopyWith(Booking value, $Res Function(Booking) then) =
      _$BookingCopyWithImpl<$Res, Booking>;
  @useResult
  $Res call(
      {@JsonKey(name: 'booking_id') int bookingId,
      @JsonKey(name: 'booking_date') DateTime bookingDate,
      @JsonKey(name: 'booking_start_time') String? startTime,
      @JsonKey(name: 'booking_end_time') String? endTime,
      @JsonKey(name: 'isOccupied') int isOccupied});
}

/// @nodoc
class _$BookingCopyWithImpl<$Res, $Val extends Booking>
    implements $BookingCopyWith<$Res> {
  _$BookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
    Object? bookingDate = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? isOccupied = null,
  }) {
    return _then(_value.copyWith(
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as int,
      bookingDate: null == bookingDate
          ? _value.bookingDate
          : bookingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      isOccupied: null == isOccupied
          ? _value.isOccupied
          : isOccupied // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingImplCopyWith<$Res> implements $BookingCopyWith<$Res> {
  factory _$$BookingImplCopyWith(
          _$BookingImpl value, $Res Function(_$BookingImpl) then) =
      __$$BookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'booking_id') int bookingId,
      @JsonKey(name: 'booking_date') DateTime bookingDate,
      @JsonKey(name: 'booking_start_time') String? startTime,
      @JsonKey(name: 'booking_end_time') String? endTime,
      @JsonKey(name: 'isOccupied') int isOccupied});
}

/// @nodoc
class __$$BookingImplCopyWithImpl<$Res>
    extends _$BookingCopyWithImpl<$Res, _$BookingImpl>
    implements _$$BookingImplCopyWith<$Res> {
  __$$BookingImplCopyWithImpl(
      _$BookingImpl _value, $Res Function(_$BookingImpl) _then)
      : super(_value, _then);

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
    Object? bookingDate = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? isOccupied = null,
  }) {
    return _then(_$BookingImpl(
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as int,
      bookingDate: null == bookingDate
          ? _value.bookingDate
          : bookingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      isOccupied: null == isOccupied
          ? _value.isOccupied
          : isOccupied // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingImpl implements _Booking {
  const _$BookingImpl(
      {@JsonKey(name: 'booking_id') required this.bookingId,
      @JsonKey(name: 'booking_date') required this.bookingDate,
      @JsonKey(name: 'booking_start_time') this.startTime,
      @JsonKey(name: 'booking_end_time') this.endTime,
      @JsonKey(name: 'isOccupied') required this.isOccupied});

  factory _$BookingImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingImplFromJson(json);

  @override
  @JsonKey(name: 'booking_id')
  final int bookingId;
  @override
  @JsonKey(name: 'booking_date')
  final DateTime bookingDate;
  @override
  @JsonKey(name: 'booking_start_time')
  final String? startTime;
  @override
  @JsonKey(name: 'booking_end_time')
  final String? endTime;
  @override
  @JsonKey(name: 'isOccupied')
  final int isOccupied;

  @override
  String toString() {
    return 'Booking(bookingId: $bookingId, bookingDate: $bookingDate, startTime: $startTime, endTime: $endTime, isOccupied: $isOccupied)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.bookingDate, bookingDate) ||
                other.bookingDate == bookingDate) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.isOccupied, isOccupied) ||
                other.isOccupied == isOccupied));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, bookingId, bookingDate, startTime, endTime, isOccupied);

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      __$$BookingImplCopyWithImpl<_$BookingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingImplToJson(
      this,
    );
  }
}

abstract class _Booking implements Booking {
  const factory _Booking(
          {@JsonKey(name: 'booking_id') required final int bookingId,
          @JsonKey(name: 'booking_date') required final DateTime bookingDate,
          @JsonKey(name: 'booking_start_time') final String? startTime,
          @JsonKey(name: 'booking_end_time') final String? endTime,
          @JsonKey(name: 'isOccupied') required final int isOccupied}) =
      _$BookingImpl;

  factory _Booking.fromJson(Map<String, dynamic> json) = _$BookingImpl.fromJson;

  @override
  @JsonKey(name: 'booking_id')
  int get bookingId;
  @override
  @JsonKey(name: 'booking_date')
  DateTime get bookingDate;
  @override
  @JsonKey(name: 'booking_start_time')
  String? get startTime;
  @override
  @JsonKey(name: 'booking_end_time')
  String? get endTime;
  @override
  @JsonKey(name: 'isOccupied')
  int get isOccupied;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClassroomBookingState {
  List<Classroom> get classrooms => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;
  String? get selectedTimeSlot => throw _privateConstructorUsedError;
  Classroom? get selectedClassroom => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of ClassroomBookingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassroomBookingStateCopyWith<ClassroomBookingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassroomBookingStateCopyWith<$Res> {
  factory $ClassroomBookingStateCopyWith(ClassroomBookingState value,
          $Res Function(ClassroomBookingState) then) =
      _$ClassroomBookingStateCopyWithImpl<$Res, ClassroomBookingState>;
  @useResult
  $Res call(
      {List<Classroom> classrooms,
      DateTime? selectedDate,
      String? selectedTimeSlot,
      Classroom? selectedClassroom,
      bool isLoading,
      String? error});

  $ClassroomCopyWith<$Res>? get selectedClassroom;
}

/// @nodoc
class _$ClassroomBookingStateCopyWithImpl<$Res,
        $Val extends ClassroomBookingState>
    implements $ClassroomBookingStateCopyWith<$Res> {
  _$ClassroomBookingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassroomBookingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classrooms = null,
    Object? selectedDate = freezed,
    Object? selectedTimeSlot = freezed,
    Object? selectedClassroom = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      classrooms: null == classrooms
          ? _value.classrooms
          : classrooms // ignore: cast_nullable_to_non_nullable
              as List<Classroom>,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedTimeSlot: freezed == selectedTimeSlot
          ? _value.selectedTimeSlot
          : selectedTimeSlot // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedClassroom: freezed == selectedClassroom
          ? _value.selectedClassroom
          : selectedClassroom // ignore: cast_nullable_to_non_nullable
              as Classroom?,
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

  /// Create a copy of ClassroomBookingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassroomCopyWith<$Res>? get selectedClassroom {
    if (_value.selectedClassroom == null) {
      return null;
    }

    return $ClassroomCopyWith<$Res>(_value.selectedClassroom!, (value) {
      return _then(_value.copyWith(selectedClassroom: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClassroomBookingStateImplCopyWith<$Res>
    implements $ClassroomBookingStateCopyWith<$Res> {
  factory _$$ClassroomBookingStateImplCopyWith(
          _$ClassroomBookingStateImpl value,
          $Res Function(_$ClassroomBookingStateImpl) then) =
      __$$ClassroomBookingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Classroom> classrooms,
      DateTime? selectedDate,
      String? selectedTimeSlot,
      Classroom? selectedClassroom,
      bool isLoading,
      String? error});

  @override
  $ClassroomCopyWith<$Res>? get selectedClassroom;
}

/// @nodoc
class __$$ClassroomBookingStateImplCopyWithImpl<$Res>
    extends _$ClassroomBookingStateCopyWithImpl<$Res,
        _$ClassroomBookingStateImpl>
    implements _$$ClassroomBookingStateImplCopyWith<$Res> {
  __$$ClassroomBookingStateImplCopyWithImpl(_$ClassroomBookingStateImpl _value,
      $Res Function(_$ClassroomBookingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassroomBookingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classrooms = null,
    Object? selectedDate = freezed,
    Object? selectedTimeSlot = freezed,
    Object? selectedClassroom = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$ClassroomBookingStateImpl(
      classrooms: null == classrooms
          ? _value._classrooms
          : classrooms // ignore: cast_nullable_to_non_nullable
              as List<Classroom>,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedTimeSlot: freezed == selectedTimeSlot
          ? _value.selectedTimeSlot
          : selectedTimeSlot // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedClassroom: freezed == selectedClassroom
          ? _value.selectedClassroom
          : selectedClassroom // ignore: cast_nullable_to_non_nullable
              as Classroom?,
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

class _$ClassroomBookingStateImpl implements _ClassroomBookingState {
  const _$ClassroomBookingStateImpl(
      {final List<Classroom> classrooms = const [],
      this.selectedDate,
      this.selectedTimeSlot,
      this.selectedClassroom,
      this.isLoading = false,
      this.error})
      : _classrooms = classrooms;

  final List<Classroom> _classrooms;
  @override
  @JsonKey()
  List<Classroom> get classrooms {
    if (_classrooms is EqualUnmodifiableListView) return _classrooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classrooms);
  }

  @override
  final DateTime? selectedDate;
  @override
  final String? selectedTimeSlot;
  @override
  final Classroom? selectedClassroom;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'ClassroomBookingState(classrooms: $classrooms, selectedDate: $selectedDate, selectedTimeSlot: $selectedTimeSlot, selectedClassroom: $selectedClassroom, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassroomBookingStateImpl &&
            const DeepCollectionEquality()
                .equals(other._classrooms, _classrooms) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.selectedTimeSlot, selectedTimeSlot) ||
                other.selectedTimeSlot == selectedTimeSlot) &&
            (identical(other.selectedClassroom, selectedClassroom) ||
                other.selectedClassroom == selectedClassroom) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_classrooms),
      selectedDate,
      selectedTimeSlot,
      selectedClassroom,
      isLoading,
      error);

  /// Create a copy of ClassroomBookingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassroomBookingStateImplCopyWith<_$ClassroomBookingStateImpl>
      get copyWith => __$$ClassroomBookingStateImplCopyWithImpl<
          _$ClassroomBookingStateImpl>(this, _$identity);
}

abstract class _ClassroomBookingState implements ClassroomBookingState {
  const factory _ClassroomBookingState(
      {final List<Classroom> classrooms,
      final DateTime? selectedDate,
      final String? selectedTimeSlot,
      final Classroom? selectedClassroom,
      final bool isLoading,
      final String? error}) = _$ClassroomBookingStateImpl;

  @override
  List<Classroom> get classrooms;
  @override
  DateTime? get selectedDate;
  @override
  String? get selectedTimeSlot;
  @override
  Classroom? get selectedClassroom;
  @override
  bool get isLoading;
  @override
  String? get error;

  /// Create a copy of ClassroomBookingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassroomBookingStateImplCopyWith<_$ClassroomBookingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClassroomBookingRequest _$ClassroomBookingRequestFromJson(
    Map<String, dynamic> json) {
  return _ClassroomBookingRequest.fromJson(json);
}

/// @nodoc
mixin _$ClassroomBookingRequest {
  @JsonKey(name: 'student_id')
  int get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'classroom_id')
  int get classroomId => throw _privateConstructorUsedError;
  @JsonKey(name: 'booking_date')
  DateTime get bookingDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'booking_start_time')
  String get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'booking_end_time')
  String get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount')
  double get totalAmount => throw _privateConstructorUsedError;

  /// Serializes this ClassroomBookingRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassroomBookingRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassroomBookingRequestCopyWith<ClassroomBookingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassroomBookingRequestCopyWith<$Res> {
  factory $ClassroomBookingRequestCopyWith(ClassroomBookingRequest value,
          $Res Function(ClassroomBookingRequest) then) =
      _$ClassroomBookingRequestCopyWithImpl<$Res, ClassroomBookingRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'student_id') int studentId,
      @JsonKey(name: 'classroom_id') int classroomId,
      @JsonKey(name: 'booking_date') DateTime bookingDate,
      @JsonKey(name: 'booking_start_time') String startTime,
      @JsonKey(name: 'booking_end_time') String endTime,
      @JsonKey(name: 'total_amount') double totalAmount});
}

/// @nodoc
class _$ClassroomBookingRequestCopyWithImpl<$Res,
        $Val extends ClassroomBookingRequest>
    implements $ClassroomBookingRequestCopyWith<$Res> {
  _$ClassroomBookingRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassroomBookingRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? classroomId = null,
    Object? bookingDate = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? totalAmount = null,
  }) {
    return _then(_value.copyWith(
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      classroomId: null == classroomId
          ? _value.classroomId
          : classroomId // ignore: cast_nullable_to_non_nullable
              as int,
      bookingDate: null == bookingDate
          ? _value.bookingDate
          : bookingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassroomBookingRequestImplCopyWith<$Res>
    implements $ClassroomBookingRequestCopyWith<$Res> {
  factory _$$ClassroomBookingRequestImplCopyWith(
          _$ClassroomBookingRequestImpl value,
          $Res Function(_$ClassroomBookingRequestImpl) then) =
      __$$ClassroomBookingRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'student_id') int studentId,
      @JsonKey(name: 'classroom_id') int classroomId,
      @JsonKey(name: 'booking_date') DateTime bookingDate,
      @JsonKey(name: 'booking_start_time') String startTime,
      @JsonKey(name: 'booking_end_time') String endTime,
      @JsonKey(name: 'total_amount') double totalAmount});
}

/// @nodoc
class __$$ClassroomBookingRequestImplCopyWithImpl<$Res>
    extends _$ClassroomBookingRequestCopyWithImpl<$Res,
        _$ClassroomBookingRequestImpl>
    implements _$$ClassroomBookingRequestImplCopyWith<$Res> {
  __$$ClassroomBookingRequestImplCopyWithImpl(
      _$ClassroomBookingRequestImpl _value,
      $Res Function(_$ClassroomBookingRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassroomBookingRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? classroomId = null,
    Object? bookingDate = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? totalAmount = null,
  }) {
    return _then(_$ClassroomBookingRequestImpl(
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      classroomId: null == classroomId
          ? _value.classroomId
          : classroomId // ignore: cast_nullable_to_non_nullable
              as int,
      bookingDate: null == bookingDate
          ? _value.bookingDate
          : bookingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassroomBookingRequestImpl implements _ClassroomBookingRequest {
  const _$ClassroomBookingRequestImpl(
      {@JsonKey(name: 'student_id') required this.studentId,
      @JsonKey(name: 'classroom_id') required this.classroomId,
      @JsonKey(name: 'booking_date') required this.bookingDate,
      @JsonKey(name: 'booking_start_time') required this.startTime,
      @JsonKey(name: 'booking_end_time') required this.endTime,
      @JsonKey(name: 'total_amount') required this.totalAmount});

  factory _$ClassroomBookingRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassroomBookingRequestImplFromJson(json);

  @override
  @JsonKey(name: 'student_id')
  final int studentId;
  @override
  @JsonKey(name: 'classroom_id')
  final int classroomId;
  @override
  @JsonKey(name: 'booking_date')
  final DateTime bookingDate;
  @override
  @JsonKey(name: 'booking_start_time')
  final String startTime;
  @override
  @JsonKey(name: 'booking_end_time')
  final String endTime;
  @override
  @JsonKey(name: 'total_amount')
  final double totalAmount;

  @override
  String toString() {
    return 'ClassroomBookingRequest(studentId: $studentId, classroomId: $classroomId, bookingDate: $bookingDate, startTime: $startTime, endTime: $endTime, totalAmount: $totalAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassroomBookingRequestImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.classroomId, classroomId) ||
                other.classroomId == classroomId) &&
            (identical(other.bookingDate, bookingDate) ||
                other.bookingDate == bookingDate) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, studentId, classroomId,
      bookingDate, startTime, endTime, totalAmount);

  /// Create a copy of ClassroomBookingRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassroomBookingRequestImplCopyWith<_$ClassroomBookingRequestImpl>
      get copyWith => __$$ClassroomBookingRequestImplCopyWithImpl<
          _$ClassroomBookingRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassroomBookingRequestImplToJson(
      this,
    );
  }
}

abstract class _ClassroomBookingRequest implements ClassroomBookingRequest {
  const factory _ClassroomBookingRequest(
          {@JsonKey(name: 'student_id') required final int studentId,
          @JsonKey(name: 'classroom_id') required final int classroomId,
          @JsonKey(name: 'booking_date') required final DateTime bookingDate,
          @JsonKey(name: 'booking_start_time') required final String startTime,
          @JsonKey(name: 'booking_end_time') required final String endTime,
          @JsonKey(name: 'total_amount') required final double totalAmount}) =
      _$ClassroomBookingRequestImpl;

  factory _ClassroomBookingRequest.fromJson(Map<String, dynamic> json) =
      _$ClassroomBookingRequestImpl.fromJson;

  @override
  @JsonKey(name: 'student_id')
  int get studentId;
  @override
  @JsonKey(name: 'classroom_id')
  int get classroomId;
  @override
  @JsonKey(name: 'booking_date')
  DateTime get bookingDate;
  @override
  @JsonKey(name: 'booking_start_time')
  String get startTime;
  @override
  @JsonKey(name: 'booking_end_time')
  String get endTime;
  @override
  @JsonKey(name: 'total_amount')
  double get totalAmount;

  /// Create a copy of ClassroomBookingRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassroomBookingRequestImplCopyWith<_$ClassroomBookingRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
