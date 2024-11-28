// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_homework.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeacherHomeworkStats _$TeacherHomeworkStatsFromJson(Map<String, dynamic> json) {
  return _TeacherHomeworkStats.fromJson(json);
}

/// @nodoc
mixin _$TeacherHomeworkStats {
  int get total => throw _privateConstructorUsedError;
  int get submitted => throw _privateConstructorUsedError;
  int get graded => throw _privateConstructorUsedError;

  /// Serializes this TeacherHomeworkStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeacherHomeworkStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherHomeworkStatsCopyWith<TeacherHomeworkStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherHomeworkStatsCopyWith<$Res> {
  factory $TeacherHomeworkStatsCopyWith(TeacherHomeworkStats value,
          $Res Function(TeacherHomeworkStats) then) =
      _$TeacherHomeworkStatsCopyWithImpl<$Res, TeacherHomeworkStats>;
  @useResult
  $Res call({int total, int submitted, int graded});
}

/// @nodoc
class _$TeacherHomeworkStatsCopyWithImpl<$Res,
        $Val extends TeacherHomeworkStats>
    implements $TeacherHomeworkStatsCopyWith<$Res> {
  _$TeacherHomeworkStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherHomeworkStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? submitted = null,
    Object? graded = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      submitted: null == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as int,
      graded: null == graded
          ? _value.graded
          : graded // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherHomeworkStatsImplCopyWith<$Res>
    implements $TeacherHomeworkStatsCopyWith<$Res> {
  factory _$$TeacherHomeworkStatsImplCopyWith(_$TeacherHomeworkStatsImpl value,
          $Res Function(_$TeacherHomeworkStatsImpl) then) =
      __$$TeacherHomeworkStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int submitted, int graded});
}

/// @nodoc
class __$$TeacherHomeworkStatsImplCopyWithImpl<$Res>
    extends _$TeacherHomeworkStatsCopyWithImpl<$Res, _$TeacherHomeworkStatsImpl>
    implements _$$TeacherHomeworkStatsImplCopyWith<$Res> {
  __$$TeacherHomeworkStatsImplCopyWithImpl(_$TeacherHomeworkStatsImpl _value,
      $Res Function(_$TeacherHomeworkStatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherHomeworkStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? submitted = null,
    Object? graded = null,
  }) {
    return _then(_$TeacherHomeworkStatsImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      submitted: null == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as int,
      graded: null == graded
          ? _value.graded
          : graded // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherHomeworkStatsImpl implements _TeacherHomeworkStats {
  const _$TeacherHomeworkStatsImpl(
      {required this.total, required this.submitted, required this.graded});

  factory _$TeacherHomeworkStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherHomeworkStatsImplFromJson(json);

  @override
  final int total;
  @override
  final int submitted;
  @override
  final int graded;

  @override
  String toString() {
    return 'TeacherHomeworkStats(total: $total, submitted: $submitted, graded: $graded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherHomeworkStatsImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.submitted, submitted) ||
                other.submitted == submitted) &&
            (identical(other.graded, graded) || other.graded == graded));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, submitted, graded);

  /// Create a copy of TeacherHomeworkStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherHomeworkStatsImplCopyWith<_$TeacherHomeworkStatsImpl>
      get copyWith =>
          __$$TeacherHomeworkStatsImplCopyWithImpl<_$TeacherHomeworkStatsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherHomeworkStatsImplToJson(
      this,
    );
  }
}

abstract class _TeacherHomeworkStats implements TeacherHomeworkStats {
  const factory _TeacherHomeworkStats(
      {required final int total,
      required final int submitted,
      required final int graded}) = _$TeacherHomeworkStatsImpl;

  factory _TeacherHomeworkStats.fromJson(Map<String, dynamic> json) =
      _$TeacherHomeworkStatsImpl.fromJson;

  @override
  int get total;
  @override
  int get submitted;
  @override
  int get graded;

  /// Create a copy of TeacherHomeworkStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherHomeworkStatsImplCopyWith<_$TeacherHomeworkStatsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TeacherHomeworkListItem _$TeacherHomeworkListItemFromJson(
    Map<String, dynamic> json) {
  return _TeacherHomeworkListItem.fromJson(json);
}

