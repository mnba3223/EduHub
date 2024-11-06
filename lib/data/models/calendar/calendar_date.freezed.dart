// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_date.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CalendarDate _$CalendarDateFromJson(Map<String, dynamic> json) {
  return _CalendarDate.fromJson(json);
}

/// @nodoc
mixin _$CalendarDate {
  DateTime get date => throw _privateConstructorUsedError;
  String get dayOfWeek => throw _privateConstructorUsedError;
  bool get hasContactBook => throw _privateConstructorUsedError;
  bool get isSigned => throw _privateConstructorUsedError;
  PreviewInfo? get preview => throw _privateConstructorUsedError;

  /// Serializes this CalendarDate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CalendarDate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalendarDateCopyWith<CalendarDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarDateCopyWith<$Res> {
  factory $CalendarDateCopyWith(
          CalendarDate value, $Res Function(CalendarDate) then) =
      _$CalendarDateCopyWithImpl<$Res, CalendarDate>;
  @useResult
  $Res call(
      {DateTime date,
      String dayOfWeek,
      bool hasContactBook,
      bool isSigned,
      PreviewInfo? preview});

  $PreviewInfoCopyWith<$Res>? get preview;
}

/// @nodoc
class _$CalendarDateCopyWithImpl<$Res, $Val extends CalendarDate>
    implements $CalendarDateCopyWith<$Res> {
  _$CalendarDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalendarDate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? dayOfWeek = null,
    Object? hasContactBook = null,
    Object? isSigned = null,
    Object? preview = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as String,
      hasContactBook: null == hasContactBook
          ? _value.hasContactBook
          : hasContactBook // ignore: cast_nullable_to_non_nullable
              as bool,
      isSigned: null == isSigned
          ? _value.isSigned
          : isSigned // ignore: cast_nullable_to_non_nullable
              as bool,
      preview: freezed == preview
          ? _value.preview
          : preview // ignore: cast_nullable_to_non_nullable
              as PreviewInfo?,
    ) as $Val);
  }

  /// Create a copy of CalendarDate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PreviewInfoCopyWith<$Res>? get preview {
    if (_value.preview == null) {
      return null;
    }

    return $PreviewInfoCopyWith<$Res>(_value.preview!, (value) {
      return _then(_value.copyWith(preview: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CalendarDateImplCopyWith<$Res>
    implements $CalendarDateCopyWith<$Res> {
  factory _$$CalendarDateImplCopyWith(
          _$CalendarDateImpl value, $Res Function(_$CalendarDateImpl) then) =
      __$$CalendarDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      String dayOfWeek,
      bool hasContactBook,
      bool isSigned,
      PreviewInfo? preview});

  @override
  $PreviewInfoCopyWith<$Res>? get preview;
}

/// @nodoc
class __$$CalendarDateImplCopyWithImpl<$Res>
    extends _$CalendarDateCopyWithImpl<$Res, _$CalendarDateImpl>
    implements _$$CalendarDateImplCopyWith<$Res> {
  __$$CalendarDateImplCopyWithImpl(
      _$CalendarDateImpl _value, $Res Function(_$CalendarDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarDate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? dayOfWeek = null,
    Object? hasContactBook = null,
    Object? isSigned = null,
    Object? preview = freezed,
  }) {
    return _then(_$CalendarDateImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as String,
      hasContactBook: null == hasContactBook
          ? _value.hasContactBook
          : hasContactBook // ignore: cast_nullable_to_non_nullable
              as bool,
      isSigned: null == isSigned
          ? _value.isSigned
          : isSigned // ignore: cast_nullable_to_non_nullable
              as bool,
      preview: freezed == preview
          ? _value.preview
          : preview // ignore: cast_nullable_to_non_nullable
              as PreviewInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalendarDateImpl implements _CalendarDate {
  const _$CalendarDateImpl(
      {required this.date,
      required this.dayOfWeek,
      required this.hasContactBook,
      required this.isSigned,
      required this.preview});

  factory _$CalendarDateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalendarDateImplFromJson(json);

  @override
  final DateTime date;
  @override
  final String dayOfWeek;
  @override
  final bool hasContactBook;
  @override
  final bool isSigned;
  @override
  final PreviewInfo? preview;

  @override
  String toString() {
    return 'CalendarDate(date: $date, dayOfWeek: $dayOfWeek, hasContactBook: $hasContactBook, isSigned: $isSigned, preview: $preview)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarDateImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.hasContactBook, hasContactBook) ||
                other.hasContactBook == hasContactBook) &&
            (identical(other.isSigned, isSigned) ||
                other.isSigned == isSigned) &&
            (identical(other.preview, preview) || other.preview == preview));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, dayOfWeek, hasContactBook, isSigned, preview);

  /// Create a copy of CalendarDate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarDateImplCopyWith<_$CalendarDateImpl> get copyWith =>
      __$$CalendarDateImplCopyWithImpl<_$CalendarDateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalendarDateImplToJson(
      this,
    );
  }
}

abstract class _CalendarDate implements CalendarDate {
  const factory _CalendarDate(
      {required final DateTime date,
      required final String dayOfWeek,
      required final bool hasContactBook,
      required final bool isSigned,
      required final PreviewInfo? preview}) = _$CalendarDateImpl;

  factory _CalendarDate.fromJson(Map<String, dynamic> json) =
      _$CalendarDateImpl.fromJson;

  @override
  DateTime get date;
  @override
  String get dayOfWeek;
  @override
  bool get hasContactBook;
  @override
  bool get isSigned;
  @override
  PreviewInfo? get preview;

  /// Create a copy of CalendarDate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalendarDateImplCopyWith<_$CalendarDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PreviewInfo _$PreviewInfoFromJson(Map<String, dynamic> json) {
  return _PreviewInfo.fromJson(json);
}

/// @nodoc
mixin _$PreviewInfo {
  String get title => throw _privateConstructorUsedError;
  String get classType => throw _privateConstructorUsedError;
  bool get hasHomework => throw _privateConstructorUsedError;
  bool get hasAnnouncement => throw _privateConstructorUsedError;
  List<String> get subjects => throw _privateConstructorUsedError;

  /// Serializes this PreviewInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PreviewInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreviewInfoCopyWith<PreviewInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviewInfoCopyWith<$Res> {
  factory $PreviewInfoCopyWith(
          PreviewInfo value, $Res Function(PreviewInfo) then) =
      _$PreviewInfoCopyWithImpl<$Res, PreviewInfo>;
  @useResult
  $Res call(
      {String title,
      String classType,
      bool hasHomework,
      bool hasAnnouncement,
      List<String> subjects});
}

/// @nodoc
class _$PreviewInfoCopyWithImpl<$Res, $Val extends PreviewInfo>
    implements $PreviewInfoCopyWith<$Res> {
  _$PreviewInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreviewInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? classType = null,
    Object? hasHomework = null,
    Object? hasAnnouncement = null,
    Object? subjects = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      classType: null == classType
          ? _value.classType
          : classType // ignore: cast_nullable_to_non_nullable
              as String,
      hasHomework: null == hasHomework
          ? _value.hasHomework
          : hasHomework // ignore: cast_nullable_to_non_nullable
              as bool,
      hasAnnouncement: null == hasAnnouncement
          ? _value.hasAnnouncement
          : hasAnnouncement // ignore: cast_nullable_to_non_nullable
              as bool,
      subjects: null == subjects
          ? _value.subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreviewInfoImplCopyWith<$Res>
    implements $PreviewInfoCopyWith<$Res> {
  factory _$$PreviewInfoImplCopyWith(
          _$PreviewInfoImpl value, $Res Function(_$PreviewInfoImpl) then) =
      __$$PreviewInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String classType,
      bool hasHomework,
      bool hasAnnouncement,
      List<String> subjects});
}

/// @nodoc
class __$$PreviewInfoImplCopyWithImpl<$Res>
    extends _$PreviewInfoCopyWithImpl<$Res, _$PreviewInfoImpl>
    implements _$$PreviewInfoImplCopyWith<$Res> {
  __$$PreviewInfoImplCopyWithImpl(
      _$PreviewInfoImpl _value, $Res Function(_$PreviewInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreviewInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? classType = null,
    Object? hasHomework = null,
    Object? hasAnnouncement = null,
    Object? subjects = null,
  }) {
    return _then(_$PreviewInfoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      classType: null == classType
          ? _value.classType
          : classType // ignore: cast_nullable_to_non_nullable
              as String,
      hasHomework: null == hasHomework
          ? _value.hasHomework
          : hasHomework // ignore: cast_nullable_to_non_nullable
              as bool,
      hasAnnouncement: null == hasAnnouncement
          ? _value.hasAnnouncement
          : hasAnnouncement // ignore: cast_nullable_to_non_nullable
              as bool,
      subjects: null == subjects
          ? _value._subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreviewInfoImpl implements _PreviewInfo {
  const _$PreviewInfoImpl(
      {required this.title,
      required this.classType,
      required this.hasHomework,
      required this.hasAnnouncement,
      required final List<String> subjects})
      : _subjects = subjects;

  factory _$PreviewInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreviewInfoImplFromJson(json);

  @override
  final String title;
  @override
  final String classType;
  @override
  final bool hasHomework;
  @override
  final bool hasAnnouncement;
  final List<String> _subjects;
  @override
  List<String> get subjects {
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subjects);
  }

  @override
  String toString() {
    return 'PreviewInfo(title: $title, classType: $classType, hasHomework: $hasHomework, hasAnnouncement: $hasAnnouncement, subjects: $subjects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviewInfoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.classType, classType) ||
                other.classType == classType) &&
            (identical(other.hasHomework, hasHomework) ||
                other.hasHomework == hasHomework) &&
            (identical(other.hasAnnouncement, hasAnnouncement) ||
                other.hasAnnouncement == hasAnnouncement) &&
            const DeepCollectionEquality().equals(other._subjects, _subjects));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, classType, hasHomework,
      hasAnnouncement, const DeepCollectionEquality().hash(_subjects));

  /// Create a copy of PreviewInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreviewInfoImplCopyWith<_$PreviewInfoImpl> get copyWith =>
      __$$PreviewInfoImplCopyWithImpl<_$PreviewInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreviewInfoImplToJson(
      this,
    );
  }
}

