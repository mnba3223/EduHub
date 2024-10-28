// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'homework.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Homework _$HomeworkFromJson(Map<String, dynamic> json) {
  return _Homework.fromJson(json);
}

/// @nodoc
mixin _$Homework {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get dueDate => throw _privateConstructorUsedError;
  String get courseId => throw _privateConstructorUsedError;
  String get courseName => throw _privateConstructorUsedError;
  HomeworkStatus get status =>
      throw _privateConstructorUsedError; // add  create at
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get submitContent => throw _privateConstructorUsedError;
  List<String>? get attachmentUrls => throw _privateConstructorUsedError;
  DateTime? get submitDate => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
  String? get teacherComment => throw _privateConstructorUsedError;

  /// Serializes this Homework to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Homework
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeworkCopyWith<Homework> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeworkCopyWith<$Res> {
  factory $HomeworkCopyWith(Homework value, $Res Function(Homework) then) =
      _$HomeworkCopyWithImpl<$Res, Homework>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime dueDate,
      String courseId,
      String courseName,
      HomeworkStatus status,
      DateTime? createdAt,
      String? submitContent,
      List<String>? attachmentUrls,
      DateTime? submitDate,
      int? score,
      String? teacherComment});
}

/// @nodoc
class _$HomeworkCopyWithImpl<$Res, $Val extends Homework>
    implements $HomeworkCopyWith<$Res> {
  _$HomeworkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Homework
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? dueDate = null,
    Object? courseId = null,
    Object? courseName = null,
    Object? status = null,
    Object? createdAt = freezed,
    Object? submitContent = freezed,
    Object? attachmentUrls = freezed,
    Object? submitDate = freezed,
    Object? score = freezed,
    Object? teacherComment = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeworkStatus,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      submitContent: freezed == submitContent
          ? _value.submitContent
          : submitContent // ignore: cast_nullable_to_non_nullable
              as String?,
      attachmentUrls: freezed == attachmentUrls
          ? _value.attachmentUrls
          : attachmentUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      submitDate: freezed == submitDate
          ? _value.submitDate
          : submitDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      teacherComment: freezed == teacherComment
          ? _value.teacherComment
          : teacherComment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeworkImplCopyWith<$Res>
    implements $HomeworkCopyWith<$Res> {
  factory _$$HomeworkImplCopyWith(
          _$HomeworkImpl value, $Res Function(_$HomeworkImpl) then) =
      __$$HomeworkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime dueDate,
      String courseId,
      String courseName,
      HomeworkStatus status,
      DateTime? createdAt,
      String? submitContent,
      List<String>? attachmentUrls,
      DateTime? submitDate,
      int? score,
      String? teacherComment});
}