/// @nodoc
mixin _$TeacherHomeworkListItem {
  @JsonKey(name: 'homework_id')
  int get homeworkId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_id')
  int get lessonId => throw _privateConstructorUsedError;
  @JsonKey(name: 'homework_description')
  String? get homeworkDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_title')
  String get lessonTitle => throw _privateConstructorUsedError;
  String? get classroomName => throw _privateConstructorUsedError;
  @JsonKey(name: 'homework_start_time')
  DateTime get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'homework_end_time')
  DateTime get endTime => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'status',
      fromJson: _parseHomeworkStatus,
      defaultValue: HomeworkStatus.ongoing)
  HomeworkStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'teacher_id')
  int? get teacherId => throw _privateConstructorUsedError;
  @JsonKey(name: 'teacher_name')
  String? get teacherName => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_file')
  String? get uploadFile => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_description')
  String? get lessonDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_students')
  int get totalStudents => throw _privateConstructorUsedError;
  @JsonKey(name: 'submitted_count')
  int get submittedCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_count')
  int get ratingCount => throw _privateConstructorUsedError;

  /// Serializes this TeacherHomeworkListItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeacherHomeworkListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherHomeworkListItemCopyWith<TeacherHomeworkListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherHomeworkListItemCopyWith<$Res> {
  factory $TeacherHomeworkListItemCopyWith(TeacherHomeworkListItem value,
          $Res Function(TeacherHomeworkListItem) then) =
      _$TeacherHomeworkListItemCopyWithImpl<$Res, TeacherHomeworkListItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'homework_id') int homeworkId,
      @JsonKey(name: 'lesson_id') int lessonId,
      @JsonKey(name: 'homework_description') String? homeworkDescription,
      @JsonKey(name: 'lesson_title') String lessonTitle,
      String? classroomName,
      @JsonKey(name: 'homework_start_time') DateTime startTime,
      @JsonKey(name: 'homework_end_time') DateTime endTime,
      @JsonKey(
          name: 'status',
          fromJson: _parseHomeworkStatus,
          defaultValue: HomeworkStatus.ongoing)
      HomeworkStatus status,
      @JsonKey(name: 'teacher_id') int? teacherId,
      @JsonKey(name: 'teacher_name') String? teacherName,
      @JsonKey(name: 'upload_file') String? uploadFile,
      @JsonKey(name: 'lesson_description') String? lessonDescription,
      @JsonKey(name: 'total_students') int totalStudents,
      @JsonKey(name: 'submitted_count') int submittedCount,
      @JsonKey(name: 'rating_count') int ratingCount});
}

/// @nodoc
class _$TeacherHomeworkListItemCopyWithImpl<$Res,
        $Val extends TeacherHomeworkListItem>
    implements $TeacherHomeworkListItemCopyWith<$Res> {
  _$TeacherHomeworkListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherHomeworkListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeworkId = null,
    Object? lessonId = null,
    Object? homeworkDescription = freezed,
    Object? lessonTitle = null,
    Object? classroomName = freezed,
    Object? startTime = null,
    Object? endTime = null,
    Object? status = null,
    Object? teacherId = freezed,
    Object? teacherName = freezed,
    Object? uploadFile = freezed,
    Object? lessonDescription = freezed,
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
      homeworkDescription: freezed == homeworkDescription
          ? _value.homeworkDescription
          : homeworkDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonTitle: null == lessonTitle
          ? _value.lessonTitle
          : lessonTitle // ignore: cast_nullable_to_non_nullable
              as String,
      classroomName: freezed == classroomName
          ? _value.classroomName
          : classroomName // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeworkStatus,
      teacherId: freezed == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int?,
      teacherName: freezed == teacherName
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadFile: freezed == uploadFile
          ? _value.uploadFile
          : uploadFile // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonDescription: freezed == lessonDescription
          ? _value.lessonDescription
          : lessonDescription // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$TeacherHomeworkListItemImplCopyWith<$Res>
    implements $TeacherHomeworkListItemCopyWith<$Res> {
  factory _$$TeacherHomeworkListItemImplCopyWith(
          _$TeacherHomeworkListItemImpl value,
          $Res Function(_$TeacherHomeworkListItemImpl) then) =
      __$$TeacherHomeworkListItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'homework_id') int homeworkId,
      @JsonKey(name: 'lesson_id') int lessonId,
      @JsonKey(name: 'homework_description') String? homeworkDescription,
      @JsonKey(name: 'lesson_title') String lessonTitle,
      String? classroomName,
      @JsonKey(name: 'homework_start_time') DateTime startTime,
      @JsonKey(name: 'homework_end_time') DateTime endTime,
      @JsonKey(
          name: 'status',
          fromJson: _parseHomeworkStatus,
          defaultValue: HomeworkStatus.ongoing)
      HomeworkStatus status,
      @JsonKey(name: 'teacher_id') int? teacherId,
      @JsonKey(name: 'teacher_name') String? teacherName,
      @JsonKey(name: 'upload_file') String? uploadFile,
      @JsonKey(name: 'lesson_description') String? lessonDescription,
      @JsonKey(name: 'total_students') int totalStudents,
      @JsonKey(name: 'submitted_count') int submittedCount,
      @JsonKey(name: 'rating_count') int ratingCount});
}

