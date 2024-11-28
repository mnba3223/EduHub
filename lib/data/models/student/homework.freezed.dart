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

HomeworkListItem _$HomeworkListItemFromJson(Map<String, dynamic> json) {
  return _HomeworkListItem.fromJson(json);
}

/// @nodoc
mixin _$HomeworkListItem {
  @JsonKey(name: 'homework_id')
  int get homeworkId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_id')
  int get lessonId => throw _privateConstructorUsedError;
  @JsonKey(name: 'homework_description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'homework_start_time')
  DateTime get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'homework_end_time')
  DateTime get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_file')
  String? get attachmentUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_title')
  String get lessonTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_description')
  String? get lessonDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
  HomeworkStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'teacher_id')
  int get teacherId => throw _privateConstructorUsedError;
  @JsonKey(name: 'teacher_name')
  String get teacherName => throw _privateConstructorUsedError;

  /// Serializes this HomeworkListItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeworkListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeworkListItemCopyWith<HomeworkListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeworkListItemCopyWith<$Res> {
  factory $HomeworkListItemCopyWith(
          HomeworkListItem value, $Res Function(HomeworkListItem) then) =
      _$HomeworkListItemCopyWithImpl<$Res, HomeworkListItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'homework_id') int homeworkId,
      @JsonKey(name: 'lesson_id') int lessonId,
      @JsonKey(name: 'homework_description') String description,
      @JsonKey(name: 'homework_start_time') DateTime startTime,
      @JsonKey(name: 'homework_end_time') DateTime endTime,
      @JsonKey(name: 'upload_file') String? attachmentUrl,
      @JsonKey(name: 'lesson_title') String lessonTitle,
      @JsonKey(name: 'lesson_description') String? lessonDescription,
      @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
      HomeworkStatus status,
      @JsonKey(name: 'teacher_id') int teacherId,
      @JsonKey(name: 'teacher_name') String teacherName});
}

/// @nodoc
class _$HomeworkListItemCopyWithImpl<$Res, $Val extends HomeworkListItem>
    implements $HomeworkListItemCopyWith<$Res> {
  _$HomeworkListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeworkListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeworkId = null,
    Object? lessonId = null,
    Object? description = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? attachmentUrl = freezed,
    Object? lessonTitle = null,
    Object? lessonDescription = freezed,
    Object? status = null,
    Object? teacherId = null,
    Object? teacherName = null,
  }) {
    return _then(_value.copyWith(
      homeworkId: null == homeworkId
          ? _value.homeworkId
          : homeworkId // ignore: cast_nullable_to_non_nullable
              as int,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      attachmentUrl: freezed == attachmentUrl
          ? _value.attachmentUrl
          : attachmentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonTitle: null == lessonTitle
          ? _value.lessonTitle
          : lessonTitle // ignore: cast_nullable_to_non_nullable
              as String,
      lessonDescription: freezed == lessonDescription
          ? _value.lessonDescription
          : lessonDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeworkStatus,
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int,
      teacherName: null == teacherName
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeworkListItemImplCopyWith<$Res>
    implements $HomeworkListItemCopyWith<$Res> {
  factory _$$HomeworkListItemImplCopyWith(_$HomeworkListItemImpl value,
          $Res Function(_$HomeworkListItemImpl) then) =
      __$$HomeworkListItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'homework_id') int homeworkId,
      @JsonKey(name: 'lesson_id') int lessonId,
      @JsonKey(name: 'homework_description') String description,
      @JsonKey(name: 'homework_start_time') DateTime startTime,
      @JsonKey(name: 'homework_end_time') DateTime endTime,
      @JsonKey(name: 'upload_file') String? attachmentUrl,
      @JsonKey(name: 'lesson_title') String lessonTitle,
      @JsonKey(name: 'lesson_description') String? lessonDescription,
      @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
      HomeworkStatus status,
      @JsonKey(name: 'teacher_id') int teacherId,
      @JsonKey(name: 'teacher_name') String teacherName});
}

