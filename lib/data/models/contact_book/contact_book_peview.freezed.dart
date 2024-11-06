// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_book_peview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContactBookPreview _$ContactBookPreviewFromJson(Map<String, dynamic> json) {
  return _ContactBookPreview.fromJson(json);
}

/// @nodoc
mixin _$ContactBookPreview {
  DateTime get date => throw _privateConstructorUsedError;
  String get dayOfWeek => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get classType => throw _privateConstructorUsedError;
  String get teacher => throw _privateConstructorUsedError;
  bool get isSigned => throw _privateConstructorUsedError;
  PreviewSummary get summary => throw _privateConstructorUsedError;

  /// Serializes this ContactBookPreview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContactBookPreview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactBookPreviewCopyWith<ContactBookPreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactBookPreviewCopyWith<$Res> {
  factory $ContactBookPreviewCopyWith(
          ContactBookPreview value, $Res Function(ContactBookPreview) then) =
      _$ContactBookPreviewCopyWithImpl<$Res, ContactBookPreview>;
  @useResult
  $Res call(
      {DateTime date,
      String dayOfWeek,
      String title,
      String classType,
      String teacher,
      bool isSigned,
      PreviewSummary summary});

  $PreviewSummaryCopyWith<$Res> get summary;
}

/// @nodoc
class _$ContactBookPreviewCopyWithImpl<$Res, $Val extends ContactBookPreview>
    implements $ContactBookPreviewCopyWith<$Res> {
  _$ContactBookPreviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactBookPreview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? dayOfWeek = null,
    Object? title = null,
    Object? classType = null,
    Object? teacher = null,
    Object? isSigned = null,
    Object? summary = null,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      classType: null == classType
          ? _value.classType
          : classType // ignore: cast_nullable_to_non_nullable
              as String,
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String,
      isSigned: null == isSigned
          ? _value.isSigned
          : isSigned // ignore: cast_nullable_to_non_nullable
              as bool,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as PreviewSummary,
    ) as $Val);
  }

  /// Create a copy of ContactBookPreview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PreviewSummaryCopyWith<$Res> get summary {
    return $PreviewSummaryCopyWith<$Res>(_value.summary, (value) {
      return _then(_value.copyWith(summary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContactBookPreviewImplCopyWith<$Res>
    implements $ContactBookPreviewCopyWith<$Res> {
  factory _$$ContactBookPreviewImplCopyWith(_$ContactBookPreviewImpl value,
          $Res Function(_$ContactBookPreviewImpl) then) =
      __$$ContactBookPreviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      String dayOfWeek,
      String title,
      String classType,
      String teacher,
      bool isSigned,
      PreviewSummary summary});

  @override
  $PreviewSummaryCopyWith<$Res> get summary;
}

/// @nodoc
class __$$ContactBookPreviewImplCopyWithImpl<$Res>
    extends _$ContactBookPreviewCopyWithImpl<$Res, _$ContactBookPreviewImpl>
    implements _$$ContactBookPreviewImplCopyWith<$Res> {
  __$$ContactBookPreviewImplCopyWithImpl(_$ContactBookPreviewImpl _value,
      $Res Function(_$ContactBookPreviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactBookPreview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? dayOfWeek = null,
    Object? title = null,
    Object? classType = null,
    Object? teacher = null,
    Object? isSigned = null,
    Object? summary = null,
  }) {
    return _then(_$ContactBookPreviewImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      classType: null == classType
          ? _value.classType
          : classType // ignore: cast_nullable_to_non_nullable
              as String,
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String,
      isSigned: null == isSigned
          ? _value.isSigned
          : isSigned // ignore: cast_nullable_to_non_nullable
              as bool,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as PreviewSummary,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactBookPreviewImpl implements _ContactBookPreview {
  const _$ContactBookPreviewImpl(
      {required this.date,
      required this.dayOfWeek,
      required this.title,
      required this.classType,
      required this.teacher,
      required this.isSigned,
      required this.summary});

  factory _$ContactBookPreviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactBookPreviewImplFromJson(json);

  @override
  final DateTime date;
  @override
  final String dayOfWeek;
  @override
  final String title;
  @override
  final String classType;
  @override
  final String teacher;
  @override
  final bool isSigned;
  @override
  final PreviewSummary summary;

  @override
  String toString() {
    return 'ContactBookPreview(date: $date, dayOfWeek: $dayOfWeek, title: $title, classType: $classType, teacher: $teacher, isSigned: $isSigned, summary: $summary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactBookPreviewImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.classType, classType) ||
                other.classType == classType) &&
            (identical(other.teacher, teacher) || other.teacher == teacher) &&
            (identical(other.isSigned, isSigned) ||
                other.isSigned == isSigned) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, dayOfWeek, title,
      classType, teacher, isSigned, summary);

  /// Create a copy of ContactBookPreview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactBookPreviewImplCopyWith<_$ContactBookPreviewImpl> get copyWith =>
      __$$ContactBookPreviewImplCopyWithImpl<_$ContactBookPreviewImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactBookPreviewImplToJson(
      this,
    );
  }
}

abstract class _ContactBookPreview implements ContactBookPreview {
  const factory _ContactBookPreview(
      {required final DateTime date,
      required final String dayOfWeek,
      required final String title,
      required final String classType,
      required final String teacher,
      required final bool isSigned,
      required final PreviewSummary summary}) = _$ContactBookPreviewImpl;

  factory _ContactBookPreview.fromJson(Map<String, dynamic> json) =
      _$ContactBookPreviewImpl.fromJson;

  @override
  DateTime get date;
  @override
  String get dayOfWeek;
  @override
  String get title;
  @override
  String get classType;
  @override
  String get teacher;
  @override
  bool get isSigned;
  @override
  PreviewSummary get summary;

  /// Create a copy of ContactBookPreview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactBookPreviewImplCopyWith<_$ContactBookPreviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PreviewSummary _$PreviewSummaryFromJson(Map<String, dynamic> json) {
  return _PreviewSummary.fromJson(json);
}

/// @nodoc
mixin _$PreviewSummary {
  bool get hasHomework => throw _privateConstructorUsedError;
  bool get hasAnnouncement => throw _privateConstructorUsedError;
  List<String> get subjects => throw _privateConstructorUsedError;
  int get imageCount => throw _privateConstructorUsedError;

  /// Serializes this PreviewSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PreviewSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreviewSummaryCopyWith<PreviewSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviewSummaryCopyWith<$Res> {
  factory $PreviewSummaryCopyWith(
          PreviewSummary value, $Res Function(PreviewSummary) then) =
      _$PreviewSummaryCopyWithImpl<$Res, PreviewSummary>;
  @useResult
  $Res call(
      {bool hasHomework,
      bool hasAnnouncement,
      List<String> subjects,
      int imageCount});
}

/// @nodoc
class _$PreviewSummaryCopyWithImpl<$Res, $Val extends PreviewSummary>
    implements $PreviewSummaryCopyWith<$Res> {
  _$PreviewSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreviewSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasHomework = null,
    Object? hasAnnouncement = null,
    Object? subjects = null,
    Object? imageCount = null,
  }) {
    return _then(_value.copyWith(
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
      imageCount: null == imageCount
          ? _value.imageCount
          : imageCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreviewSummaryImplCopyWith<$Res>
    implements $PreviewSummaryCopyWith<$Res> {
  factory _$$PreviewSummaryImplCopyWith(_$PreviewSummaryImpl value,
          $Res Function(_$PreviewSummaryImpl) then) =
      __$$PreviewSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool hasHomework,
      bool hasAnnouncement,
      List<String> subjects,
      int imageCount});
}

/// @nodoc
class __$$PreviewSummaryImplCopyWithImpl<$Res>
    extends _$PreviewSummaryCopyWithImpl<$Res, _$PreviewSummaryImpl>
    implements _$$PreviewSummaryImplCopyWith<$Res> {
  __$$PreviewSummaryImplCopyWithImpl(
      _$PreviewSummaryImpl _value, $Res Function(_$PreviewSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreviewSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasHomework = null,
    Object? hasAnnouncement = null,
    Object? subjects = null,
    Object? imageCount = null,
  }) {
    return _then(_$PreviewSummaryImpl(
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
      imageCount: null == imageCount
          ? _value.imageCount
          : imageCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreviewSummaryImpl implements _PreviewSummary {
  const _$PreviewSummaryImpl(
      {required this.hasHomework,
      required this.hasAnnouncement,
      required final List<String> subjects,
      required this.imageCount})
      : _subjects = subjects;

  factory _$PreviewSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreviewSummaryImplFromJson(json);

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
  final int imageCount;

  @override
  String toString() {
    return 'PreviewSummary(hasHomework: $hasHomework, hasAnnouncement: $hasAnnouncement, subjects: $subjects, imageCount: $imageCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviewSummaryImpl &&
            (identical(other.hasHomework, hasHomework) ||
                other.hasHomework == hasHomework) &&
            (identical(other.hasAnnouncement, hasAnnouncement) ||
                other.hasAnnouncement == hasAnnouncement) &&
            const DeepCollectionEquality().equals(other._subjects, _subjects) &&
            (identical(other.imageCount, imageCount) ||
                other.imageCount == imageCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hasHomework, hasAnnouncement,
      const DeepCollectionEquality().hash(_subjects), imageCount);

  /// Create a copy of PreviewSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreviewSummaryImplCopyWith<_$PreviewSummaryImpl> get copyWith =>
      __$$PreviewSummaryImplCopyWithImpl<_$PreviewSummaryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreviewSummaryImplToJson(
      this,
    );
  }
}

abstract class _PreviewSummary implements PreviewSummary {
  const factory _PreviewSummary(
      {required final bool hasHomework,
      required final bool hasAnnouncement,
      required final List<String> subjects,
      required final int imageCount}) = _$PreviewSummaryImpl;

  factory _PreviewSummary.fromJson(Map<String, dynamic> json) =
      _$PreviewSummaryImpl.fromJson;

  @override
  bool get hasHomework;
  @override
  bool get hasAnnouncement;
  @override
  List<String> get subjects;
  @override
  int get imageCount;

  /// Create a copy of PreviewSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreviewSummaryImplCopyWith<_$PreviewSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