/// @nodoc
class __$$TeacherHomeworkListItemImplCopyWithImpl<$Res>
    extends _$TeacherHomeworkListItemCopyWithImpl<$Res,
        _$TeacherHomeworkListItemImpl>
    implements _$$TeacherHomeworkListItemImplCopyWith<$Res> {
  __$$TeacherHomeworkListItemImplCopyWithImpl(
      _$TeacherHomeworkListItemImpl _value,
      $Res Function(_$TeacherHomeworkListItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherHomeworkListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeworkId = null,
    Object? lessonId = null,
    Object? homeworkDescription = freezed,
    Object? lessonTitle = null,
    Object? classroomName = freezed,
    Object? startTime = null,
    Object? endTime = null,
    Object? status = null,
    Object? teacherId = freezed,
    Object? teacherName = freezed,
    Object? uploadFile = freezed,
    Object? lessonDescription = freezed,
    Object? totalStudents = null,
    Object? submittedCount = null,
    Object? ratingCount = null,
  }) {
    return _then(_$TeacherHomeworkListItemImpl(
      homeworkId: null == homeworkId
          ? _value.homeworkId
          : homeworkId // ignore: cast_nullable_to_non_nullable
              as int,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as int,
      homeworkDescription: freezed == homeworkDescription
          ? _value.homeworkDescription
          : homeworkDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonTitle: null == lessonTitle
          ? _value.lessonTitle
          : lessonTitle // ignore: cast_nullable_to_non_nullable
              as String,
      classroomName: freezed == classroomName
          ? _value.classroomName
          : classroomName // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeworkStatus,
      teacherId: freezed == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int?,
      teacherName: freezed == teacherName
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadFile: freezed == uploadFile
          ? _value.uploadFile
          : uploadFile // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonDescription: freezed == lessonDescription
          ? _value.lessonDescription
          : lessonDescription // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$TeacherHomeworkListItemImpl implements _TeacherHomeworkListItem {
  const _$TeacherHomeworkListItemImpl(
      {@JsonKey(name: 'homework_id') required this.homeworkId,
      @JsonKey(name: 'lesson_id') required this.lessonId,
      @JsonKey(name: 'homework_description') this.homeworkDescription,
      @JsonKey(name: 'lesson_title') required this.lessonTitle,
      this.classroomName,
      @JsonKey(name: 'homework_start_time') required this.startTime,
      @JsonKey(name: 'homework_end_time') required this.endTime,
      @JsonKey(
          name: 'status',
          fromJson: _parseHomeworkStatus,
          defaultValue: HomeworkStatus.ongoing)
      required this.status,
      @JsonKey(name: 'teacher_id') this.teacherId,
      @JsonKey(name: 'teacher_name') this.teacherName,
      @JsonKey(name: 'upload_file') this.uploadFile,
      @JsonKey(name: 'lesson_description') this.lessonDescription,
      @JsonKey(name: 'total_students') required this.totalStudents,
      @JsonKey(name: 'submitted_count') required this.submittedCount,
      @JsonKey(name: 'rating_count') required this.ratingCount});

  factory _$TeacherHomeworkListItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherHomeworkListItemImplFromJson(json);

  @override
  @JsonKey(name: 'homework_id')
  final int homeworkId;
  @override
  @JsonKey(name: 'lesson_id')
  final int lessonId;
  @override
  @JsonKey(name: 'homework_description')
  final String? homeworkDescription;
  @override
  @JsonKey(name: 'lesson_title')
  final String lessonTitle;
  @override
  final String? classroomName;
  @override
  @JsonKey(name: 'homework_start_time')
  final DateTime startTime;
  @override
  @JsonKey(name: 'homework_end_time')
  final DateTime endTime;
  @override
  @JsonKey(
      name: 'status',
      fromJson: _parseHomeworkStatus,
      defaultValue: HomeworkStatus.ongoing)
  final HomeworkStatus status;
  @override
  @JsonKey(name: 'teacher_id')
  final int? teacherId;
  @override
  @JsonKey(name: 'teacher_name')
  final String? teacherName;
  @override
  @JsonKey(name: 'upload_file')
  final String? uploadFile;
  @override
  @JsonKey(name: 'lesson_description')
  final String? lessonDescription;
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
    return 'TeacherHomeworkListItem(homeworkId: $homeworkId, lessonId: $lessonId, homeworkDescription: $homeworkDescription, lessonTitle: $lessonTitle, classroomName: $classroomName, startTime: $startTime, endTime: $endTime, status: $status, teacherId: $teacherId, teacherName: $teacherName, uploadFile: $uploadFile, lessonDescription: $lessonDescription, totalStudents: $totalStudents, submittedCount: $submittedCount, ratingCount: $ratingCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherHomeworkListItemImpl &&
            (identical(other.homeworkId, homeworkId) ||
                other.homeworkId == homeworkId) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.homeworkDescription, homeworkDescription) ||
                other.homeworkDescription == homeworkDescription) &&
            (identical(other.lessonTitle, lessonTitle) ||
                other.lessonTitle == lessonTitle) &&
            (identical(other.classroomName, classroomName) ||
                other.classroomName == classroomName) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId) &&
            (identical(other.teacherName, teacherName) ||
                other.teacherName == teacherName) &&
            (identical(other.uploadFile, uploadFile) ||
                other.uploadFile == uploadFile) &&
            (identical(other.lessonDescription, lessonDescription) ||
                other.lessonDescription == lessonDescription) &&
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
      homeworkDescription,
      lessonTitle,
      classroomName,
      startTime,
      endTime,
      status,
      teacherId,
      teacherName,
      uploadFile,
      lessonDescription,
      totalStudents,
      submittedCount,
      ratingCount);

  /// Create a copy of TeacherHomeworkListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherHomeworkListItemImplCopyWith<_$TeacherHomeworkListItemImpl>
      get copyWith => __$$TeacherHomeworkListItemImplCopyWithImpl<
          _$TeacherHomeworkListItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherHomeworkListItemImplToJson(
      this,
    );
  }
}