/// @nodoc
class __$$HomeworkListItemImplCopyWithImpl<$Res>
    extends _$HomeworkListItemCopyWithImpl<$Res, _$HomeworkListItemImpl>
    implements _$$HomeworkListItemImplCopyWith<$Res> {
  __$$HomeworkListItemImplCopyWithImpl(_$HomeworkListItemImpl _value,
      $Res Function(_$HomeworkListItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeworkListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeworkId = null,
    Object? lessonId = null,
    Object? description = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? attachmentUrl = freezed,
    Object? lessonTitle = null,
    Object? lessonDescription = freezed,
    Object? status = null,
    Object? teacherId = null,
    Object? teacherName = null,
  }) {
    return _then(_$HomeworkListItemImpl(
      homeworkId: null == homeworkId
          ? _value.homeworkId
          : homeworkId // ignore: cast_nullable_to_non_nullable
              as int,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      attachmentUrl: freezed == attachmentUrl
          ? _value.attachmentUrl
          : attachmentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonTitle: null == lessonTitle
          ? _value.lessonTitle
          : lessonTitle // ignore: cast_nullable_to_non_nullable
              as String,
      lessonDescription: freezed == lessonDescription
          ? _value.lessonDescription
          : lessonDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeworkStatus,
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int,
      teacherName: null == teacherName
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeworkListItemImpl implements _HomeworkListItem {
  const _$HomeworkListItemImpl(
      {@JsonKey(name: 'homework_id') required this.homeworkId,
      @JsonKey(name: 'lesson_id') required this.lessonId,
      @JsonKey(name: 'homework_description') required this.description,
      @JsonKey(name: 'homework_start_time') required this.startTime,
      @JsonKey(name: 'homework_end_time') required this.endTime,
      @JsonKey(name: 'upload_file') this.attachmentUrl,
      @JsonKey(name: 'lesson_title') required this.lessonTitle,
      @JsonKey(name: 'lesson_description') this.lessonDescription,
      @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
      required this.status,
      @JsonKey(name: 'teacher_id') required this.teacherId,
      @JsonKey(name: 'teacher_name') required this.teacherName});

  factory _$HomeworkListItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeworkListItemImplFromJson(json);

  @override
  @JsonKey(name: 'homework_id')
  final int homeworkId;
  @override
  @JsonKey(name: 'lesson_id')
  final int lessonId;
  @override
  @JsonKey(name: 'homework_description')
  final String description;
  @override
  @JsonKey(name: 'homework_start_time')
  final DateTime startTime;
  @override
  @JsonKey(name: 'homework_end_time')
  final DateTime endTime;
  @override
  @JsonKey(name: 'upload_file')
  final String? attachmentUrl;
  @override
  @JsonKey(name: 'lesson_title')
  final String lessonTitle;
  @override
  @JsonKey(name: 'lesson_description')
  final String? lessonDescription;
  @override
  @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
  final HomeworkStatus status;
  @override
  @JsonKey(name: 'teacher_id')
  final int teacherId;
  @override
  @JsonKey(name: 'teacher_name')
  final String teacherName;

  @override
  String toString() {
    return 'HomeworkListItem(homeworkId: $homeworkId, lessonId: $lessonId, description: $description, startTime: $startTime, endTime: $endTime, attachmentUrl: $attachmentUrl, lessonTitle: $lessonTitle, lessonDescription: $lessonDescription, status: $status, teacherId: $teacherId, teacherName: $teacherName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeworkListItemImpl &&
            (identical(other.homeworkId, homeworkId) ||
                other.homeworkId == homeworkId) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.attachmentUrl, attachmentUrl) ||
                other.attachmentUrl == attachmentUrl) &&
            (identical(other.lessonTitle, lessonTitle) ||
                other.lessonTitle == lessonTitle) &&
            (identical(other.lessonDescription, lessonDescription) ||
                other.lessonDescription == lessonDescription) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId) &&
            (identical(other.teacherName, teacherName) ||
                other.teacherName == teacherName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      homeworkId,
      lessonId,
      description,
      startTime,
      endTime,
      attachmentUrl,
      lessonTitle,
      lessonDescription,
      status,
      teacherId,
      teacherName);

  /// Create a copy of HomeworkListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeworkListItemImplCopyWith<_$HomeworkListItemImpl> get copyWith =>
      __$$HomeworkListItemImplCopyWithImpl<_$HomeworkListItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeworkListItemImplToJson(
      this,
    );
  }
}

abstract class _HomeworkListItem implements HomeworkListItem {
  const factory _HomeworkListItem(
      {@JsonKey(name: 'homework_id') required final int homeworkId,
      @JsonKey(name: 'lesson_id') required final int lessonId,
      @JsonKey(name: 'homework_description') required final String description,
      @JsonKey(name: 'homework_start_time') required final DateTime startTime,
      @JsonKey(name: 'homework_end_time') required final DateTime endTime,
      @JsonKey(name: 'upload_file') final String? attachmentUrl,
      @JsonKey(name: 'lesson_title') required final String lessonTitle,
      @JsonKey(name: 'lesson_description') final String? lessonDescription,
      @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
      required final HomeworkStatus status,
      @JsonKey(name: 'teacher_id') required final int teacherId,
      @JsonKey(name: 'teacher_name')
      required final String teacherName}) = _$HomeworkListItemImpl;

  factory _HomeworkListItem.fromJson(Map<String, dynamic> json) =
      _$HomeworkListItemImpl.fromJson;

  @override
  @JsonKey(name: 'homework_id')
  int get homeworkId;
  @override
  @JsonKey(name: 'lesson_id')
  int get lessonId;
  @override
  @JsonKey(name: 'homework_description')
  String get description;
  @override
  @JsonKey(name: 'homework_start_time')
  DateTime get startTime;
  @override
  @JsonKey(name: 'homework_end_time')
  DateTime get endTime;
  @override
  @JsonKey(name: 'upload_file')
  String? get attachmentUrl;
  @override
  @JsonKey(name: 'lesson_title')
  String get lessonTitle;
  @override
  @JsonKey(name: 'lesson_description')
  String? get lessonDescription;
  @override
  @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
  HomeworkStatus get status;
  @override
  @JsonKey(name: 'teacher_id')
  int get teacherId;
  @override
  @JsonKey(name: 'teacher_name')
  String get teacherName;

  /// Create a copy of HomeworkListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeworkListItemImplCopyWith<_$HomeworkListItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeworkSubmission _$HomeworkSubmissionFromJson(Map<String, dynamic> json) {
  return _HomeworkSubmission.fromJson(json);
}

/// @nodoc
mixin _$HomeworkSubmission {
  @JsonKey(name: 'submission_id')
  int get submissionId =>
      throw _privateConstructorUsedError; // 改名為更明確的 submissionId
  @JsonKey(name: 'homework_id')
  int get homework_id => throw _privateConstructorUsedError; // 添加 homework_id
  @JsonKey(name: 'student_id')
  int get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'homework_description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'homework_start_time')
  DateTime get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'homework_end_time')
  DateTime get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_title')
  String get lessonTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_description')
  String? get lessonDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
  HomeworkStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'submission_time')
  DateTime? get submitDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_file')
  String? get uploadFile => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_file_urls')
  List<String>? get uploadFileUrls => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment')
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  int? get score => throw _privateConstructorUsedError;

  /// Serializes this HomeworkSubmission to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeworkSubmission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeworkSubmissionCopyWith<HomeworkSubmission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeworkSubmissionCopyWith<$Res> {
  factory $HomeworkSubmissionCopyWith(
          HomeworkSubmission value, $Res Function(HomeworkSubmission) then) =
      _$HomeworkSubmissionCopyWithImpl<$Res, HomeworkSubmission>;
  @useResult
  $Res call(
      {@JsonKey(name: 'submission_id') int submissionId,
      @JsonKey(name: 'homework_id') int homework_id,
      @JsonKey(name: 'student_id') int studentId,
      @JsonKey(name: 'homework_description') String description,
      @JsonKey(name: 'homework_start_time') DateTime startTime,
      @JsonKey(name: 'homework_end_time') DateTime endTime,
      @JsonKey(name: 'lesson_title') String lessonTitle,
      @JsonKey(name: 'lesson_description') String? lessonDescription,
      @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
      HomeworkStatus status,
      @JsonKey(name: 'submission_time') DateTime? submitDate,
      @JsonKey(name: 'upload_file') String? uploadFile,
      @JsonKey(name: 'upload_file_urls') List<String>? uploadFileUrls,
      @JsonKey(name: 'comment') String? comment,
      @JsonKey(name: 'rating') int? score});
}

