// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_book_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContactBookDetail _$ContactBookDetailFromJson(Map<String, dynamic> json) {
  return _ContactBookDetail.fromJson(json);
}

/// @nodoc
mixin _$ContactBookDetail {
  BasicInfo get basicInfo => throw _privateConstructorUsedError;
  List<ContentItem> get contents => throw _privateConstructorUsedError;
  List<Announcement> get announcements => throw _privateConstructorUsedError;
  SignatureStatus get signatureStatus => throw _privateConstructorUsedError;

  /// Serializes this ContactBookDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContactBookDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactBookDetailCopyWith<ContactBookDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactBookDetailCopyWith<$Res> {
  factory $ContactBookDetailCopyWith(
          ContactBookDetail value, $Res Function(ContactBookDetail) then) =
      _$ContactBookDetailCopyWithImpl<$Res, ContactBookDetail>;
  @useResult
  $Res call(
      {BasicInfo basicInfo,
      List<ContentItem> contents,
      List<Announcement> announcements,
      SignatureStatus signatureStatus});

  $BasicInfoCopyWith<$Res> get basicInfo;
  $SignatureStatusCopyWith<$Res> get signatureStatus;
}

/// @nodoc
class _$ContactBookDetailCopyWithImpl<$Res, $Val extends ContactBookDetail>
    implements $ContactBookDetailCopyWith<$Res> {
  _$ContactBookDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactBookDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basicInfo = null,
    Object? contents = null,
    Object? announcements = null,
    Object? signatureStatus = null,
  }) {
    return _then(_value.copyWith(
      basicInfo: null == basicInfo
          ? _value.basicInfo
          : basicInfo // ignore: cast_nullable_to_non_nullable
              as BasicInfo,
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<ContentItem>,
      announcements: null == announcements
          ? _value.announcements
          : announcements // ignore: cast_nullable_to_non_nullable
              as List<Announcement>,
      signatureStatus: null == signatureStatus
          ? _value.signatureStatus
          : signatureStatus // ignore: cast_nullable_to_non_nullable
              as SignatureStatus,
    ) as $Val);
  }

  /// Create a copy of ContactBookDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BasicInfoCopyWith<$Res> get basicInfo {
    return $BasicInfoCopyWith<$Res>(_value.basicInfo, (value) {
      return _then(_value.copyWith(basicInfo: value) as $Val);
    });
  }

  /// Create a copy of ContactBookDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SignatureStatusCopyWith<$Res> get signatureStatus {
    return $SignatureStatusCopyWith<$Res>(_value.signatureStatus, (value) {
      return _then(_value.copyWith(signatureStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContactBookDetailImplCopyWith<$Res>
    implements $ContactBookDetailCopyWith<$Res> {
  factory _$$ContactBookDetailImplCopyWith(_$ContactBookDetailImpl value,
          $Res Function(_$ContactBookDetailImpl) then) =
      __$$ContactBookDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BasicInfo basicInfo,
      List<ContentItem> contents,
      List<Announcement> announcements,
      SignatureStatus signatureStatus});

  @override
  $BasicInfoCopyWith<$Res> get basicInfo;
  @override
  $SignatureStatusCopyWith<$Res> get signatureStatus;
}

/// @nodoc
class __$$ContactBookDetailImplCopyWithImpl<$Res>
    extends _$ContactBookDetailCopyWithImpl<$Res, _$ContactBookDetailImpl>
    implements _$$ContactBookDetailImplCopyWith<$Res> {
  __$$ContactBookDetailImplCopyWithImpl(_$ContactBookDetailImpl _value,
      $Res Function(_$ContactBookDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactBookDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basicInfo = null,
    Object? contents = null,
    Object? announcements = null,
    Object? signatureStatus = null,
  }) {
    return _then(_$ContactBookDetailImpl(
      basicInfo: null == basicInfo
          ? _value.basicInfo
          : basicInfo // ignore: cast_nullable_to_non_nullable
              as BasicInfo,
      contents: null == contents
          ? _value._contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<ContentItem>,
      announcements: null == announcements
          ? _value._announcements
          : announcements // ignore: cast_nullable_to_non_nullable
              as List<Announcement>,
      signatureStatus: null == signatureStatus
          ? _value.signatureStatus
          : signatureStatus // ignore: cast_nullable_to_non_nullable
              as SignatureStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactBookDetailImpl implements _ContactBookDetail {
  const _$ContactBookDetailImpl(
      {required this.basicInfo,
      required final List<ContentItem> contents,
      required final List<Announcement> announcements,
      required this.signatureStatus})
      : _contents = contents,
        _announcements = announcements;

  factory _$ContactBookDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactBookDetailImplFromJson(json);

  @override
  final BasicInfo basicInfo;
  final List<ContentItem> _contents;
  @override
  List<ContentItem> get contents {
    if (_contents is EqualUnmodifiableListView) return _contents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contents);
  }

  final List<Announcement> _announcements;
  @override
  List<Announcement> get announcements {
    if (_announcements is EqualUnmodifiableListView) return _announcements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_announcements);
  }

  @override
  final SignatureStatus signatureStatus;

  @override
  String toString() {
    return 'ContactBookDetail(basicInfo: $basicInfo, contents: $contents, announcements: $announcements, signatureStatus: $signatureStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactBookDetailImpl &&
            (identical(other.basicInfo, basicInfo) ||
                other.basicInfo == basicInfo) &&
            const DeepCollectionEquality().equals(other._contents, _contents) &&
            const DeepCollectionEquality()
                .equals(other._announcements, _announcements) &&
            (identical(other.signatureStatus, signatureStatus) ||
                other.signatureStatus == signatureStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      basicInfo,
      const DeepCollectionEquality().hash(_contents),
      const DeepCollectionEquality().hash(_announcements),
      signatureStatus);

  /// Create a copy of ContactBookDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactBookDetailImplCopyWith<_$ContactBookDetailImpl> get copyWith =>
      __$$ContactBookDetailImplCopyWithImpl<_$ContactBookDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactBookDetailImplToJson(
      this,
    );
  }
}

abstract class _ContactBookDetail implements ContactBookDetail {
  const factory _ContactBookDetail(
          {required final BasicInfo basicInfo,
          required final List<ContentItem> contents,
          required final List<Announcement> announcements,
          required final SignatureStatus signatureStatus}) =
      _$ContactBookDetailImpl;

  factory _ContactBookDetail.fromJson(Map<String, dynamic> json) =
      _$ContactBookDetailImpl.fromJson;

  @override
  BasicInfo get basicInfo;
  @override
  List<ContentItem> get contents;
  @override
  List<Announcement> get announcements;
  @override
  SignatureStatus get signatureStatus;

  /// Create a copy of ContactBookDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactBookDetailImplCopyWith<_$ContactBookDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BasicInfo _$BasicInfoFromJson(Map<String, dynamic> json) {
  return _BasicInfo.fromJson(json);
}

/// @nodoc
mixin _$BasicInfo {
  DateTime get date => throw _privateConstructorUsedError;
  String get dayOfWeek => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get classType => throw _privateConstructorUsedError;
  String get teacher => throw _privateConstructorUsedError;
  DateTime get postTime => throw _privateConstructorUsedError;

  /// Serializes this BasicInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BasicInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BasicInfoCopyWith<BasicInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicInfoCopyWith<$Res> {
  factory $BasicInfoCopyWith(BasicInfo value, $Res Function(BasicInfo) then) =
      _$BasicInfoCopyWithImpl<$Res, BasicInfo>;
  @useResult
  $Res call(
      {DateTime date,
      String dayOfWeek,
      String title,
      String classType,
      String teacher,
      DateTime postTime});
}

/// @nodoc
class _$BasicInfoCopyWithImpl<$Res, $Val extends BasicInfo>
    implements $BasicInfoCopyWith<$Res> {
  _$BasicInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BasicInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? dayOfWeek = null,
    Object? title = null,
    Object? classType = null,
    Object? teacher = null,
    Object? postTime = null,
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
      postTime: null == postTime
          ? _value.postTime
          : postTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasicInfoImplCopyWith<$Res>
    implements $BasicInfoCopyWith<$Res> {
  factory _$$BasicInfoImplCopyWith(
          _$BasicInfoImpl value, $Res Function(_$BasicInfoImpl) then) =
      __$$BasicInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      String dayOfWeek,
      String title,
      String classType,
      String teacher,
      DateTime postTime});
}

/// @nodoc
class __$$BasicInfoImplCopyWithImpl<$Res>
    extends _$BasicInfoCopyWithImpl<$Res, _$BasicInfoImpl>
    implements _$$BasicInfoImplCopyWith<$Res> {
  __$$BasicInfoImplCopyWithImpl(
      _$BasicInfoImpl _value, $Res Function(_$BasicInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BasicInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? dayOfWeek = null,
    Object? title = null,
    Object? classType = null,
    Object? teacher = null,
    Object? postTime = null,
  }) {
    return _then(_$BasicInfoImpl(
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
      postTime: null == postTime
          ? _value.postTime
          : postTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasicInfoImpl implements _BasicInfo {
  const _$BasicInfoImpl(
      {required this.date,
      required this.dayOfWeek,
      required this.title,
      required this.classType,
      required this.teacher,
      required this.postTime});

  factory _$BasicInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasicInfoImplFromJson(json);

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
  final DateTime postTime;

  @override
  String toString() {
    return 'BasicInfo(date: $date, dayOfWeek: $dayOfWeek, title: $title, classType: $classType, teacher: $teacher, postTime: $postTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasicInfoImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.classType, classType) ||
                other.classType == classType) &&
            (identical(other.teacher, teacher) || other.teacher == teacher) &&
            (identical(other.postTime, postTime) ||
                other.postTime == postTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, dayOfWeek, title, classType, teacher, postTime);

  /// Create a copy of BasicInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BasicInfoImplCopyWith<_$BasicInfoImpl> get copyWith =>
      __$$BasicInfoImplCopyWithImpl<_$BasicInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasicInfoImplToJson(
      this,
    );
  }
}

abstract class _BasicInfo implements BasicInfo {
  const factory _BasicInfo(
      {required final DateTime date,
      required final String dayOfWeek,
      required final String title,
      required final String classType,
      required final String teacher,
      required final DateTime postTime}) = _$BasicInfoImpl;

  factory _BasicInfo.fromJson(Map<String, dynamic> json) =
      _$BasicInfoImpl.fromJson;

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
  DateTime get postTime;

  /// Create a copy of BasicInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BasicInfoImplCopyWith<_$BasicInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContentItem _$ContentItemFromJson(Map<String, dynamic> json) {
  return _ContentItem.fromJson(json);
}

/// @nodoc
mixin _$ContentItem {
  String get type => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String get teacher => throw _privateConstructorUsedError;
  List<ContentDetail> get items => throw _privateConstructorUsedError;

  /// Serializes this ContentItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContentItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentItemCopyWith<ContentItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentItemCopyWith<$Res> {
  factory $ContentItemCopyWith(
          ContentItem value, $Res Function(ContentItem) then) =
      _$ContentItemCopyWithImpl<$Res, ContentItem>;
  @useResult
  $Res call(
      {String type, String subject, String teacher, List<ContentDetail> items});
}

/// @nodoc
class _$ContentItemCopyWithImpl<$Res, $Val extends ContentItem>
    implements $ContentItemCopyWith<$Res> {
  _$ContentItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? subject = null,
    Object? teacher = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ContentDetail>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentItemImplCopyWith<$Res>
    implements $ContentItemCopyWith<$Res> {
  factory _$$ContentItemImplCopyWith(
          _$ContentItemImpl value, $Res Function(_$ContentItemImpl) then) =
      __$$ContentItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type, String subject, String teacher, List<ContentDetail> items});
}

/// @nodoc
class __$$ContentItemImplCopyWithImpl<$Res>
    extends _$ContentItemCopyWithImpl<$Res, _$ContentItemImpl>
    implements _$$ContentItemImplCopyWith<$Res> {
  __$$ContentItemImplCopyWithImpl(
      _$ContentItemImpl _value, $Res Function(_$ContentItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? subject = null,
    Object? teacher = null,
    Object? items = null,
  }) {
    return _then(_$ContentItemImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ContentDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentItemImpl implements _ContentItem {
  const _$ContentItemImpl(
      {required this.type,
      required this.subject,
      this.teacher = '',
      required final List<ContentDetail> items})
      : _items = items;

  factory _$ContentItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentItemImplFromJson(json);

  @override
  final String type;
  @override
  final String subject;
  @override
  @JsonKey()
  final String teacher;
  final List<ContentDetail> _items;
  @override
  List<ContentDetail> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ContentItem(type: $type, subject: $subject, teacher: $teacher, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentItemImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.teacher, teacher) || other.teacher == teacher) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, subject, teacher,
      const DeepCollectionEquality().hash(_items));

  /// Create a copy of ContentItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentItemImplCopyWith<_$ContentItemImpl> get copyWith =>
      __$$ContentItemImplCopyWithImpl<_$ContentItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentItemImplToJson(
      this,
    );
  }
}

abstract class _ContentItem implements ContentItem {
  const factory _ContentItem(
      {required final String type,
      required final String subject,
      final String teacher,
      required final List<ContentDetail> items}) = _$ContentItemImpl;

  factory _ContentItem.fromJson(Map<String, dynamic> json) =
      _$ContentItemImpl.fromJson;

  @override
  String get type;
  @override
  String get subject;
  @override
  String get teacher;
  @override
  List<ContentDetail> get items;

  /// Create a copy of ContentItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentItemImplCopyWith<_$ContentItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContentDetail _$ContentDetailFromJson(Map<String, dynamic> json) {
  return _ContentDetail.fromJson(json);
}

/// @nodoc
mixin _$ContentDetail {
  String get type => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime? get dueDate => throw _privateConstructorUsedError;
  List<ImageItem>? get images => throw _privateConstructorUsedError;

  /// Serializes this ContentDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContentDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentDetailCopyWith<ContentDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentDetailCopyWith<$Res> {
  factory $ContentDetailCopyWith(
          ContentDetail value, $Res Function(ContentDetail) then) =
      _$ContentDetailCopyWithImpl<$Res, ContentDetail>;
  @useResult
  $Res call(
      {String type,
      String content,
      DateTime? dueDate,
      List<ImageItem>? images});
}

/// @nodoc
class _$ContentDetailCopyWithImpl<$Res, $Val extends ContentDetail>
    implements $ContentDetailCopyWith<$Res> {
  _$ContentDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? content = null,
    Object? dueDate = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentDetailImplCopyWith<$Res>
    implements $ContentDetailCopyWith<$Res> {
  factory _$$ContentDetailImplCopyWith(
          _$ContentDetailImpl value, $Res Function(_$ContentDetailImpl) then) =
      __$$ContentDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String content,
      DateTime? dueDate,
      List<ImageItem>? images});
}

/// @nodoc
class __$$ContentDetailImplCopyWithImpl<$Res>
    extends _$ContentDetailCopyWithImpl<$Res, _$ContentDetailImpl>
    implements _$$ContentDetailImplCopyWith<$Res> {
  __$$ContentDetailImplCopyWithImpl(
      _$ContentDetailImpl _value, $Res Function(_$ContentDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? content = null,
    Object? dueDate = freezed,
    Object? images = freezed,
  }) {
    return _then(_$ContentDetailImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentDetailImpl implements _ContentDetail {
  const _$ContentDetailImpl(
      {required this.type,
      required this.content,
      this.dueDate,
      final List<ImageItem>? images})
      : _images = images;

  factory _$ContentDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentDetailImplFromJson(json);

  @override
  final String type;
  @override
  final String content;
  @override
  final DateTime? dueDate;
  final List<ImageItem>? _images;
  @override
  List<ImageItem>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ContentDetail(type: $type, content: $content, dueDate: $dueDate, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentDetailImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, content, dueDate,
      const DeepCollectionEquality().hash(_images));

  /// Create a copy of ContentDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentDetailImplCopyWith<_$ContentDetailImpl> get copyWith =>
      __$$ContentDetailImplCopyWithImpl<_$ContentDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentDetailImplToJson(
      this,
    );
  }
}

abstract class _ContentDetail implements ContentDetail {
  const factory _ContentDetail(
      {required final String type,
      required final String content,
      final DateTime? dueDate,
      final List<ImageItem>? images}) = _$ContentDetailImpl;

  factory _ContentDetail.fromJson(Map<String, dynamic> json) =
      _$ContentDetailImpl.fromJson;

  @override
  String get type;
  @override
  String get content;
  @override
  DateTime? get dueDate;
  @override
  List<ImageItem>? get images;

  /// Create a copy of ContentDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentDetailImplCopyWith<_$ContentDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageItem _$ImageItemFromJson(Map<String, dynamic> json) {
  return _ImageItem.fromJson(json);
}

/// @nodoc
mixin _$ImageItem {
  String get url => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;

  /// Serializes this ImageItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageItemCopyWith<ImageItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageItemCopyWith<$Res> {
  factory $ImageItemCopyWith(ImageItem value, $Res Function(ImageItem) then) =
      _$ImageItemCopyWithImpl<$Res, ImageItem>;
  @useResult
  $Res call({String url, String thumbnail});
}

/// @nodoc
class _$ImageItemCopyWithImpl<$Res, $Val extends ImageItem>
    implements $ImageItemCopyWith<$Res> {
  _$ImageItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? thumbnail = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageItemImplCopyWith<$Res>
    implements $ImageItemCopyWith<$Res> {
  factory _$$ImageItemImplCopyWith(
          _$ImageItemImpl value, $Res Function(_$ImageItemImpl) then) =
      __$$ImageItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String thumbnail});
}

/// @nodoc
class __$$ImageItemImplCopyWithImpl<$Res>
    extends _$ImageItemCopyWithImpl<$Res, _$ImageItemImpl>
    implements _$$ImageItemImplCopyWith<$Res> {
  __$$ImageItemImplCopyWithImpl(
      _$ImageItemImpl _value, $Res Function(_$ImageItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? thumbnail = null,
  }) {
    return _then(_$ImageItemImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageItemImpl implements _ImageItem {
  const _$ImageItemImpl({required this.url, required this.thumbnail});

  factory _$ImageItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageItemImplFromJson(json);

  @override
  final String url;
  @override
  final String thumbnail;

  @override
  String toString() {
    return 'ImageItem(url: $url, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageItemImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, thumbnail);

  /// Create a copy of ImageItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageItemImplCopyWith<_$ImageItemImpl> get copyWith =>
      __$$ImageItemImplCopyWithImpl<_$ImageItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageItemImplToJson(
      this,
    );
  }
}

abstract class _ImageItem implements ImageItem {
  const factory _ImageItem(
      {required final String url,
      required final String thumbnail}) = _$ImageItemImpl;

  factory _ImageItem.fromJson(Map<String, dynamic> json) =
      _$ImageItemImpl.fromJson;

  @override
  String get url;
  @override
  String get thumbnail;

  /// Create a copy of ImageItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageItemImplCopyWith<_$ImageItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Announcement _$AnnouncementFromJson(Map<String, dynamic> json) {
  return _Announcement.fromJson(json);
}

/// @nodoc
mixin _$Announcement {
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  /// Serializes this Announcement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Announcement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnnouncementCopyWith<Announcement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementCopyWith<$Res> {
  factory $AnnouncementCopyWith(
          Announcement value, $Res Function(Announcement) then) =
      _$AnnouncementCopyWithImpl<$Res, Announcement>;
  @useResult
  $Res call({String type, String title, String content, String? link});
}

/// @nodoc
class _$AnnouncementCopyWithImpl<$Res, $Val extends Announcement>
    implements $AnnouncementCopyWith<$Res> {
  _$AnnouncementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Announcement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? content = null,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnnouncementImplCopyWith<$Res>
    implements $AnnouncementCopyWith<$Res> {
  factory _$$AnnouncementImplCopyWith(
          _$AnnouncementImpl value, $Res Function(_$AnnouncementImpl) then) =
      __$$AnnouncementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String title, String content, String? link});
}

/// @nodoc
class __$$AnnouncementImplCopyWithImpl<$Res>
    extends _$AnnouncementCopyWithImpl<$Res, _$AnnouncementImpl>
    implements _$$AnnouncementImplCopyWith<$Res> {
  __$$AnnouncementImplCopyWithImpl(
      _$AnnouncementImpl _value, $Res Function(_$AnnouncementImpl) _then)
      : super(_value, _then);

  /// Create a copy of Announcement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? content = null,
    Object? link = freezed,
  }) {
    return _then(_$AnnouncementImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnnouncementImpl implements _Announcement {
  const _$AnnouncementImpl(
      {required this.type,
      required this.title,
      required this.content,
      this.link});

  factory _$AnnouncementImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnnouncementImplFromJson(json);

  @override
  final String type;
  @override
  final String title;
  @override
  final String content;
  @override
  final String? link;

  @override
  String toString() {
    return 'Announcement(type: $type, title: $title, content: $content, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnouncementImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, title, content, link);

  /// Create a copy of Announcement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnouncementImplCopyWith<_$AnnouncementImpl> get copyWith =>
      __$$AnnouncementImplCopyWithImpl<_$AnnouncementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnouncementImplToJson(
      this,
    );
  }
}

abstract class _Announcement implements Announcement {
  const factory _Announcement(
      {required final String type,
      required final String title,
      required final String content,
      final String? link}) = _$AnnouncementImpl;

  factory _Announcement.fromJson(Map<String, dynamic> json) =
      _$AnnouncementImpl.fromJson;

  @override
  String get type;
  @override
  String get title;
  @override
  String get content;
  @override
  String? get link;

  /// Create a copy of Announcement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnnouncementImplCopyWith<_$AnnouncementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SignatureStatus _$SignatureStatusFromJson(Map<String, dynamic> json) {
  return _SignatureStatus.fromJson(json);
}

/// @nodoc
mixin _$SignatureStatus {
  bool get isSigned => throw _privateConstructorUsedError;
  DateTime? get signTime => throw _privateConstructorUsedError;
  List<String> get comments => throw _privateConstructorUsedError;

  /// Serializes this SignatureStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignatureStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignatureStatusCopyWith<SignatureStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignatureStatusCopyWith<$Res> {
  factory $SignatureStatusCopyWith(
          SignatureStatus value, $Res Function(SignatureStatus) then) =
      _$SignatureStatusCopyWithImpl<$Res, SignatureStatus>;
  @useResult
  $Res call({bool isSigned, DateTime? signTime, List<String> comments});
}

/// @nodoc
class _$SignatureStatusCopyWithImpl<$Res, $Val extends SignatureStatus>
    implements $SignatureStatusCopyWith<$Res> {
  _$SignatureStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignatureStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSigned = null,
    Object? signTime = freezed,
    Object? comments = null,
  }) {
    return _then(_value.copyWith(
      isSigned: null == isSigned
          ? _value.isSigned
          : isSigned // ignore: cast_nullable_to_non_nullable
              as bool,
      signTime: freezed == signTime
          ? _value.signTime
          : signTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignatureStatusImplCopyWith<$Res>
    implements $SignatureStatusCopyWith<$Res> {
  factory _$$SignatureStatusImplCopyWith(_$SignatureStatusImpl value,
          $Res Function(_$SignatureStatusImpl) then) =
      __$$SignatureStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSigned, DateTime? signTime, List<String> comments});
}

/// @nodoc
class __$$SignatureStatusImplCopyWithImpl<$Res>
    extends _$SignatureStatusCopyWithImpl<$Res, _$SignatureStatusImpl>
    implements _$$SignatureStatusImplCopyWith<$Res> {
  __$$SignatureStatusImplCopyWithImpl(
      _$SignatureStatusImpl _value, $Res Function(_$SignatureStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignatureStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSigned = null,
    Object? signTime = freezed,
    Object? comments = null,
  }) {
    return _then(_$SignatureStatusImpl(
      isSigned: null == isSigned
          ? _value.isSigned
          : isSigned // ignore: cast_nullable_to_non_nullable
              as bool,
      signTime: freezed == signTime
          ? _value.signTime
          : signTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignatureStatusImpl implements _SignatureStatus {
  const _$SignatureStatusImpl(
      {required this.isSigned,
      this.signTime,
      final List<String> comments = const []})
      : _comments = comments;

  factory _$SignatureStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignatureStatusImplFromJson(json);

  @override
  final bool isSigned;
  @override
  final DateTime? signTime;
  final List<String> _comments;
  @override
  @JsonKey()
  List<String> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'SignatureStatus(isSigned: $isSigned, signTime: $signTime, comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignatureStatusImpl &&
            (identical(other.isSigned, isSigned) ||
                other.isSigned == isSigned) &&
            (identical(other.signTime, signTime) ||
                other.signTime == signTime) &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isSigned, signTime,
      const DeepCollectionEquality().hash(_comments));

  /// Create a copy of SignatureStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignatureStatusImplCopyWith<_$SignatureStatusImpl> get copyWith =>
      __$$SignatureStatusImplCopyWithImpl<_$SignatureStatusImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignatureStatusImplToJson(
      this,
    );
  }
}

abstract class _SignatureStatus implements SignatureStatus {
  const factory _SignatureStatus(
      {required final bool isSigned,
      final DateTime? signTime,
      final List<String> comments}) = _$SignatureStatusImpl;

  factory _SignatureStatus.fromJson(Map<String, dynamic> json) =
      _$SignatureStatusImpl.fromJson;

  @override
  bool get isSigned;
  @override
  DateTime? get signTime;
  @override
  List<String> get comments;

  /// Create a copy of SignatureStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignatureStatusImplCopyWith<_$SignatureStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