abstract class _TeacherHomeworkListItem implements TeacherHomeworkListItem {
  const factory _TeacherHomeworkListItem(
      {@JsonKey(name: 'homework_id') required final int homeworkId,
      @JsonKey(name: 'lesson_id') required final int lessonId,
      @JsonKey(name: 'homework_description') final String? homeworkDescription,
      @JsonKey(name: 'lesson_title') required final String lessonTitle,
      final String? classroomName,
      @JsonKey(name: 'homework_start_time') required final DateTime startTime,
      @JsonKey(name: 'homework_end_time') required final DateTime endTime,
      @JsonKey(
          name: 'status',
          fromJson: _parseHomeworkStatus,
          defaultValue: HomeworkStatus.ongoing)
      required final HomeworkStatus status,
      @JsonKey(name: 'teacher_id') final int? teacherId,
      @JsonKey(name: 'teacher_name') final String? teacherName,
      @JsonKey(name: 'upload_file') final String? uploadFile,
      @JsonKey(name: 'lesson_description') final String? lessonDescription,
      @JsonKey(name: 'total_students') required final int totalStudents,
      @JsonKey(name: 'submitted_count') required final int submittedCount,
      @JsonKey(name: 'rating_count')
      required final int ratingCount}) = _$TeacherHomeworkListItemImpl;

  factory _TeacherHomeworkListItem.fromJson(Map<String, dynamic> json) =
      _$TeacherHomeworkListItemImpl.fromJson;

  @override
  @JsonKey(name: 'homework_id')
  int get homeworkId;
  @override
  @JsonKey(name: 'lesson_id')
  int get lessonId;
  @override
  @JsonKey(name: 'homework_description')
  String? get homeworkDescription;
  @override
  @JsonKey(name: 'lesson_title')
  String get lessonTitle;
  @override
  String? get classroomName;
  @override
  @JsonKey(name: 'homework_start_time')
  DateTime get startTime;
  @override
  @JsonKey(name: 'homework_end_time')
  DateTime get endTime;
  @override
  @JsonKey(
      name: 'status',
      fromJson: _parseHomeworkStatus,
      defaultValue: HomeworkStatus.ongoing)
  HomeworkStatus get status;
  @override
  @JsonKey(name: 'teacher_id')
  int? get teacherId;
  @override
  @JsonKey(name: 'teacher_name')
  String? get teacherName;
  @override
  @JsonKey(name: 'upload_file')
  String? get uploadFile;
  @override
  @JsonKey(name: 'lesson_description')
  String? get lessonDescription;
  @override
  @JsonKey(name: 'total_students')
  int get totalStudents;
  @override
  @JsonKey(name: 'submitted_count')
  int get submittedCount;
  @override
  @JsonKey(name: 'rating_count')
  int get ratingCount;

  /// Create a copy of TeacherHomeworkListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherHomeworkListItemImplCopyWith<_$TeacherHomeworkListItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TeacherHomeworkDetail _$TeacherHomeworkDetailFromJson(
    Map<String, dynamic> json) {
  return _TeacherHomeworkDetail.fromJson(json);
}