/// @nodoc
class _$HomeworkSubmissionCopyWithImpl<$Res, $Val extends HomeworkSubmission>
    implements $HomeworkSubmissionCopyWith<$Res> {
  _$HomeworkSubmissionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeworkSubmission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submissionId = null,
    Object? homework_id = null,
    Object? studentId = null,
    Object? description = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? lessonTitle = null,
    Object? lessonDescription = freezed,
    Object? status = null,
    Object? submitDate = freezed,
    Object? uploadFile = freezed,
    Object? uploadFileUrls = freezed,
    Object? comment = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      submissionId: null == submissionId
          ? _value.submissionId
          : submissionId // ignore: cast_nullable_to_non_nullable
              as int,
      homework_id: null == homework_id
          ? _value.homework_id
          : homework_id // ignore: cast_nullable_to_non_nullable
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
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lessonTitle: null == lessonTitle
          ? _value.lessonTitle
          : lessonTitle // ignore: cast_nullable_to_non_nullable
              as String,
      lessonDescription: freezed == lessonDescription
          ? _value.lessonDescription
          : lessonDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeworkStatus,
      submitDate: freezed == submitDate
          ? _value.submitDate
          : submitDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      uploadFile: freezed == uploadFile
          ? _value.uploadFile
          : uploadFile // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadFileUrls: freezed == uploadFileUrls
          ? _value.uploadFileUrls
          : uploadFileUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeworkSubmissionImplCopyWith<$Res>
    implements $HomeworkSubmissionCopyWith<$Res> {
  factory _$$HomeworkSubmissionImplCopyWith(_$HomeworkSubmissionImpl value,
          $Res Function(_$HomeworkSubmissionImpl) then) =
      __$$HomeworkSubmissionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'submission_id') int submissionId,
      @JsonKey(name: 'homework_id') int homework_id,
      @JsonKey(name: 'student_id') int studentId,
      @JsonKey(name: 'homework_description') String description,
      @JsonKey(name: 'homework_start_time') DateTime startTime,
      @JsonKey(name: 'homework_end_time') DateTime endTime,
      @JsonKey(name: 'lesson_title') String lessonTitle,
      @JsonKey(name: 'lesson_description') String? lessonDescription,
      @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
      HomeworkStatus status,
      @JsonKey(name: 'submission_time') DateTime? submitDate,
      @JsonKey(name: 'upload_file') String? uploadFile,
      @JsonKey(name: 'upload_file_urls') List<String>? uploadFileUrls,
      @JsonKey(name: 'comment') String? comment,
      @JsonKey(name: 'rating') int? score});
}

