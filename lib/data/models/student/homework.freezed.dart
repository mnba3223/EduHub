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
  @JsonKey(name: 'class_name')
  String get className => throw _privateConstructorUsedError;
  @JsonKey(name: 'classroom_name')
  String get classroomName => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
  HomeworkStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'teacher_id')
  int get teacherId => throw _privateConstructorUsedError;
  @JsonKey(name: 'teacher_name')
  String get teacherName => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_students')
  int get totalStudents => throw _privateConstructorUsedError;
  @JsonKey(name: 'submitted_count')
  int get submittedCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_count')
  int get ratingCount => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'class_name') String className,
      @JsonKey(name: 'classroom_name') String classroomName,
      @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
      HomeworkStatus status,
      @JsonKey(name: 'teacher_id') int teacherId,
      @JsonKey(name: 'teacher_name') String teacherName,
      @JsonKey(name: 'total_students') int totalStudents,
      @JsonKey(name: 'submitted_count') int submittedCount,
      @JsonKey(name: 'rating_count') int ratingCount});
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
    Object? className = null,
    Object? classroomName = null,
    Object? status = null,
    Object? teacherId = null,
    Object? teacherName = null,
    Object? totalStudents = null,
    Object? submittedCount = null,
    Object? ratingCount = null,
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
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      classroomName: null == classroomName
          ? _value.classroomName
          : classroomName // ignore: cast_nullable_to_non_nullable
              as String,
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
      totalStudents: null == totalStudents
          ? _value.totalStudents
          : totalStudents // ignore: cast_nullable_to_non_nullable
              as int,
      submittedCount: null == submittedCount
          ? _value.submittedCount
          : submittedCount // ignore: cast_nullable_to_non_nullable
              as int,
      ratingCount: null == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
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
      @JsonKey(name: 'class_name') String className,
      @JsonKey(name: 'classroom_name') String classroomName,
      @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
      HomeworkStatus status,
      @JsonKey(name: 'teacher_id') int teacherId,
      @JsonKey(name: 'teacher_name') String teacherName,
      @JsonKey(name: 'total_students') int totalStudents,
      @JsonKey(name: 'submitted_count') int submittedCount,
      @JsonKey(name: 'rating_count') int ratingCount});
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
    Object? className = null,
    Object? classroomName = null,
    Object? status = null,
    Object? teacherId = null,
    Object? teacherName = null,
    Object? totalStudents = null,
    Object? submittedCount = null,
    Object? ratingCount = null,
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
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      classroomName: null == classroomName
          ? _value.classroomName
          : classroomName // ignore: cast_nullable_to_non_nullable
              as String,
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
      totalStudents: null == totalStudents
          ? _value.totalStudents
          : totalStudents // ignore: cast_nullable_to_non_nullable
              as int,
      submittedCount: null == submittedCount
          ? _value.submittedCount
          : submittedCount // ignore: cast_nullable_to_non_nullable
              as int,
      ratingCount: null == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
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
      @JsonKey(name: 'class_name') required this.className,
      @JsonKey(name: 'classroom_name') required this.classroomName,
      @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
      required this.status,
      @JsonKey(name: 'teacher_id') required this.teacherId,
      @JsonKey(name: 'teacher_name') required this.teacherName,
      @JsonKey(name: 'total_students') required this.totalStudents,
      @JsonKey(name: 'submitted_count') required this.submittedCount,
      @JsonKey(name: 'rating_count') required this.ratingCount});

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
  @JsonKey(name: 'class_name')
  final String className;
  @override
  @JsonKey(name: 'classroom_name')
  final String classroomName;
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
  @JsonKey(name: 'total_students')
  final int totalStudents;
  @override
  @JsonKey(name: 'submitted_count')
  final int submittedCount;
  @override
  @JsonKey(name: 'rating_count')
  final int ratingCount;

  @override
  String toString() {
    return 'HomeworkListItem(homeworkId: $homeworkId, lessonId: $lessonId, description: $description, startTime: $startTime, endTime: $endTime, attachmentUrl: $attachmentUrl, className: $className, classroomName: $classroomName, status: $status, teacherId: $teacherId, teacherName: $teacherName, totalStudents: $totalStudents, submittedCount: $submittedCount, ratingCount: $ratingCount)';
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
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.classroomName, classroomName) ||
                other.classroomName == classroomName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId) &&
            (identical(other.teacherName, teacherName) ||
                other.teacherName == teacherName) &&
            (identical(other.totalStudents, totalStudents) ||
                other.totalStudents == totalStudents) &&
            (identical(other.submittedCount, submittedCount) ||
                other.submittedCount == submittedCount) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount));
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
      className,
      classroomName,
      status,
      teacherId,
      teacherName,
      totalStudents,
      submittedCount,
      ratingCount);

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
      @JsonKey(name: 'class_name') required final String className,
      @JsonKey(name: 'classroom_name') required final String classroomName,
      @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
      required final HomeworkStatus status,
      @JsonKey(name: 'teacher_id') required final int teacherId,
      @JsonKey(name: 'teacher_name') required final String teacherName,
      @JsonKey(name: 'total_students') required final int totalStudents,
      @JsonKey(name: 'submitted_count') required final int submittedCount,
      @JsonKey(name: 'rating_count')
      required final int ratingCount}) = _$HomeworkListItemImpl;

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
  @JsonKey(name: 'class_name')
  String get className;
  @override
  @JsonKey(name: 'classroom_name')
  String get classroomName;
  @override
  @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
  HomeworkStatus get status;
  @override
  @JsonKey(name: 'teacher_id')
  int get teacherId;
  @override
  @JsonKey(name: 'teacher_name')
  String get teacherName;
  @override
  @JsonKey(name: 'total_students')
  int get totalStudents;
  @override
  @JsonKey(name: 'submitted_count')
  int get submittedCount;
  @override
  @JsonKey(name: 'rating_count')
  int get ratingCount;

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
  int get submissionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'homework_id')
  int get homeworkId => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_id')
  int get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_name')
  String get studentName => throw _privateConstructorUsedError;
  @JsonKey(name: 'submission_time')
  DateTime? get submissionTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment')
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_file')
  String? get uploadFile => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_file_urls')
  List<String>? get uploadFileUrls => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
  HomeworkStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_id')
  int get lessonId => throw _privateConstructorUsedError;
  @JsonKey(name: 'homework_description')
  String get homeworkDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'homework_start_time')
  DateTime get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'homework_end_time')
  DateTime get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'class_name')
  String get className => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_Attachment')
  bool get hasAttachment => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_rating')
  bool get hasRating => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'homework_id') int homeworkId,
      @JsonKey(name: 'student_id') int studentId,
      @JsonKey(name: 'student_name') String studentName,
      @JsonKey(name: 'submission_time') DateTime? submissionTime,
      @JsonKey(name: 'comment') String? comment,
      @JsonKey(name: 'rating') int? rating,
      @JsonKey(name: 'upload_file') String? uploadFile,
      @JsonKey(name: 'upload_file_urls') List<String>? uploadFileUrls,
      @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
      HomeworkStatus status,
      @JsonKey(name: 'lesson_id') int lessonId,
      @JsonKey(name: 'homework_description') String homeworkDescription,
      @JsonKey(name: 'homework_start_time') DateTime startTime,
      @JsonKey(name: 'homework_end_time') DateTime endTime,
      @JsonKey(name: 'class_name') String className,
      @JsonKey(name: 'has_Attachment') bool hasAttachment,
      @JsonKey(name: 'has_rating') bool hasRating});
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
    Object? homeworkId = null,
    Object? studentId = null,
    Object? studentName = null,
    Object? submissionTime = freezed,
    Object? comment = freezed,
    Object? rating = freezed,
    Object? uploadFile = freezed,
    Object? uploadFileUrls = freezed,
    Object? status = null,
    Object? lessonId = null,
    Object? homeworkDescription = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? className = null,
    Object? hasAttachment = null,
    Object? hasRating = null,
  }) {
    return _then(_value.copyWith(
      submissionId: null == submissionId
          ? _value.submissionId
          : submissionId // ignore: cast_nullable_to_non_nullable
              as int,
      homeworkId: null == homeworkId
          ? _value.homeworkId
          : homeworkId // ignore: cast_nullable_to_non_nullable
              as int,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      submissionTime: freezed == submissionTime
          ? _value.submissionTime
          : submissionTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      uploadFile: freezed == uploadFile
          ? _value.uploadFile
          : uploadFile // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadFileUrls: freezed == uploadFileUrls
          ? _value.uploadFileUrls
          : uploadFileUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeworkStatus,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as int,
      homeworkDescription: null == homeworkDescription
          ? _value.homeworkDescription
          : homeworkDescription // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      hasAttachment: null == hasAttachment
          ? _value.hasAttachment
          : hasAttachment // ignore: cast_nullable_to_non_nullable
              as bool,
      hasRating: null == hasRating
          ? _value.hasRating
          : hasRating // ignore: cast_nullable_to_non_nullable
              as bool,
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
      @JsonKey(name: 'homework_id') int homeworkId,
      @JsonKey(name: 'student_id') int studentId,
      @JsonKey(name: 'student_name') String studentName,
      @JsonKey(name: 'submission_time') DateTime? submissionTime,
      @JsonKey(name: 'comment') String? comment,
      @JsonKey(name: 'rating') int? rating,
      @JsonKey(name: 'upload_file') String? uploadFile,
      @JsonKey(name: 'upload_file_urls') List<String>? uploadFileUrls,
      @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
      HomeworkStatus status,
      @JsonKey(name: 'lesson_id') int lessonId,
      @JsonKey(name: 'homework_description') String homeworkDescription,
      @JsonKey(name: 'homework_start_time') DateTime startTime,
      @JsonKey(name: 'homework_end_time') DateTime endTime,
      @JsonKey(name: 'class_name') String className,
      @JsonKey(name: 'has_Attachment') bool hasAttachment,
      @JsonKey(name: 'has_rating') bool hasRating});
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
    Object? homeworkId = null,
    Object? studentId = null,
    Object? studentName = null,
    Object? submissionTime = freezed,
    Object? comment = freezed,
    Object? rating = freezed,
    Object? uploadFile = freezed,
    Object? uploadFileUrls = freezed,
    Object? status = null,
    Object? lessonId = null,
    Object? homeworkDescription = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? className = null,
    Object? hasAttachment = null,
    Object? hasRating = null,
  }) {
    return _then(_$HomeworkSubmissionImpl(
      submissionId: null == submissionId
          ? _value.submissionId
          : submissionId // ignore: cast_nullable_to_non_nullable
              as int,
      homeworkId: null == homeworkId
          ? _value.homeworkId
          : homeworkId // ignore: cast_nullable_to_non_nullable
              as int,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      submissionTime: freezed == submissionTime
          ? _value.submissionTime
          : submissionTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      uploadFile: freezed == uploadFile
          ? _value.uploadFile
          : uploadFile // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadFileUrls: freezed == uploadFileUrls
          ? _value._uploadFileUrls
          : uploadFileUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeworkStatus,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as int,
      homeworkDescription: null == homeworkDescription
          ? _value.homeworkDescription
          : homeworkDescription // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      hasAttachment: null == hasAttachment
          ? _value.hasAttachment
          : hasAttachment // ignore: cast_nullable_to_non_nullable
              as bool,
      hasRating: null == hasRating
          ? _value.hasRating
          : hasRating // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeworkSubmissionImpl implements _HomeworkSubmission {
  const _$HomeworkSubmissionImpl(
      {@JsonKey(name: 'submission_id') required this.submissionId,
      @JsonKey(name: 'homework_id') required this.homeworkId,
      @JsonKey(name: 'student_id') required this.studentId,
      @JsonKey(name: 'student_name') required this.studentName,
      @JsonKey(name: 'submission_time') this.submissionTime,
      @JsonKey(name: 'comment') this.comment,
      @JsonKey(name: 'rating') this.rating,
      @JsonKey(name: 'upload_file') this.uploadFile,
      @JsonKey(name: 'upload_file_urls') final List<String>? uploadFileUrls,
      @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
      required this.status,
      @JsonKey(name: 'lesson_id') required this.lessonId,
      @JsonKey(name: 'homework_description') required this.homeworkDescription,
      @JsonKey(name: 'homework_start_time') required this.startTime,
      @JsonKey(name: 'homework_end_time') required this.endTime,
      @JsonKey(name: 'class_name') required this.className,
      @JsonKey(name: 'has_Attachment') required this.hasAttachment,
      @JsonKey(name: 'has_rating') required this.hasRating})
      : _uploadFileUrls = uploadFileUrls;

  factory _$HomeworkSubmissionImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeworkSubmissionImplFromJson(json);

  @override
  @JsonKey(name: 'submission_id')
  final int submissionId;
  @override
  @JsonKey(name: 'homework_id')
  final int homeworkId;
  @override
  @JsonKey(name: 'student_id')
  final int studentId;
  @override
  @JsonKey(name: 'student_name')
  final String studentName;
  @override
  @JsonKey(name: 'submission_time')
  final DateTime? submissionTime;
  @override
  @JsonKey(name: 'comment')
  final String? comment;
  @override
  @JsonKey(name: 'rating')
  final int? rating;
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
  @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
  final HomeworkStatus status;
  @override
  @JsonKey(name: 'lesson_id')
  final int lessonId;
  @override
  @JsonKey(name: 'homework_description')
  final String homeworkDescription;
  @override
  @JsonKey(name: 'homework_start_time')
  final DateTime startTime;
  @override
  @JsonKey(name: 'homework_end_time')
  final DateTime endTime;
  @override
  @JsonKey(name: 'class_name')
  final String className;
  @override
  @JsonKey(name: 'has_Attachment')
  final bool hasAttachment;
  @override
  @JsonKey(name: 'has_rating')
  final bool hasRating;

  @override
  String toString() {
    return 'HomeworkSubmission(submissionId: $submissionId, homeworkId: $homeworkId, studentId: $studentId, studentName: $studentName, submissionTime: $submissionTime, comment: $comment, rating: $rating, uploadFile: $uploadFile, uploadFileUrls: $uploadFileUrls, status: $status, lessonId: $lessonId, homeworkDescription: $homeworkDescription, startTime: $startTime, endTime: $endTime, className: $className, hasAttachment: $hasAttachment, hasRating: $hasRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeworkSubmissionImpl &&
            (identical(other.submissionId, submissionId) ||
                other.submissionId == submissionId) &&
            (identical(other.homeworkId, homeworkId) ||
                other.homeworkId == homeworkId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.submissionTime, submissionTime) ||
                other.submissionTime == submissionTime) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.uploadFile, uploadFile) ||
                other.uploadFile == uploadFile) &&
            const DeepCollectionEquality()
                .equals(other._uploadFileUrls, _uploadFileUrls) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.homeworkDescription, homeworkDescription) ||
                other.homeworkDescription == homeworkDescription) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.hasAttachment, hasAttachment) ||
                other.hasAttachment == hasAttachment) &&
            (identical(other.hasRating, hasRating) ||
                other.hasRating == hasRating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      submissionId,
      homeworkId,
      studentId,
      studentName,
      submissionTime,
      comment,
      rating,
      uploadFile,
      const DeepCollectionEquality().hash(_uploadFileUrls),
      status,
      lessonId,
      homeworkDescription,
      startTime,
      endTime,
      className,
      hasAttachment,
      hasRating);

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
      @JsonKey(name: 'homework_id') required final int homeworkId,
      @JsonKey(name: 'student_id') required final int studentId,
      @JsonKey(name: 'student_name') required final String studentName,
      @JsonKey(name: 'submission_time') final DateTime? submissionTime,
      @JsonKey(name: 'comment') final String? comment,
      @JsonKey(name: 'rating') final int? rating,
      @JsonKey(name: 'upload_file') final String? uploadFile,
      @JsonKey(name: 'upload_file_urls') final List<String>? uploadFileUrls,
      @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
      required final HomeworkStatus status,
      @JsonKey(name: 'lesson_id') required final int lessonId,
      @JsonKey(name: 'homework_description')
      required final String homeworkDescription,
      @JsonKey(name: 'homework_start_time') required final DateTime startTime,
      @JsonKey(name: 'homework_end_time') required final DateTime endTime,
      @JsonKey(name: 'class_name') required final String className,
      @JsonKey(name: 'has_Attachment') required final bool hasAttachment,
      @JsonKey(name: 'has_rating')
      required final bool hasRating}) = _$HomeworkSubmissionImpl;

  factory _HomeworkSubmission.fromJson(Map<String, dynamic> json) =
      _$HomeworkSubmissionImpl.fromJson;

  @override
  @JsonKey(name: 'submission_id')
  int get submissionId;
  @override
  @JsonKey(name: 'homework_id')
  int get homeworkId;
  @override
  @JsonKey(name: 'student_id')
  int get studentId;
  @override
  @JsonKey(name: 'student_name')
  String get studentName;
  @override
  @JsonKey(name: 'submission_time')
  DateTime? get submissionTime;
  @override
  @JsonKey(name: 'comment')
  String? get comment;
  @override
  @JsonKey(name: 'rating')
  int? get rating;
  @override
  @JsonKey(name: 'upload_file')
  String? get uploadFile;
  @override
  @JsonKey(name: 'upload_file_urls')
  List<String>? get uploadFileUrls;
  @override
  @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.pending)
  HomeworkStatus get status;
  @override
  @JsonKey(name: 'lesson_id')
  int get lessonId;
  @override
  @JsonKey(name: 'homework_description')
  String get homeworkDescription;
  @override
  @JsonKey(name: 'homework_start_time')
  DateTime get startTime;
  @override
  @JsonKey(name: 'homework_end_time')
  DateTime get endTime;
  @override
  @JsonKey(name: 'class_name')
  String get className;
  @override
  @JsonKey(name: 'has_Attachment')
  bool get hasAttachment;
  @override
  @JsonKey(name: 'has_rating')
  bool get hasRating;

  /// Create a copy of HomeworkSubmission
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeworkSubmissionImplCopyWith<_$HomeworkSubmissionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