/// @nodoc
mixin _$TeacherHomeworkDetail {
  int get homeworkId => throw _privateConstructorUsedError;
  String get homeworkDescription => throw _privateConstructorUsedError;
  int get lessonId => throw _privateConstructorUsedError;
  String get lessonTitle => throw _privateConstructorUsedError;
  String get lessonDescription => throw _privateConstructorUsedError;
  String? get classroomName => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  String? get uploadFile => throw _privateConstructorUsedError;
  TeacherHomeworkStats get stats => throw _privateConstructorUsedError;
  List<TeacherHomeworkSubmission> get submissions =>
      throw _privateConstructorUsedError;

  /// Serializes this TeacherHomeworkDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeacherHomeworkDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherHomeworkDetailCopyWith<TeacherHomeworkDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherHomeworkDetailCopyWith<$Res> {
  factory $TeacherHomeworkDetailCopyWith(TeacherHomeworkDetail value,
          $Res Function(TeacherHomeworkDetail) then) =
      _$TeacherHomeworkDetailCopyWithImpl<$Res, TeacherHomeworkDetail>;
  @useResult
  $Res call(
      {int homeworkId,
      String homeworkDescription,
      int lessonId,
      String lessonTitle,
      String lessonDescription,
      String? classroomName,
      DateTime startTime,
      DateTime endTime,
      String? uploadFile,
      TeacherHomeworkStats stats,
      List<TeacherHomeworkSubmission> submissions});

  $TeacherHomeworkStatsCopyWith<$Res> get stats;
}

/// @nodoc
class _$TeacherHomeworkDetailCopyWithImpl<$Res,
        $Val extends TeacherHomeworkDetail>
    implements $TeacherHomeworkDetailCopyWith<$Res> {
  _$TeacherHomeworkDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherHomeworkDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeworkId = null,
    Object? homeworkDescription = null,
    Object? lessonId = null,
    Object? lessonTitle = null,
    Object? lessonDescription = null,
    Object? classroomName = freezed,
    Object? startTime = null,
    Object? endTime = null,
    Object? uploadFile = freezed,
    Object? stats = null,
    Object? submissions = null,
  }) {
    return _then(_value.copyWith(
      homeworkId: null == homeworkId
          ? _value.homeworkId
          : homeworkId // ignore: cast_nullable_to_non_nullable
              as int,
      homeworkDescription: null == homeworkDescription
          ? _value.homeworkDescription
          : homeworkDescription // ignore: cast_nullable_to_non_nullable
              as String,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as int,
      lessonTitle: null == lessonTitle
          ? _value.lessonTitle
          : lessonTitle // ignore: cast_nullable_to_non_nullable
              as String,
      lessonDescription: null == lessonDescription
          ? _value.lessonDescription
          : lessonDescription // ignore: cast_nullable_to_non_nullable
              as String,
      classroomName: freezed == classroomName
          ? _value.classroomName
          : classroomName // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      uploadFile: freezed == uploadFile
          ? _value.uploadFile
          : uploadFile // ignore: cast_nullable_to_non_nullable
              as String?,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as TeacherHomeworkStats,
      submissions: null == submissions
          ? _value.submissions
          : submissions // ignore: cast_nullable_to_non_nullable
              as List<TeacherHomeworkSubmission>,
    ) as $Val);
  }

  /// Create a copy of TeacherHomeworkDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TeacherHomeworkStatsCopyWith<$Res> get stats {
    return $TeacherHomeworkStatsCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeacherHomeworkDetailImplCopyWith<$Res>
    implements $TeacherHomeworkDetailCopyWith<$Res> {
  factory _$$TeacherHomeworkDetailImplCopyWith(
          _$TeacherHomeworkDetailImpl value,
          $Res Function(_$TeacherHomeworkDetailImpl) then) =
      __$$TeacherHomeworkDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int homeworkId,
      String homeworkDescription,
      int lessonId,
      String lessonTitle,
      String lessonDescription,
      String? classroomName,
      DateTime startTime,
      DateTime endTime,
      String? uploadFile,
      TeacherHomeworkStats stats,
      List<TeacherHomeworkSubmission> submissions});

  @override
  $TeacherHomeworkStatsCopyWith<$Res> get stats;
}