/// @nodoc
class __$$HomeworkSubmissionImplCopyWithImpl<$Res>
    extends _$HomeworkSubmissionCopyWithImpl<$Res, _$HomeworkSubmissionImpl>
    implements _$$HomeworkSubmissionImplCopyWith<$Res> {
  __$$HomeworkSubmissionImplCopyWithImpl(_$HomeworkSubmissionImpl _value,
      $Res Function(_$HomeworkSubmissionImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeworkSubmission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submissionId = null,
    Object? homework_id = null,
    Object? studentId = null,
    Object? description = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? lessonTitle = null,
    Object? lessonDescription = freezed,
    Object? status = null,
    Object? submitDate = freezed,
    Object? uploadFile = freezed,
    Object? uploadFileUrls = freezed,
    Object? comment = freezed,
    Object? score = freezed,
  }) {
    return _then(_$HomeworkSubmissionImpl(
      submissionId: null == submissionId
          ? _value.submissionId
          : submissionId // ignore: cast_nullable_to_non_nullable
              as int,
      homework_id: null == homework_id
          ? _value.homework_id
          : homework_id // ignore: cast_nullable_to_non_nullable
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
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lessonTitle: null == lessonTitle
          ? _value.lessonTitle
          : lessonTitle // ignore: cast_nullable_to_non_nullable
              as String,
      lessonDescription: freezed == lessonDescription
          ? _value.lessonDescription
          : lessonDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeworkStatus,
      submitDate: freezed == submitDate
          ? _value.submitDate
          : submitDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      uploadFile: freezed == uploadFile
          ? _value.uploadFile
          : uploadFile // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadFileUrls: freezed == uploadFileUrls
          ? _value._uploadFileUrls
          : uploadFileUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
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
class _$HomeworkSubmissionImpl implements _HomeworkSubmission {
  const _$HomeworkSubmissionImpl(
      {@JsonKey(name: 'submission_id') required this.submissionId,
      @JsonKey(name: 'homework_id') required this.homework_id,
      @JsonKey(name: 'student_id') required this.studentId,
      @JsonKey(name: 'homework_description') required this.description,
      @JsonKey(name: 'homework_start_time') required this.startTime,
      @JsonKey(name: 'homework_end_time') required this.endTime,
      @JsonKey(name: 'lesson_title') required this.lessonTitle,
      @JsonKey(name: 'lesson_description') this.lessonDescription,
      @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
      required this.status,
      @JsonKey(name: 'submission_time') this.submitDate,
      @JsonKey(name: 'upload_file') this.uploadFile,
      @JsonKey(name: 'upload_file_urls') final List<String>? uploadFileUrls,
      @JsonKey(name: 'comment') this.comment,
      @JsonKey(name: 'rating') this.score})
      : _uploadFileUrls = uploadFileUrls;

  factory _$HomeworkSubmissionImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeworkSubmissionImplFromJson(json);

  @override
  @JsonKey(name: 'submission_id')
  final int submissionId;
// 改名為更明確的 submissionId
  @override
  @JsonKey(name: 'homework_id')
  final int homework_id;
// 添加 homework_id
  @override
  @JsonKey(name: 'student_id')
  final int studentId;
  @override
  @JsonKey(name: 'homework_description')
  final String description;
  @override
  @JsonKey(name: 'homework_start_time')
  final DateTime startTime;
  @override
  @JsonKey(name: 'homework_end_time')
  final DateTime endTime;
  @override
  @JsonKey(name: 'lesson_title')
  final String lessonTitle;
  @override
  @JsonKey(name: 'lesson_description')
  final String? lessonDescription;
  @override
  @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
  final HomeworkStatus status;
  @override
  @JsonKey(name: 'submission_time')
  final DateTime? submitDate;
  @override
  @JsonKey(name: 'upload_file')
  final String? uploadFile;
  final List<String>? _uploadFileUrls;
  @override
  @JsonKey(name: 'upload_file_urls')
  List<String>? get uploadFileUrls {
    final value = _uploadFileUrls;
    if (value == null) return null;
    if (_uploadFileUrls is EqualUnmodifiableListView) return _uploadFileUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'comment')
  final String? comment;
  @override
  @JsonKey(name: 'rating')
  final int? score;

  @override
  String toString() {
    return 'HomeworkSubmission(submissionId: $submissionId, homework_id: $homework_id, studentId: $studentId, description: $description, startTime: $startTime, endTime: $endTime, lessonTitle: $lessonTitle, lessonDescription: $lessonDescription, status: $status, submitDate: $submitDate, uploadFile: $uploadFile, uploadFileUrls: $uploadFileUrls, comment: $comment, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeworkSubmissionImpl &&
            (identical(other.submissionId, submissionId) ||
                other.submissionId == submissionId) &&
            (identical(other.homework_id, homework_id) ||
                other.homework_id == homework_id) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.lessonTitle, lessonTitle) ||
                other.lessonTitle == lessonTitle) &&
            (identical(other.lessonDescription, lessonDescription) ||
                other.lessonDescription == lessonDescription) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.submitDate, submitDate) ||
                other.submitDate == submitDate) &&
            (identical(other.uploadFile, uploadFile) ||
                other.uploadFile == uploadFile) &&
            const DeepCollectionEquality()
                .equals(other._uploadFileUrls, _uploadFileUrls) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      submissionId,
      homework_id,
      studentId,
      description,
      startTime,
      endTime,
      lessonTitle,
      lessonDescription,
      status,
      submitDate,
      uploadFile,
      const DeepCollectionEquality().hash(_uploadFileUrls),
      comment,
      score);

  /// Create a copy of HomeworkSubmission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeworkSubmissionImplCopyWith<_$HomeworkSubmissionImpl> get copyWith =>
      __$$HomeworkSubmissionImplCopyWithImpl<_$HomeworkSubmissionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeworkSubmissionImplToJson(
      this,
    );
  }
}

