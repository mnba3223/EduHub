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
  @JsonKey(name: 'submission_id')
  int get submissionId =>
      throw _privateConstructorUsedError; // 改名為更明確的 submissionId
  @JsonKey(name: 'homework_id')
  int get id => throw _privateConstructorUsedError; // 添加 homework_id
  @JsonKey(name: 'student_id')
  int get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'homework_desciption')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'homework_start_time')
  DateTime get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'homework_end_time')
  DateTime get dueDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_title')
  String get courseName => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_description')
  String? get courseDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
  HomeworkStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'submission_time')
  DateTime? get submitDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_file')
  String? get attachmentUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment')
  String? get teacherComment => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  int? get score => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'submission_id') int submissionId,
      @JsonKey(name: 'homework_id') int id,
      @JsonKey(name: 'student_id') int studentId,
      @JsonKey(name: 'homework_desciption') String description,
      @JsonKey(name: 'homework_start_time') DateTime startTime,
      @JsonKey(name: 'homework_end_time') DateTime dueDate,
      @JsonKey(name: 'lesson_title') String courseName,
      @JsonKey(name: 'lesson_description') String? courseDescription,
      @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
      HomeworkStatus status,
      @JsonKey(name: 'submission_time') DateTime? submitDate,
      @JsonKey(name: 'upload_file') String? attachmentUrl,
      @JsonKey(name: 'comment') String? teacherComment,
      @JsonKey(name: 'rating') int? score});
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
    Object? submissionId = null,
    Object? id = null,
    Object? studentId = null,
    Object? description = null,
    Object? startTime = null,
    Object? dueDate = null,
    Object? courseName = null,
    Object? courseDescription = freezed,
    Object? status = null,
    Object? submitDate = freezed,
    Object? attachmentUrl = freezed,
    Object? teacherComment = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      submissionId: null == submissionId
          ? _value.submissionId
          : submissionId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      courseDescription: freezed == courseDescription
          ? _value.courseDescription
          : courseDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeworkStatus,
      submitDate: freezed == submitDate
          ? _value.submitDate
          : submitDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      attachmentUrl: freezed == attachmentUrl
          ? _value.attachmentUrl
          : attachmentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      teacherComment: freezed == teacherComment
          ? _value.teacherComment
          : teacherComment // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {@JsonKey(name: 'submission_id') int submissionId,
      @JsonKey(name: 'homework_id') int id,
      @JsonKey(name: 'student_id') int studentId,
      @JsonKey(name: 'homework_desciption') String description,
      @JsonKey(name: 'homework_start_time') DateTime startTime,
      @JsonKey(name: 'homework_end_time') DateTime dueDate,
      @JsonKey(name: 'lesson_title') String courseName,
      @JsonKey(name: 'lesson_description') String? courseDescription,
      @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
      HomeworkStatus status,
      @JsonKey(name: 'submission_time') DateTime? submitDate,
      @JsonKey(name: 'upload_file') String? attachmentUrl,
      @JsonKey(name: 'comment') String? teacherComment,
      @JsonKey(name: 'rating') int? score});
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
    Object? submissionId = null,
    Object? id = null,
    Object? studentId = null,
    Object? description = null,
    Object? startTime = null,
    Object? dueDate = null,
    Object? courseName = null,
    Object? courseDescription = freezed,
    Object? status = null,
    Object? submitDate = freezed,
    Object? attachmentUrl = freezed,
    Object? teacherComment = freezed,
    Object? score = freezed,
  }) {
    return _then(_$HomeworkImpl(
      submissionId: null == submissionId
          ? _value.submissionId
          : submissionId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      courseDescription: freezed == courseDescription
          ? _value.courseDescription
          : courseDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeworkStatus,
      submitDate: freezed == submitDate
          ? _value.submitDate
          : submitDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      attachmentUrl: freezed == attachmentUrl
          ? _value.attachmentUrl
          : attachmentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      teacherComment: freezed == teacherComment
          ? _value.teacherComment
          : teacherComment // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeworkImpl implements _Homework {
  const _$HomeworkImpl(
      {@JsonKey(name: 'submission_id') required this.submissionId,
      @JsonKey(name: 'homework_id') required this.id,
      @JsonKey(name: 'student_id') required this.studentId,
      @JsonKey(name: 'homework_desciption') required this.description,
      @JsonKey(name: 'homework_start_time') required this.startTime,
      @JsonKey(name: 'homework_end_time') required this.dueDate,
      @JsonKey(name: 'lesson_title') required this.courseName,
      @JsonKey(name: 'lesson_description') this.courseDescription,
      @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
      required this.status,
      @JsonKey(name: 'submission_time') this.submitDate,
      @JsonKey(name: 'upload_file') this.attachmentUrl,
      @JsonKey(name: 'comment') this.teacherComment,
      @JsonKey(name: 'rating') this.score});

  factory _$HomeworkImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeworkImplFromJson(json);

  @override
  @JsonKey(name: 'submission_id')
  final int submissionId;
// 改名為更明確的 submissionId
  @override
  @JsonKey(name: 'homework_id')
  final int id;
// 添加 homework_id
  @override
  @JsonKey(name: 'student_id')
  final int studentId;
  @override
  @JsonKey(name: 'homework_desciption')
  final String description;
  @override
  @JsonKey(name: 'homework_start_time')
  final DateTime startTime;
  @override
  @JsonKey(name: 'homework_end_time')
  final DateTime dueDate;
  @override
  @JsonKey(name: 'lesson_title')
  final String courseName;
  @override
  @JsonKey(name: 'lesson_description')
  final String? courseDescription;
  @override
  @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
  final HomeworkStatus status;
  @override
  @JsonKey(name: 'submission_time')
  final DateTime? submitDate;
  @override
  @JsonKey(name: 'upload_file')
  final String? attachmentUrl;
  @override
  @JsonKey(name: 'comment')
  final String? teacherComment;
  @override
  @JsonKey(name: 'rating')
  final int? score;

  @override
  String toString() {
    return 'Homework(submissionId: $submissionId, id: $id, studentId: $studentId, description: $description, startTime: $startTime, dueDate: $dueDate, courseName: $courseName, courseDescription: $courseDescription, status: $status, submitDate: $submitDate, attachmentUrl: $attachmentUrl, teacherComment: $teacherComment, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeworkImpl &&
            (identical(other.submissionId, submissionId) ||
                other.submissionId == submissionId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName) &&
            (identical(other.courseDescription, courseDescription) ||
                other.courseDescription == courseDescription) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.submitDate, submitDate) ||
                other.submitDate == submitDate) &&
            (identical(other.attachmentUrl, attachmentUrl) ||
                other.attachmentUrl == attachmentUrl) &&
            (identical(other.teacherComment, teacherComment) ||
                other.teacherComment == teacherComment) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      submissionId,
      id,
      studentId,
      description,
      startTime,
      dueDate,
      courseName,
      courseDescription,
      status,
      submitDate,
      attachmentUrl,
      teacherComment,
      score);

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
      {@JsonKey(name: 'submission_id') required final int submissionId,
      @JsonKey(name: 'homework_id') required final int id,
      @JsonKey(name: 'student_id') required final int studentId,
      @JsonKey(name: 'homework_desciption') required final String description,
      @JsonKey(name: 'homework_start_time') required final DateTime startTime,
      @JsonKey(name: 'homework_end_time') required final DateTime dueDate,
      @JsonKey(name: 'lesson_title') required final String courseName,
      @JsonKey(name: 'lesson_description') final String? courseDescription,
      @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
      required final HomeworkStatus status,
      @JsonKey(name: 'submission_time') final DateTime? submitDate,
      @JsonKey(name: 'upload_file') final String? attachmentUrl,
      @JsonKey(name: 'comment') final String? teacherComment,
      @JsonKey(name: 'rating') final int? score}) = _$HomeworkImpl;

  factory _Homework.fromJson(Map<String, dynamic> json) =
      _$HomeworkImpl.fromJson;

  @override
  @JsonKey(name: 'submission_id')
  int get submissionId; // 改名為更明確的 submissionId
  @override
  @JsonKey(name: 'homework_id')
  int get id; // 添加 homework_id
  @override
  @JsonKey(name: 'student_id')
  int get studentId;
  @override
  @JsonKey(name: 'homework_desciption')
  String get description;
  @override
  @JsonKey(name: 'homework_start_time')
  DateTime get startTime;
  @override
  @JsonKey(name: 'homework_end_time')
  DateTime get dueDate;
  @override
  @JsonKey(name: 'lesson_title')
  String get courseName;
  @override
  @JsonKey(name: 'lesson_description')
  String? get courseDescription;
  @override
  @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
  HomeworkStatus get status;
  @override
  @JsonKey(name: 'submission_time')
  DateTime? get submitDate;
  @override
  @JsonKey(name: 'upload_file')
  String? get attachmentUrl;
  @override
  @JsonKey(name: 'comment')
  String? get teacherComment;
  @override
  @JsonKey(name: 'rating')
  int? get score;

  /// Create a copy of Homework
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeworkImplCopyWith<_$HomeworkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeworkListResponse {
  List<Homework> get submissions => throw _privateConstructorUsedError;

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
  $Res call({List<Homework> submissions});
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
    Object? submissions = null,
  }) {
    return _then(_value.copyWith(
      submissions: null == submissions
          ? _value.submissions
          : submissions // ignore: cast_nullable_to_non_nullable
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
  $Res call({List<Homework> submissions});
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
    Object? submissions = null,
  }) {
    return _then(_$HomeworkListResponseImpl(
      submissions: null == submissions
          ? _value._submissions
          : submissions // ignore: cast_nullable_to_non_nullable
              as List<Homework>,
    ));
  }
}