/// @nodoc
class __$$TeacherHomeworkDetailImplCopyWithImpl<$Res>
    extends _$TeacherHomeworkDetailCopyWithImpl<$Res,
        _$TeacherHomeworkDetailImpl>
    implements _$$TeacherHomeworkDetailImplCopyWith<$Res> {
  __$$TeacherHomeworkDetailImplCopyWithImpl(_$TeacherHomeworkDetailImpl _value,
      $Res Function(_$TeacherHomeworkDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherHomeworkDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeworkId = null,
    Object? homeworkDescription = null,
    Object? lessonId = null,
    Object? lessonTitle = null,
    Object? lessonDescription = null,
    Object? classroomName = freezed,
    Object? startTime = null,
    Object? endTime = null,
    Object? uploadFile = freezed,
    Object? stats = null,
    Object? submissions = null,
  }) {
    return _then(_$TeacherHomeworkDetailImpl(
      homeworkId: null == homeworkId
          ? _value.homeworkId
          : homeworkId // ignore: cast_nullable_to_non_nullable
              as int,
      homeworkDescription: null == homeworkDescription
          ? _value.homeworkDescription
          : homeworkDescription // ignore: cast_nullable_to_non_nullable
              as String,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as int,
      lessonTitle: null == lessonTitle
          ? _value.lessonTitle
          : lessonTitle // ignore: cast_nullable_to_non_nullable
              as String,
      lessonDescription: null == lessonDescription
          ? _value.lessonDescription
          : lessonDescription // ignore: cast_nullable_to_non_nullable
              as String,
      classroomName: freezed == classroomName
          ? _value.classroomName
          : classroomName // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      uploadFile: freezed == uploadFile
          ? _value.uploadFile
          : uploadFile // ignore: cast_nullable_to_non_nullable
              as String?,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as TeacherHomeworkStats,
      submissions: null == submissions
          ? _value._submissions
          : submissions // ignore: cast_nullable_to_non_nullable
              as List<TeacherHomeworkSubmission>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherHomeworkDetailImpl implements _TeacherHomeworkDetail {
  const _$TeacherHomeworkDetailImpl(
      {required this.homeworkId,
      required this.homeworkDescription,
      required this.lessonId,
      required this.lessonTitle,
      required this.lessonDescription,
      this.classroomName,
      required this.startTime,
      required this.endTime,
      this.uploadFile,
      required this.stats,
      required final List<TeacherHomeworkSubmission> submissions})
      : _submissions = submissions;

  factory _$TeacherHomeworkDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherHomeworkDetailImplFromJson(json);

  @override
  final int homeworkId;
  @override
  final String homeworkDescription;
  @override
  final int lessonId;
  @override
  final String lessonTitle;
  @override
  final String lessonDescription;
  @override
  final String? classroomName;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final String? uploadFile;
  @override
  final TeacherHomeworkStats stats;
  final List<TeacherHomeworkSubmission> _submissions;
  @override
  List<TeacherHomeworkSubmission> get submissions {
    if (_submissions is EqualUnmodifiableListView) return _submissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_submissions);
  }

  @override
  String toString() {
    return 'TeacherHomeworkDetail(homeworkId: $homeworkId, homeworkDescription: $homeworkDescription, lessonId: $lessonId, lessonTitle: $lessonTitle, lessonDescription: $lessonDescription, classroomName: $classroomName, startTime: $startTime, endTime: $endTime, uploadFile: $uploadFile, stats: $stats, submissions: $submissions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherHomeworkDetailImpl &&
            (identical(other.homeworkId, homeworkId) ||
                other.homeworkId == homeworkId) &&
            (identical(other.homeworkDescription, homeworkDescription) ||
                other.homeworkDescription == homeworkDescription) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.lessonTitle, lessonTitle) ||
                other.lessonTitle == lessonTitle) &&
            (identical(other.lessonDescription, lessonDescription) ||
                other.lessonDescription == lessonDescription) &&
            (identical(other.classroomName, classroomName) ||
                other.classroomName == classroomName) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.uploadFile, uploadFile) ||
                other.uploadFile == uploadFile) &&
            (identical(other.stats, stats) || other.stats == stats) &&
            const DeepCollectionEquality()
                .equals(other._submissions, _submissions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      homeworkId,
      homeworkDescription,
      lessonId,
      lessonTitle,
      lessonDescription,
      classroomName,
      startTime,
      endTime,
      uploadFile,
      stats,
      const DeepCollectionEquality().hash(_submissions));

  /// Create a copy of TeacherHomeworkDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherHomeworkDetailImplCopyWith<_$TeacherHomeworkDetailImpl>
      get copyWith => __$$TeacherHomeworkDetailImplCopyWithImpl<
          _$TeacherHomeworkDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherHomeworkDetailImplToJson(
      this,
    );
  }
}

abstract class _TeacherHomeworkDetail implements TeacherHomeworkDetail {
  const factory _TeacherHomeworkDetail(
          {required final int homeworkId,
          required final String homeworkDescription,
          required final int lessonId,
          required final String lessonTitle,
          required final String lessonDescription,
          final String? classroomName,
          required final DateTime startTime,
          required final DateTime endTime,
          final String? uploadFile,
          required final TeacherHomeworkStats stats,
          required final List<TeacherHomeworkSubmission> submissions}) =
      _$TeacherHomeworkDetailImpl;

  factory _TeacherHomeworkDetail.fromJson(Map<String, dynamic> json) =
      _$TeacherHomeworkDetailImpl.fromJson;

  @override
  int get homeworkId;
  @override
  String get homeworkDescription;
  @override
  int get lessonId;
  @override
  String get lessonTitle;
  @override
  String get lessonDescription;
  @override
  String? get classroomName;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  String? get uploadFile;
  @override
  TeacherHomeworkStats get stats;
  @override
  List<TeacherHomeworkSubmission> get submissions;