abstract class _HomeworkSubmission implements HomeworkSubmission {
  const factory _HomeworkSubmission(
      {@JsonKey(name: 'submission_id') required final int submissionId,
      @JsonKey(name: 'homework_id') required final int homework_id,
      @JsonKey(name: 'student_id') required final int studentId,
      @JsonKey(name: 'homework_description') required final String description,
      @JsonKey(name: 'homework_start_time') required final DateTime startTime,
      @JsonKey(name: 'homework_end_time') required final DateTime endTime,
      @JsonKey(name: 'lesson_title') required final String lessonTitle,
      @JsonKey(name: 'lesson_description') final String? lessonDescription,
      @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
      required final HomeworkStatus status,
      @JsonKey(name: 'submission_time') final DateTime? submitDate,
      @JsonKey(name: 'upload_file') final String? uploadFile,
      @JsonKey(name: 'upload_file_urls') final List<String>? uploadFileUrls,
      @JsonKey(name: 'comment') final String? comment,
      @JsonKey(name: 'rating') final int? score}) = _$HomeworkSubmissionImpl;

  factory _HomeworkSubmission.fromJson(Map<String, dynamic> json) =
      _$HomeworkSubmissionImpl.fromJson;

  @override
  @JsonKey(name: 'submission_id')
  int get submissionId; // 改名為更明確的 submissionId
  @override
  @JsonKey(name: 'homework_id')
  int get homework_id; // 添加 homework_id
  @override
  @JsonKey(name: 'student_id')
  int get studentId;
  @override
  @JsonKey(name: 'homework_description')
  String get description;
  @override
  @JsonKey(name: 'homework_start_time')
  DateTime get startTime;
  @override
  @JsonKey(name: 'homework_end_time')
  DateTime get endTime;
  @override
  @JsonKey(name: 'lesson_title')
  String get lessonTitle;
  @override
  @JsonKey(name: 'lesson_description')
  String? get lessonDescription;
  @override
  @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
  HomeworkStatus get status;
  @override
  @JsonKey(name: 'submission_time')
  DateTime? get submitDate;
  @override
  @JsonKey(name: 'upload_file')
  String? get uploadFile;
  @override
  @JsonKey(name: 'upload_file_urls')
  List<String>? get uploadFileUrls;
  @override
  @JsonKey(name: 'comment')
  String? get comment;
  @override
  @JsonKey(name: 'rating')
  int? get score;

  /// Create a copy of HomeworkSubmission
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeworkSubmissionImplCopyWith<_$HomeworkSubmissionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