abstract class _PreviewInfo implements PreviewInfo {
  const factory _PreviewInfo(
      {required final String title,
      required final String classType,
      required final bool hasHomework,
      required final bool hasAnnouncement,
      required final List<String> subjects}) = _$PreviewInfoImpl;

  factory _PreviewInfo.fromJson(Map<String, dynamic> json) =
      _$PreviewInfoImpl.fromJson;

  @override
  String get title;
  @override
  String get classType;
  @override
  bool get hasHomework;
  @override
  bool get hasAnnouncement;
  @override
  List<String> get subjects;

  /// Create a copy of PreviewInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreviewInfoImplCopyWith<_$PreviewInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DateRange _$DateRangeFromJson(Map<String, dynamic> json) {
  return _DateRange.fromJson(json);
}

/// @nodoc
mixin _$DateRange {
  DateTime get start => throw _privateConstructorUsedError;
  DateTime get end => throw _privateConstructorUsedError;

  /// Serializes this DateRange to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DateRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DateRangeCopyWith<DateRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateRangeCopyWith<$Res> {
  factory $DateRangeCopyWith(DateRange value, $Res Function(DateRange) then) =
      _$DateRangeCopyWithImpl<$Res, DateRange>;
  @useResult
  $Res call({DateTime start, DateTime end});
}