/// @nodoc

class _$HomeworkListResponseImpl implements _HomeworkListResponse {
  const _$HomeworkListResponseImpl({required final List<Homework> submissions})
      : _submissions = submissions;

  final List<Homework> _submissions;
  @override
  List<Homework> get submissions {
    if (_submissions is EqualUnmodifiableListView) return _submissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_submissions);
  }

  @override
  String toString() {
    return 'HomeworkListResponse(submissions: $submissions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeworkListResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._submissions, _submissions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_submissions));

  /// Create a copy of HomeworkListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeworkListResponseImplCopyWith<_$HomeworkListResponseImpl>
      get copyWith =>
          __$$HomeworkListResponseImplCopyWithImpl<_$HomeworkListResponseImpl>(
              this, _$identity);
}

abstract class _HomeworkListResponse implements HomeworkListResponse {
  const factory _HomeworkListResponse(
      {required final List<Homework> submissions}) = _$HomeworkListResponseImpl;

  @override
  List<Homework> get submissions;

  /// Create a copy of HomeworkListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeworkListResponseImplCopyWith<_$HomeworkListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeworkDetailResponse {
  List<Homework> get submissions => throw _privateConstructorUsedError;

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
  $Res call({List<Homework> submissions});
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
    Object? submissions = null,
  }) {
    return _then(_value.copyWith(
      submissions: null == submissions
          ? _value.submissions
          : submissions // ignore: cast_nullable_to_non_nullable
              as List<Homework>,
    ) as $Val);
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
  $Res call({List<Homework> submissions});
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
    Object? submissions = null,
  }) {
    return _then(_$HomeworkDetailResponseImpl(
      submissions: null == submissions
          ? _value._submissions
          : submissions // ignore: cast_nullable_to_non_nullable
              as List<Homework>,
    ));
  }
}

/// @nodoc

class _$HomeworkDetailResponseImpl implements _HomeworkDetailResponse {
  const _$HomeworkDetailResponseImpl(
      {required final List<Homework> submissions})
      : _submissions = submissions;

  final List<Homework> _submissions;
  @override
  List<Homework> get submissions {
    if (_submissions is EqualUnmodifiableListView) return _submissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_submissions);
  }

  @override
  String toString() {
    return 'HomeworkDetailResponse(submissions: $submissions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeworkDetailResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._submissions, _submissions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_submissions));

  /// Create a copy of HomeworkDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeworkDetailResponseImplCopyWith<_$HomeworkDetailResponseImpl>
      get copyWith => __$$HomeworkDetailResponseImplCopyWithImpl<
          _$HomeworkDetailResponseImpl>(this, _$identity);
}

abstract class _HomeworkDetailResponse implements HomeworkDetailResponse {
  const factory _HomeworkDetailResponse(
          {required final List<Homework> submissions}) =
      _$HomeworkDetailResponseImpl;

  @override
  List<Homework> get submissions;

  /// Create a copy of HomeworkDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeworkDetailResponseImplCopyWith<_$HomeworkDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