  /// Create a copy of TeacherHomeworkDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherHomeworkDetailImplCopyWith<_$TeacherHomeworkDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TeacherHomeworkSubmission _$TeacherHomeworkSubmissionFromJson(
    Map<String, dynamic> json) {
  return _TeacherHomeworkSubmission.fromJson(json);
}

/// @nodoc
mixin _$TeacherHomeworkSubmission {
  @JsonKey(name: 'submission_id')
  int get submissionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_id')
  int get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_name')
  String get studentName => throw _privateConstructorUsedError;
  @JsonKey(name: 'submission_time')
  DateTime? get submissionTime => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  int? get grade => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'status',
      fromJson: _parseSubmissionStatus,
      defaultValue: SubmissionStatus.pending)
  SubmissionStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_Attachment')
  bool get hasAttachment => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_file_urls')
  List<String>? get uploadFileUrls => throw _privateConstructorUsedError;

  /// Serializes this TeacherHomeworkSubmission to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeacherHomeworkSubmission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherHomeworkSubmissionCopyWith<TeacherHomeworkSubmission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherHomeworkSubmissionCopyWith<$Res> {
  factory $TeacherHomeworkSubmissionCopyWith(TeacherHomeworkSubmission value,
          $Res Function(TeacherHomeworkSubmission) then) =
      _$TeacherHomeworkSubmissionCopyWithImpl<$Res, TeacherHomeworkSubmission>;
  @useResult
  $Res call(
      {@JsonKey(name: 'submission_id') int submissionId,
      @JsonKey(name: 'student_id') int studentId,
      @JsonKey(name: 'student_name') String studentName,
      @JsonKey(name: 'submission_time') DateTime? submissionTime,
      String? comment,
      @JsonKey(name: 'rating') int? grade,
      @JsonKey(
          name: 'status',
          fromJson: _parseSubmissionStatus,
          defaultValue: SubmissionStatus.pending)
      SubmissionStatus status,
      @JsonKey(name: 'has_Attachment') bool hasAttachment,
      @JsonKey(name: 'upload_file_urls') List<String>? uploadFileUrls});
}

/// @nodoc
class _$TeacherHomeworkSubmissionCopyWithImpl<$Res,
        $Val extends TeacherHomeworkSubmission>
    implements $TeacherHomeworkSubmissionCopyWith<$Res> {
  _$TeacherHomeworkSubmissionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherHomeworkSubmission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submissionId = null,
    Object? studentId = null,
    Object? studentName = null,
    Object? submissionTime = freezed,
    Object? comment = freezed,
    Object? grade = freezed,
    Object? status = null,
    Object? hasAttachment = null,
    Object? uploadFileUrls = freezed,
  }) {
    return _then(_value.copyWith(
      submissionId: null == submissionId
          ? _value.submissionId
          : submissionId // ignore: cast_nullable_to_non_nullable
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
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SubmissionStatus,
      hasAttachment: null == hasAttachment
          ? _value.hasAttachment
          : hasAttachment // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadFileUrls: freezed == uploadFileUrls
          ? _value.uploadFileUrls
          : uploadFileUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherHomeworkSubmissionImplCopyWith<$Res>
    implements $TeacherHomeworkSubmissionCopyWith<$Res> {
  factory _$$TeacherHomeworkSubmissionImplCopyWith(
          _$TeacherHomeworkSubmissionImpl value,
          $Res Function(_$TeacherHomeworkSubmissionImpl) then) =
      __$$TeacherHomeworkSubmissionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'submission_id') int submissionId,
      @JsonKey(name: 'student_id') int studentId,
      @JsonKey(name: 'student_name') String studentName,
      @JsonKey(name: 'submission_time') DateTime? submissionTime,
      String? comment,
      @JsonKey(name: 'rating') int? grade,
      @JsonKey(
          name: 'status',
          fromJson: _parseSubmissionStatus,
          defaultValue: SubmissionStatus.pending)
      SubmissionStatus status,
      @JsonKey(name: 'has_Attachment') bool hasAttachment,
      @JsonKey(name: 'upload_file_urls') List<String>? uploadFileUrls});
}