/// @nodoc
class _$DateRangeCopyWithImpl<$Res, $Val extends DateRange>
    implements $DateRangeCopyWith<$Res> {
  _$DateRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DateRange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DateRangeImplCopyWith<$Res>
    implements $DateRangeCopyWith<$Res> {
  factory _$$DateRangeImplCopyWith(
          _$DateRangeImpl value, $Res Function(_$DateRangeImpl) then) =
      __$$DateRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime start, DateTime end});
}

/// @nodoc
class __$$DateRangeImplCopyWithImpl<$Res>
    extends _$DateRangeCopyWithImpl<$Res, _$DateRangeImpl>
    implements _$$DateRangeImplCopyWith<$Res> {
  __$$DateRangeImplCopyWithImpl(
      _$DateRangeImpl _value, $Res Function(_$DateRangeImpl) _then)
      : super(_value, _then);

  /// Create a copy of DateRange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$DateRangeImpl(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DateRangeImpl implements _DateRange {
  const _$DateRangeImpl({required this.start, required this.end});

  factory _$DateRangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$DateRangeImplFromJson(json);

  @override
  final DateTime start;
  @override
  final DateTime end;

  @override
  String toString() {
    return 'DateRange(start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateRangeImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  /// Create a copy of DateRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateRangeImplCopyWith<_$DateRangeImpl> get copyWith =>
      __$$DateRangeImplCopyWithImpl<_$DateRangeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DateRangeImplToJson(
      this,
    );
  }
}

abstract class _DateRange implements DateRange {
  const factory _DateRange(
      {required final DateTime start,
      required final DateTime end}) = _$DateRangeImpl;

  factory _DateRange.fromJson(Map<String, dynamic> json) =
      _$DateRangeImpl.fromJson;

  @override
  DateTime get start;
  @override
  DateTime get end;

  /// Create a copy of DateRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateRangeImplCopyWith<_$DateRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