/// @nodoc
class __$$HomeworkImplCopyWithImpl<$Res>
    extends _$HomeworkCopyWithImpl<$Res, _$HomeworkImpl>
    implements _$$HomeworkImplCopyWith<$Res> {
  __$$HomeworkImplCopyWithImpl(
      _$HomeworkImpl _value, $Res Function(_$HomeworkImpl) _then)
      : super(_value, _then);

  /// Create a copy of Homework
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? dueDate = null,
    Object? courseId = null,
    Object? courseName = null,
    Object? status = null,
    Object? createdAt = freezed,
    Object? submitContent = freezed,
    Object? attachmentUrls = freezed,
    Object? submitDate = freezed,
    Object? score = freezed,
    Object? teacherComment = freezed,
  }) {
    return _then(_$HomeworkImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeworkStatus,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      submitContent: freezed == submitContent
          ? _value.submitContent
          : submitContent // ignore: cast_nullable_to_non_nullable
              as String?,
      attachmentUrls: freezed == attachmentUrls
          ? _value._attachmentUrls
          : attachmentUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      submitDate: freezed == submitDate
          ? _value.submitDate
          : submitDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      teacherComment: freezed == teacherComment
          ? _value.teacherComment
          : teacherComment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeworkImpl implements _Homework {
  const _$HomeworkImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.dueDate,
      required this.courseId,
      required this.courseName,
      required this.status,
      this.createdAt,
      this.submitContent,
      final List<String>? attachmentUrls,
      this.submitDate,
      this.score,
      this.teacherComment})
      : _attachmentUrls = attachmentUrls;

  factory _$HomeworkImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeworkImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime dueDate;
  @override
  final String courseId;
  @override
  final String courseName;
  @override
  final HomeworkStatus status;
// add  create at
  @override
  final DateTime? createdAt;
  @override
  final String? submitContent;
  final List<String>? _attachmentUrls;
  @override
  List<String>? get attachmentUrls {
    final value = _attachmentUrls;
    if (value == null) return null;
    if (_attachmentUrls is EqualUnmodifiableListView) return _attachmentUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? submitDate;
  @override
  final int? score;
  @override
  final String? teacherComment;

  @override
  String toString() {
    return 'Homework(id: $id, title: $title, description: $description, dueDate: $dueDate, courseId: $courseId, courseName: $courseName, status: $status, createdAt: $createdAt, submitContent: $submitContent, attachmentUrls: $attachmentUrls, submitDate: $submitDate, score: $score, teacherComment: $teacherComment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeworkImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.submitContent, submitContent) ||
                other.submitContent == submitContent) &&
            const DeepCollectionEquality()
                .equals(other._attachmentUrls, _attachmentUrls) &&
            (identical(other.submitDate, submitDate) ||
                other.submitDate == submitDate) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.teacherComment, teacherComment) ||
                other.teacherComment == teacherComment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      dueDate,
      courseId,
      courseName,
      status,
      createdAt,
      submitContent,
      const DeepCollectionEquality().hash(_attachmentUrls),
      submitDate,
      score,
      teacherComment);

  /// Create a copy of Homework
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeworkImplCopyWith<_$HomeworkImpl> get copyWith =>
      __$$HomeworkImplCopyWithImpl<_$HomeworkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeworkImplToJson(
      this,
    );
  }
}

abstract class _Homework implements Homework {
  const factory _Homework(
      {required final String id,
      required final String title,
      required final String description,
      required final DateTime dueDate,
      required final String courseId,
      required final String courseName,
      required final HomeworkStatus status,
      final DateTime? createdAt,
      final String? submitContent,
      final List<String>? attachmentUrls,
      final DateTime? submitDate,
      final int? score,
      final String? teacherComment}) = _$HomeworkImpl;

  factory _Homework.fromJson(Map<String, dynamic> json) =
      _$HomeworkImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get dueDate;
  @override
  String get courseId;
  @override
  String get courseName;
  @override
  HomeworkStatus get status; // add  create at
  @override
  DateTime? get createdAt;
  @override
  String? get submitContent;
  @override
  List<String>? get attachmentUrls;
  @override
  DateTime? get submitDate;
  @override
  int? get score;
  @override
  String? get teacherComment;

  /// Create a copy of Homework
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeworkImplCopyWith<_$HomeworkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeworkListResponse _$HomeworkListResponseFromJson(Map<String, dynamic> json) {
  return _HomeworkListResponse.fromJson(json);
}

/// @nodoc
mixin _$HomeworkListResponse {
  List<Homework> get data => throw _privateConstructorUsedError;

  /// Serializes this HomeworkListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeworkListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeworkListResponseCopyWith<HomeworkListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeworkListResponseCopyWith<$Res> {
  factory $HomeworkListResponseCopyWith(HomeworkListResponse value,
          $Res Function(HomeworkListResponse) then) =
      _$HomeworkListResponseCopyWithImpl<$Res, HomeworkListResponse>;
  @useResult
  $Res call({List<Homework> data});
}

/// @nodoc
class _$HomeworkListResponseCopyWithImpl<$Res,
        $Val extends HomeworkListResponse>
    implements $HomeworkListResponseCopyWith<$Res> {
  _$HomeworkListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeworkListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Homework>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeworkListResponseImplCopyWith<$Res>
    implements $HomeworkListResponseCopyWith<$Res> {
  factory _$$HomeworkListResponseImplCopyWith(_$HomeworkListResponseImpl value,
          $Res Function(_$HomeworkListResponseImpl) then) =
      __$$HomeworkListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Homework> data});
}