/// @nodoc
class __$$TeacherHomeworkSubmissionImplCopyWithImpl<$Res>
    extends _$TeacherHomeworkSubmissionCopyWithImpl<$Res,
        _$TeacherHomeworkSubmissionImpl>
    implements _$$TeacherHomeworkSubmissionImplCopyWith<$Res> {
  __$$TeacherHomeworkSubmissionImplCopyWithImpl(
      _$TeacherHomeworkSubmissionImpl _value,
      $Res Function(_$TeacherHomeworkSubmissionImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherHomeworkSubmission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submissionId = null,
    Object? studentId = null,
    Object? studentName = null,
    Object? submissionTime = freezed,
    Object? comment = freezed,
    Object? grade = freezed,
    Object? status = null,
    Object? hasAttachment = null,
    Object? uploadFileUrls = freezed,
  }) {
    return _then(_$TeacherHomeworkSubmissionImpl(
      submissionId: null == submissionId
          ? _value.submissionId
          : submissionId // ignore: cast_nullable_to_non_nullable
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
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SubmissionStatus,
      hasAttachment: null == hasAttachment
          ? _value.hasAttachment
          : hasAttachment // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadFileUrls: freezed == uploadFileUrls
          ? _value._uploadFileUrls
          : uploadFileUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherHomeworkSubmissionImpl implements _TeacherHomeworkSubmission {
  const _$TeacherHomeworkSubmissionImpl(
      {@JsonKey(name: 'submission_id') required this.submissionId,
      @JsonKey(name: 'student_id') required this.studentId,
      @JsonKey(name: 'student_name') required this.studentName,
      @JsonKey(name: 'submission_time') this.submissionTime,
      this.comment,
      @JsonKey(name: 'rating') this.grade,
      @JsonKey(
          name: 'status',
          fromJson: _parseSubmissionStatus,
          defaultValue: SubmissionStatus.pending)
      required this.status,
      @JsonKey(name: 'has_Attachment') required this.hasAttachment,
      @JsonKey(name: 'upload_file_urls') final List<String>? uploadFileUrls})
      : _uploadFileUrls = uploadFileUrls;

  factory _$TeacherHomeworkSubmissionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherHomeworkSubmissionImplFromJson(json);

  @override
  @JsonKey(name: 'submission_id')
  final int submissionId;
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
  final String? comment;
  @override
  @JsonKey(name: 'rating')
  final int? grade;
  @override
  @JsonKey(
      name: 'status',
      fromJson: _parseSubmissionStatus,
      defaultValue: SubmissionStatus.pending)
  final SubmissionStatus status;
  @override
  @JsonKey(name: 'has_Attachment')
  final bool hasAttachment;
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
  String toString() {
    return 'TeacherHomeworkSubmission(submissionId: $submissionId, studentId: $studentId, studentName: $studentName, submissionTime: $submissionTime, comment: $comment, grade: $grade, status: $status, hasAttachment: $hasAttachment, uploadFileUrls: $uploadFileUrls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherHomeworkSubmissionImpl &&
            (identical(other.submissionId, submissionId) ||
                other.submissionId == submissionId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.submissionTime, submissionTime) ||
                other.submissionTime == submissionTime) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.hasAttachment, hasAttachment) ||
                other.hasAttachment == hasAttachment) &&
            const DeepCollectionEquality()
                .equals(other._uploadFileUrls, _uploadFileUrls));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      submissionId,
      studentId,
      studentName,
      submissionTime,
      comment,
      grade,
      status,
      hasAttachment,
      const DeepCollectionEquality().hash(_uploadFileUrls));

  /// Create a copy of TeacherHomeworkSubmission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherHomeworkSubmissionImplCopyWith<_$TeacherHomeworkSubmissionImpl>
      get copyWith => __$$TeacherHomeworkSubmissionImplCopyWithImpl<
          _$TeacherHomeworkSubmissionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherHomeworkSubmissionImplToJson(
      this,
    );
  }
}

abstract class _TeacherHomeworkSubmission implements TeacherHomeworkSubmission {
  const factory _TeacherHomeworkSubmission(
      {@JsonKey(name: 'submission_id') required final int submissionId,
      @JsonKey(name: 'student_id') required final int studentId,
      @JsonKey(name: 'student_name') required final String studentName,
      @JsonKey(name: 'submission_time') final DateTime? submissionTime,
      final String? comment,
      @JsonKey(name: 'rating') final int? grade,
      @JsonKey(
          name: 'status',
          fromJson: _parseSubmissionStatus,
          defaultValue: SubmissionStatus.pending)
      required final SubmissionStatus status,
      @JsonKey(name: 'has_Attachment') required final bool hasAttachment,
      @JsonKey(name: 'upload_file_urls')
      final List<String>? uploadFileUrls}) = _$TeacherHomeworkSubmissionImpl;

  factory _TeacherHomeworkSubmission.fromJson(Map<String, dynamic> json) =
      _$TeacherHomeworkSubmissionImpl.fromJson;

  @override
  @JsonKey(name: 'submission_id')
  int get submissionId;
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
  String? get comment;
  @override
  @JsonKey(name: 'rating')
  int? get grade;
  @override
  @JsonKey(
      name: 'status',
      fromJson: _parseSubmissionStatus,
      defaultValue: SubmissionStatus.pending)
  SubmissionStatus get status;
  @override
  @JsonKey(name: 'has_Attachment')
  bool get hasAttachment;
  @override
  @JsonKey(name: 'upload_file_urls')
  List<String>? get uploadFileUrls;

  /// Create a copy of TeacherHomeworkSubmission
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherHomeworkSubmissionImplCopyWith<_$TeacherHomeworkSubmissionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
