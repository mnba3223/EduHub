// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContactBook _$ContactBookFromJson(Map<String, dynamic> json) {
  return _ContactBook.fromJson(json);
}

/// @nodoc
mixin _$ContactBook {
  StudentInfo get studentInfo => throw _privateConstructorUsedError;
  CalendarData get calendar => throw _privateConstructorUsedError;
  List<ContactBookPreview> get contactBooks =>
      throw _privateConstructorUsedError;
  Statistics? get statistics => throw _privateConstructorUsedError;

  /// Serializes this ContactBook to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContactBook
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactBookCopyWith<ContactBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactBookCopyWith<$Res> {
  factory $ContactBookCopyWith(
          ContactBook value, $Res Function(ContactBook) then) =
      _$ContactBookCopyWithImpl<$Res, ContactBook>;
  @useResult
  $Res call(
      {StudentInfo studentInfo,
      CalendarData calendar,
      List<ContactBookPreview> contactBooks,
      Statistics? statistics});

  $StudentInfoCopyWith<$Res> get studentInfo;
  $CalendarDataCopyWith<$Res> get calendar;
  $StatisticsCopyWith<$Res>? get statistics;
}

/// @nodoc
class _$ContactBookCopyWithImpl<$Res, $Val extends ContactBook>
    implements $ContactBookCopyWith<$Res> {
  _$ContactBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactBook
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentInfo = null,
    Object? calendar = null,
    Object? contactBooks = null,
    Object? statistics = freezed,
  }) {
    return _then(_value.copyWith(
      studentInfo: null == studentInfo
          ? _value.studentInfo
          : studentInfo // ignore: cast_nullable_to_non_nullable
              as StudentInfo,
      calendar: null == calendar
          ? _value.calendar
          : calendar // ignore: cast_nullable_to_non_nullable
              as CalendarData,
      contactBooks: null == contactBooks
          ? _value.contactBooks
          : contactBooks // ignore: cast_nullable_to_non_nullable
              as List<ContactBookPreview>,
      statistics: freezed == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as Statistics?,
    ) as $Val);
  }

  /// Create a copy of ContactBook
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentInfoCopyWith<$Res> get studentInfo {
    return $StudentInfoCopyWith<$Res>(_value.studentInfo, (value) {
      return _then(_value.copyWith(studentInfo: value) as $Val);
    });
  }

  /// Create a copy of ContactBook
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CalendarDataCopyWith<$Res> get calendar {
    return $CalendarDataCopyWith<$Res>(_value.calendar, (value) {
      return _then(_value.copyWith(calendar: value) as $Val);
    });
  }

  /// Create a copy of ContactBook
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatisticsCopyWith<$Res>? get statistics {
    if (_value.statistics == null) {
      return null;
    }

    return $StatisticsCopyWith<$Res>(_value.statistics!, (value) {
      return _then(_value.copyWith(statistics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContactBookImplCopyWith<$Res>
    implements $ContactBookCopyWith<$Res> {
  factory _$$ContactBookImplCopyWith(
          _$ContactBookImpl value, $Res Function(_$ContactBookImpl) then) =
      __$$ContactBookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StudentInfo studentInfo,
      CalendarData calendar,
      List<ContactBookPreview> contactBooks,
      Statistics? statistics});

  @override
  $StudentInfoCopyWith<$Res> get studentInfo;
  @override
  $CalendarDataCopyWith<$Res> get calendar;
  @override
  $StatisticsCopyWith<$Res>? get statistics;
}

/// @nodoc
class __$$ContactBookImplCopyWithImpl<$Res>
    extends _$ContactBookCopyWithImpl<$Res, _$ContactBookImpl>
    implements _$$ContactBookImplCopyWith<$Res> {
  __$$ContactBookImplCopyWithImpl(
      _$ContactBookImpl _value, $Res Function(_$ContactBookImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactBook
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentInfo = null,
    Object? calendar = null,
    Object? contactBooks = null,
    Object? statistics = freezed,
  }) {
    return _then(_$ContactBookImpl(
      studentInfo: null == studentInfo
          ? _value.studentInfo
          : studentInfo // ignore: cast_nullable_to_non_nullable
              as StudentInfo,
      calendar: null == calendar
          ? _value.calendar
          : calendar // ignore: cast_nullable_to_non_nullable
              as CalendarData,
      contactBooks: null == contactBooks
          ? _value._contactBooks
          : contactBooks // ignore: cast_nullable_to_non_nullable
              as List<ContactBookPreview>,
      statistics: freezed == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as Statistics?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactBookImpl implements _ContactBook {
  const _$ContactBookImpl(
      {required this.studentInfo,
      required this.calendar,
      required final List<ContactBookPreview> contactBooks,
      this.statistics})
      : _contactBooks = contactBooks;

  factory _$ContactBookImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactBookImplFromJson(json);

  @override
  final StudentInfo studentInfo;
  @override
  final CalendarData calendar;
  final List<ContactBookPreview> _contactBooks;
  @override
  List<ContactBookPreview> get contactBooks {
    if (_contactBooks is EqualUnmodifiableListView) return _contactBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contactBooks);
  }

  @override
  final Statistics? statistics;

  @override
  String toString() {
    return 'ContactBook(studentInfo: $studentInfo, calendar: $calendar, contactBooks: $contactBooks, statistics: $statistics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactBookImpl &&
            (identical(other.studentInfo, studentInfo) ||
                other.studentInfo == studentInfo) &&
            (identical(other.calendar, calendar) ||
                other.calendar == calendar) &&
            const DeepCollectionEquality()
                .equals(other._contactBooks, _contactBooks) &&
            (identical(other.statistics, statistics) ||
                other.statistics == statistics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, studentInfo, calendar,
      const DeepCollectionEquality().hash(_contactBooks), statistics);

  /// Create a copy of ContactBook
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactBookImplCopyWith<_$ContactBookImpl> get copyWith =>
      __$$ContactBookImplCopyWithImpl<_$ContactBookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactBookImplToJson(
      this,
    );
  }
}

abstract class _ContactBook implements ContactBook {
  const factory _ContactBook(
      {required final StudentInfo studentInfo,
      required final CalendarData calendar,
      required final List<ContactBookPreview> contactBooks,
      final Statistics? statistics}) = _$ContactBookImpl;

  factory _ContactBook.fromJson(Map<String, dynamic> json) =
      _$ContactBookImpl.fromJson;

  @override
  StudentInfo get studentInfo;
  @override
  CalendarData get calendar;
  @override
  List<ContactBookPreview> get contactBooks;
  @override
  Statistics? get statistics;

  /// Create a copy of ContactBook
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactBookImplCopyWith<_$ContactBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StudentInfo _$StudentInfoFromJson(Map<String, dynamic> json) {
  return _StudentInfo.fromJson(json);
}

/// @nodoc
mixin _$StudentInfo {
  String get name => throw _privateConstructorUsedError;
  String get className => throw _privateConstructorUsedError;
  String get classTeacher => throw _privateConstructorUsedError;

  /// Serializes this StudentInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentInfoCopyWith<StudentInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentInfoCopyWith<$Res> {
  factory $StudentInfoCopyWith(
          StudentInfo value, $Res Function(StudentInfo) then) =
      _$StudentInfoCopyWithImpl<$Res, StudentInfo>;
  @useResult
  $Res call({String name, String className, String classTeacher});
}

/// @nodoc
class _$StudentInfoCopyWithImpl<$Res, $Val extends StudentInfo>
    implements $StudentInfoCopyWith<$Res> {
  _$StudentInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? className = null,
    Object? classTeacher = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      classTeacher: null == classTeacher
          ? _value.classTeacher
          : classTeacher // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentInfoImplCopyWith<$Res>
    implements $StudentInfoCopyWith<$Res> {
  factory _$$StudentInfoImplCopyWith(
          _$StudentInfoImpl value, $Res Function(_$StudentInfoImpl) then) =
      __$$StudentInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String className, String classTeacher});
}

/// @nodoc
class __$$StudentInfoImplCopyWithImpl<$Res>
    extends _$StudentInfoCopyWithImpl<$Res, _$StudentInfoImpl>
    implements _$$StudentInfoImplCopyWith<$Res> {
  __$$StudentInfoImplCopyWithImpl(
      _$StudentInfoImpl _value, $Res Function(_$StudentInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? className = null,
    Object? classTeacher = null,
  }) {
    return _then(_$StudentInfoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      classTeacher: null == classTeacher
          ? _value.classTeacher
          : classTeacher // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentInfoImpl implements _StudentInfo {
  const _$StudentInfoImpl(
      {required this.name,
      required this.className,
      required this.classTeacher});

  factory _$StudentInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentInfoImplFromJson(json);

  @override
  final String name;
  @override
  final String className;
  @override
  final String classTeacher;

  @override
  String toString() {
    return 'StudentInfo(name: $name, className: $className, classTeacher: $classTeacher)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.classTeacher, classTeacher) ||
                other.classTeacher == classTeacher));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, className, classTeacher);

  /// Create a copy of StudentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentInfoImplCopyWith<_$StudentInfoImpl> get copyWith =>
      __$$StudentInfoImplCopyWithImpl<_$StudentInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentInfoImplToJson(
      this,
    );
  }
}

abstract class _StudentInfo implements StudentInfo {
  const factory _StudentInfo(
      {required final String name,
      required final String className,
      required final String classTeacher}) = _$StudentInfoImpl;

  factory _StudentInfo.fromJson(Map<String, dynamic> json) =
      _$StudentInfoImpl.fromJson;

  @override
  String get name;
  @override
  String get className;
  @override
  String get classTeacher;

  /// Create a copy of StudentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentInfoImplCopyWith<_$StudentInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Statistics _$StatisticsFromJson(Map<String, dynamic> json) {
  return _Statistics.fromJson(json);
}

/// @nodoc
mixin _$Statistics {
  int get totalBooks => throw _privateConstructorUsedError; // 總聯絡簿數量
  int get signedCount => throw _privateConstructorUsedError; // 已簽名數量
  int get unsignedCount => throw _privateConstructorUsedError;

  /// Serializes this Statistics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Statistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatisticsCopyWith<Statistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsCopyWith<$Res> {
  factory $StatisticsCopyWith(
          Statistics value, $Res Function(Statistics) then) =
      _$StatisticsCopyWithImpl<$Res, Statistics>;
  @useResult
  $Res call({int totalBooks, int signedCount, int unsignedCount});
}

/// @nodoc
class _$StatisticsCopyWithImpl<$Res, $Val extends Statistics>
    implements $StatisticsCopyWith<$Res> {
  _$StatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Statistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalBooks = null,
    Object? signedCount = null,
    Object? unsignedCount = null,
  }) {
    return _then(_value.copyWith(
      totalBooks: null == totalBooks
          ? _value.totalBooks
          : totalBooks // ignore: cast_nullable_to_non_nullable
              as int,
      signedCount: null == signedCount
          ? _value.signedCount
          : signedCount // ignore: cast_nullable_to_non_nullable
              as int,
      unsignedCount: null == unsignedCount
          ? _value.unsignedCount
          : unsignedCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatisticsImplCopyWith<$Res>
    implements $StatisticsCopyWith<$Res> {
  factory _$$StatisticsImplCopyWith(
          _$StatisticsImpl value, $Res Function(_$StatisticsImpl) then) =
      __$$StatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalBooks, int signedCount, int unsignedCount});
}

/// @nodoc
class __$$StatisticsImplCopyWithImpl<$Res>
    extends _$StatisticsCopyWithImpl<$Res, _$StatisticsImpl>
    implements _$$StatisticsImplCopyWith<$Res> {
  __$$StatisticsImplCopyWithImpl(
      _$StatisticsImpl _value, $Res Function(_$StatisticsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Statistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalBooks = null,
    Object? signedCount = null,
    Object? unsignedCount = null,
  }) {
    return _then(_$StatisticsImpl(
      totalBooks: null == totalBooks
          ? _value.totalBooks
          : totalBooks // ignore: cast_nullable_to_non_nullable
              as int,
      signedCount: null == signedCount
          ? _value.signedCount
          : signedCount // ignore: cast_nullable_to_non_nullable
              as int,
      unsignedCount: null == unsignedCount
          ? _value.unsignedCount
          : unsignedCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticsImpl implements _Statistics {
  const _$StatisticsImpl(
      {required this.totalBooks,
      required this.signedCount,
      required this.unsignedCount});

  factory _$StatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatisticsImplFromJson(json);

  @override
  final int totalBooks;
// 總聯絡簿數量
  @override
  final int signedCount;
// 已簽名數量
  @override
  final int unsignedCount;

  @override
  String toString() {
    return 'Statistics(totalBooks: $totalBooks, signedCount: $signedCount, unsignedCount: $unsignedCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticsImpl &&
            (identical(other.totalBooks, totalBooks) ||
                other.totalBooks == totalBooks) &&
            (identical(other.signedCount, signedCount) ||
                other.signedCount == signedCount) &&
            (identical(other.unsignedCount, unsignedCount) ||
                other.unsignedCount == unsignedCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalBooks, signedCount, unsignedCount);

  /// Create a copy of Statistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsImplCopyWith<_$StatisticsImpl> get copyWith =>
      __$$StatisticsImplCopyWithImpl<_$StatisticsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticsImplToJson(
      this,
    );
  }
}

abstract class _Statistics implements Statistics {
  const factory _Statistics(
      {required final int totalBooks,
      required final int signedCount,
      required final int unsignedCount}) = _$StatisticsImpl;

  factory _Statistics.fromJson(Map<String, dynamic> json) =
      _$StatisticsImpl.fromJson;

  @override
  int get totalBooks; // 總聯絡簿數量
  @override
  int get signedCount; // 已簽名數量
  @override
  int get unsignedCount;

  /// Create a copy of Statistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatisticsImplCopyWith<_$StatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CalendarData _$CalendarDataFromJson(Map<String, dynamic> json) {
  return _CalendarData.fromJson(json);
}

/// @nodoc
mixin _$CalendarData {
  DateTime get currentDate => throw _privateConstructorUsedError;
  DateRange get dateRange => throw _privateConstructorUsedError;
  List<CalendarDate> get dates => throw _privateConstructorUsedError;

  /// Serializes this CalendarData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CalendarData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalendarDataCopyWith<CalendarData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarDataCopyWith<$Res> {
  factory $CalendarDataCopyWith(
          CalendarData value, $Res Function(CalendarData) then) =
      _$CalendarDataCopyWithImpl<$Res, CalendarData>;
  @useResult
  $Res call(
      {DateTime currentDate, DateRange dateRange, List<CalendarDate> dates});

  $DateRangeCopyWith<$Res> get dateRange;
}

/// @nodoc
class _$CalendarDataCopyWithImpl<$Res, $Val extends CalendarData>
    implements $CalendarDataCopyWith<$Res> {
  _$CalendarDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalendarData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentDate = null,
    Object? dateRange = null,
    Object? dates = null,
  }) {
    return _then(_value.copyWith(
      currentDate: null == currentDate
          ? _value.currentDate
          : currentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateRange: null == dateRange
          ? _value.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as DateRange,
      dates: null == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<CalendarDate>,
    ) as $Val);
  }

  /// Create a copy of CalendarData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateRangeCopyWith<$Res> get dateRange {
    return $DateRangeCopyWith<$Res>(_value.dateRange, (value) {
      return _then(_value.copyWith(dateRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CalendarDataImplCopyWith<$Res>
    implements $CalendarDataCopyWith<$Res> {
  factory _$$CalendarDataImplCopyWith(
          _$CalendarDataImpl value, $Res Function(_$CalendarDataImpl) then) =
      __$$CalendarDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime currentDate, DateRange dateRange, List<CalendarDate> dates});

  @override
  $DateRangeCopyWith<$Res> get dateRange;
}

/// @nodoc
class __$$CalendarDataImplCopyWithImpl<$Res>
    extends _$CalendarDataCopyWithImpl<$Res, _$CalendarDataImpl>
    implements _$$CalendarDataImplCopyWith<$Res> {
  __$$CalendarDataImplCopyWithImpl(
      _$CalendarDataImpl _value, $Res Function(_$CalendarDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentDate = null,
    Object? dateRange = null,
    Object? dates = null,
  }) {
    return _then(_$CalendarDataImpl(
      currentDate: null == currentDate
          ? _value.currentDate
          : currentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateRange: null == dateRange
          ? _value.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as DateRange,
      dates: null == dates
          ? _value._dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<CalendarDate>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalendarDataImpl implements _CalendarData {
  const _$CalendarDataImpl(
      {required this.currentDate,
      required this.dateRange,
      required final List<CalendarDate> dates})
      : _dates = dates;

  factory _$CalendarDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalendarDataImplFromJson(json);

  @override
  final DateTime currentDate;
  @override
  final DateRange dateRange;
  final List<CalendarDate> _dates;
  @override
  List<CalendarDate> get dates {
    if (_dates is EqualUnmodifiableListView) return _dates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dates);
  }

  @override
  String toString() {
    return 'CalendarData(currentDate: $currentDate, dateRange: $dateRange, dates: $dates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarDataImpl &&
            (identical(other.currentDate, currentDate) ||
                other.currentDate == currentDate) &&
            (identical(other.dateRange, dateRange) ||
                other.dateRange == dateRange) &&
            const DeepCollectionEquality().equals(other._dates, _dates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentDate, dateRange,
      const DeepCollectionEquality().hash(_dates));

  /// Create a copy of CalendarData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarDataImplCopyWith<_$CalendarDataImpl> get copyWith =>
      __$$CalendarDataImplCopyWithImpl<_$CalendarDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalendarDataImplToJson(
      this,
    );
  }
}

abstract class _CalendarData implements CalendarData {
  const factory _CalendarData(
      {required final DateTime currentDate,
      required final DateRange dateRange,
      required final List<CalendarDate> dates}) = _$CalendarDataImpl;

  factory _CalendarData.fromJson(Map<String, dynamic> json) =
      _$CalendarDataImpl.fromJson;

  @override
  DateTime get currentDate;
  @override
  DateRange get dateRange;
  @override
  List<CalendarDate> get dates;

  /// Create a copy of CalendarData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalendarDataImplCopyWith<_$CalendarDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