/// @nodoc
class __$$HomeworkListResponseImplCopyWithImpl<$Res>
    extends _$HomeworkListResponseCopyWithImpl<$Res, _$HomeworkListResponseImpl>
    implements _$$HomeworkListResponseImplCopyWith<$Res> {
  __$$HomeworkListResponseImplCopyWithImpl(_$HomeworkListResponseImpl _value,
      $Res Function(_$HomeworkListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeworkListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$HomeworkListResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Homework>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeworkListResponseImpl implements _HomeworkListResponse {
  const _$HomeworkListResponseImpl({required final List<Homework> data})
      : _data = data;

  factory _$HomeworkListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeworkListResponseImplFromJson(json);

  final List<Homework> _data;
  @override
  List<Homework> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'HomeworkListResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeworkListResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of HomeworkListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeworkListResponseImplCopyWith<_$HomeworkListResponseImpl>
      get copyWith =>
          __$$HomeworkListResponseImplCopyWithImpl<_$HomeworkListResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeworkListResponseImplToJson(
      this,
    );
  }
}

abstract class _HomeworkListResponse implements HomeworkListResponse {
  const factory _HomeworkListResponse({required final List<Homework> data}) =
      _$HomeworkListResponseImpl;

  factory _HomeworkListResponse.fromJson(Map<String, dynamic> json) =
      _$HomeworkListResponseImpl.fromJson;

  @override
  List<Homework> get data;

  /// Create a copy of HomeworkListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeworkListResponseImplCopyWith<_$HomeworkListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HomeworkDetailResponse _$HomeworkDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _HomeworkDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$HomeworkDetailResponse {
  Homework get data => throw _privateConstructorUsedError;

  /// Serializes this HomeworkDetailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeworkDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeworkDetailResponseCopyWith<HomeworkDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeworkDetailResponseCopyWith<$Res> {
  factory $HomeworkDetailResponseCopyWith(HomeworkDetailResponse value,
          $Res Function(HomeworkDetailResponse) then) =
      _$HomeworkDetailResponseCopyWithImpl<$Res, HomeworkDetailResponse>;
  @useResult
  $Res call({Homework data});

  $HomeworkCopyWith<$Res> get data;
}

/// @nodoc
class _$HomeworkDetailResponseCopyWithImpl<$Res,
        $Val extends HomeworkDetailResponse>
    implements $HomeworkDetailResponseCopyWith<$Res> {
  _$HomeworkDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeworkDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Homework,
    ) as $Val);
  }

  /// Create a copy of HomeworkDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomeworkCopyWith<$Res> get data {
    return $HomeworkCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeworkDetailResponseImplCopyWith<$Res>
    implements $HomeworkDetailResponseCopyWith<$Res> {
  factory _$$HomeworkDetailResponseImplCopyWith(
          _$HomeworkDetailResponseImpl value,
          $Res Function(_$HomeworkDetailResponseImpl) then) =
      __$$HomeworkDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Homework data});

  @override
  $HomeworkCopyWith<$Res> get data;
}

/// @nodoc
class __$$HomeworkDetailResponseImplCopyWithImpl<$Res>
    extends _$HomeworkDetailResponseCopyWithImpl<$Res,
        _$HomeworkDetailResponseImpl>
    implements _$$HomeworkDetailResponseImplCopyWith<$Res> {
  __$$HomeworkDetailResponseImplCopyWithImpl(
      _$HomeworkDetailResponseImpl _value,
      $Res Function(_$HomeworkDetailResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeworkDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$HomeworkDetailResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Homework,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeworkDetailResponseImpl implements _HomeworkDetailResponse {
  const _$HomeworkDetailResponseImpl({required this.data});

  factory _$HomeworkDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeworkDetailResponseImplFromJson(json);

  @override
  final Homework data;

  @override
  String toString() {
    return 'HomeworkDetailResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeworkDetailResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of HomeworkDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeworkDetailResponseImplCopyWith<_$HomeworkDetailResponseImpl>
      get copyWith => __$$HomeworkDetailResponseImplCopyWithImpl<
          _$HomeworkDetailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeworkDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _HomeworkDetailResponse implements HomeworkDetailResponse {
  const factory _HomeworkDetailResponse({required final Homework data}) =
      _$HomeworkDetailResponseImpl;

  factory _HomeworkDetailResponse.fromJson(Map<String, dynamic> json) =
      _$HomeworkDetailResponseImpl.fromJson;

  @override
  Homework get data;

  /// Create a copy of HomeworkDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeworkDetailResponseImplCopyWith<_$HomeworkDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
