// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttendanceCourseRecord _$AttendanceCourseRecordFromJson(
    Map<String, dynamic> json) {
  return _AttendanceCourseRecord.fromJson(json);
}

/// @nodoc
mixin _$AttendanceCourseRecord {
  String get id => throw _privateConstructorUsedError;
  String get courseId => throw _privateConstructorUsedError;
  String get courseName => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  String get classroom => throw _privateConstructorUsedError;
  String get teacherName => throw _privateConstructorUsedError;
  AttendanceStatus get status => throw _privateConstructorUsedError;
  LeaveRequestRecord? get leaveRequest => throw _privateConstructorUsedError;

  /// Serializes this AttendanceCourseRecord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceCourseRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceCourseRecordCopyWith<AttendanceCourseRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceCourseRecordCopyWith<$Res> {
  factory $AttendanceCourseRecordCopyWith(AttendanceCourseRecord value,
          $Res Function(AttendanceCourseRecord) then) =
      _$AttendanceCourseRecordCopyWithImpl<$Res, AttendanceCourseRecord>;
  @useResult
  $Res call(
      {String id,
      String courseId,
      String courseName,
      DateTime startTime,
      DateTime endTime,
      String classroom,
      String teacherName,
      AttendanceStatus status,
      LeaveRequestRecord? leaveRequest});

  $LeaveRequestRecordCopyWith<$Res>? get leaveRequest;
}

/// @nodoc
class _$AttendanceCourseRecordCopyWithImpl<$Res,
        $Val extends AttendanceCourseRecord>
    implements $AttendanceCourseRecordCopyWith<$Res> {
  _$AttendanceCourseRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceCourseRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? courseName = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? classroom = null,
    Object? teacherName = null,
    Object? status = null,
    Object? leaveRequest = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      classroom: null == classroom
          ? _value.classroom
          : classroom // ignore: cast_nullable_to_non_nullable
              as String,
      teacherName: null == teacherName
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AttendanceStatus,
      leaveRequest: freezed == leaveRequest
          ? _value.leaveRequest
          : leaveRequest // ignore: cast_nullable_to_non_nullable
              as LeaveRequestRecord?,
    ) as $Val);
  }

  /// Create a copy of AttendanceCourseRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeaveRequestRecordCopyWith<$Res>? get leaveRequest {
    if (_value.leaveRequest == null) {
      return null;
    }

    return $LeaveRequestRecordCopyWith<$Res>(_value.leaveRequest!, (value) {
      return _then(_value.copyWith(leaveRequest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttendanceCourseRecordImplCopyWith<$Res>
    implements $AttendanceCourseRecordCopyWith<$Res> {
  factory _$$AttendanceCourseRecordImplCopyWith(
          _$AttendanceCourseRecordImpl value,
          $Res Function(_$AttendanceCourseRecordImpl) then) =
      __$$AttendanceCourseRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String courseId,
      String courseName,
      DateTime startTime,
      DateTime endTime,
      String classroom,
      String teacherName,
      AttendanceStatus status,
      LeaveRequestRecord? leaveRequest});

  @override
  $LeaveRequestRecordCopyWith<$Res>? get leaveRequest;
}

/// @nodoc
class __$$AttendanceCourseRecordImplCopyWithImpl<$Res>
    extends _$AttendanceCourseRecordCopyWithImpl<$Res,
        _$AttendanceCourseRecordImpl>
    implements _$$AttendanceCourseRecordImplCopyWith<$Res> {
  __$$AttendanceCourseRecordImplCopyWithImpl(
      _$AttendanceCourseRecordImpl _value,
      $Res Function(_$AttendanceCourseRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceCourseRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? courseName = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? classroom = null,
    Object? teacherName = null,
    Object? status = null,
    Object? leaveRequest = freezed,
  }) {
    return _then(_$AttendanceCourseRecordImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      classroom: null == classroom
          ? _value.classroom
          : classroom // ignore: cast_nullable_to_non_nullable
              as String,
      teacherName: null == teacherName
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AttendanceStatus,
      leaveRequest: freezed == leaveRequest
          ? _value.leaveRequest
          : leaveRequest // ignore: cast_nullable_to_non_nullable
              as LeaveRequestRecord?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceCourseRecordImpl implements _AttendanceCourseRecord {
  const _$AttendanceCourseRecordImpl(
      {required this.id,
      required this.courseId,
      required this.courseName,
      required this.startTime,
      required this.endTime,
      required this.classroom,
      required this.teacherName,
      required this.status,
      this.leaveRequest});

  factory _$AttendanceCourseRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceCourseRecordImplFromJson(json);

  @override
  final String id;
  @override
  final String courseId;
  @override
  final String courseName;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final String classroom;
  @override
  final String teacherName;
  @override
  final AttendanceStatus status;
  @override
  final LeaveRequestRecord? leaveRequest;

  @override
  String toString() {
    return 'AttendanceCourseRecord(id: $id, courseId: $courseId, courseName: $courseName, startTime: $startTime, endTime: $endTime, classroom: $classroom, teacherName: $teacherName, status: $status, leaveRequest: $leaveRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceCourseRecordImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.classroom, classroom) ||
                other.classroom == classroom) &&
            (identical(other.teacherName, teacherName) ||
                other.teacherName == teacherName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.leaveRequest, leaveRequest) ||
                other.leaveRequest == leaveRequest));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, courseId, courseName,
      startTime, endTime, classroom, teacherName, status, leaveRequest);

  /// Create a copy of AttendanceCourseRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceCourseRecordImplCopyWith<_$AttendanceCourseRecordImpl>
      get copyWith => __$$AttendanceCourseRecordImplCopyWithImpl<
          _$AttendanceCourseRecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceCourseRecordImplToJson(
      this,
    );
  }
}

abstract class _AttendanceCourseRecord implements AttendanceCourseRecord {
  const factory _AttendanceCourseRecord(
      {required final String id,
      required final String courseId,
      required final String courseName,
      required final DateTime startTime,
      required final DateTime endTime,
      required final String classroom,
      required final String teacherName,
      required final AttendanceStatus status,
      final LeaveRequestRecord? leaveRequest}) = _$AttendanceCourseRecordImpl;

  factory _AttendanceCourseRecord.fromJson(Map<String, dynamic> json) =
      _$AttendanceCourseRecordImpl.fromJson;

  @override
  String get id;
  @override
  String get courseId;
  @override
  String get courseName;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  String get classroom;
  @override
  String get teacherName;
  @override
  AttendanceStatus get status;
  @override
  LeaveRequestRecord? get leaveRequest;

  /// Create a copy of AttendanceCourseRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceCourseRecordImplCopyWith<_$AttendanceCourseRecordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LeaveRequestRecord _$LeaveRequestRecordFromJson(Map<String, dynamic> json) {
  return _LeaveRequestRecord.fromJson(json);
}

/// @nodoc
mixin _$LeaveRequestRecord {
  String get id => throw _privateConstructorUsedError;
  String get attendanceRecordId => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  DateTime get requestTime => throw _privateConstructorUsedError;
  LeaveStatus get status => throw _privateConstructorUsedError;
  DateTime? get reviewTime => throw _privateConstructorUsedError;
  String? get reviewNote => throw _privateConstructorUsedError;

  /// Serializes this LeaveRequestRecord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaveRequestRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaveRequestRecordCopyWith<LeaveRequestRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveRequestRecordCopyWith<$Res> {
  factory $LeaveRequestRecordCopyWith(
          LeaveRequestRecord value, $Res Function(LeaveRequestRecord) then) =
      _$LeaveRequestRecordCopyWithImpl<$Res, LeaveRequestRecord>;
  @useResult
  $Res call(
      {String id,
      String attendanceRecordId,
      String reason,
      DateTime requestTime,
      LeaveStatus status,
      DateTime? reviewTime,
      String? reviewNote});
}

/// @nodoc
class _$LeaveRequestRecordCopyWithImpl<$Res, $Val extends LeaveRequestRecord>
    implements $LeaveRequestRecordCopyWith<$Res> {
  _$LeaveRequestRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaveRequestRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attendanceRecordId = null,
    Object? reason = null,
    Object? requestTime = null,
    Object? status = null,
    Object? reviewTime = freezed,
    Object? reviewNote = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      attendanceRecordId: null == attendanceRecordId
          ? _value.attendanceRecordId
          : attendanceRecordId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      requestTime: null == requestTime
          ? _value.requestTime
          : requestTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LeaveStatus,
      reviewTime: freezed == reviewTime
          ? _value.reviewTime
          : reviewTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewNote: freezed == reviewNote
          ? _value.reviewNote
          : reviewNote // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaveRequestRecordImplCopyWith<$Res>
    implements $LeaveRequestRecordCopyWith<$Res> {
  factory _$$LeaveRequestRecordImplCopyWith(_$LeaveRequestRecordImpl value,
          $Res Function(_$LeaveRequestRecordImpl) then) =
      __$$LeaveRequestRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String attendanceRecordId,
      String reason,
      DateTime requestTime,
      LeaveStatus status,
      DateTime? reviewTime,
      String? reviewNote});
}

/// @nodoc
class __$$LeaveRequestRecordImplCopyWithImpl<$Res>
    extends _$LeaveRequestRecordCopyWithImpl<$Res, _$LeaveRequestRecordImpl>
    implements _$$LeaveRequestRecordImplCopyWith<$Res> {
  __$$LeaveRequestRecordImplCopyWithImpl(_$LeaveRequestRecordImpl _value,
      $Res Function(_$LeaveRequestRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaveRequestRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attendanceRecordId = null,
    Object? reason = null,
    Object? requestTime = null,
    Object? status = null,
    Object? reviewTime = freezed,
    Object? reviewNote = freezed,
  }) {
    return _then(_$LeaveRequestRecordImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      attendanceRecordId: null == attendanceRecordId
          ? _value.attendanceRecordId
          : attendanceRecordId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      requestTime: null == requestTime
          ? _value.requestTime
          : requestTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LeaveStatus,
      reviewTime: freezed == reviewTime
          ? _value.reviewTime
          : reviewTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewNote: freezed == reviewNote
          ? _value.reviewNote
          : reviewNote // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveRequestRecordImpl implements _LeaveRequestRecord {
  const _$LeaveRequestRecordImpl(
      {required this.id,
      required this.attendanceRecordId,
      required this.reason,
      required this.requestTime,
      required this.status,
      this.reviewTime,
      this.reviewNote});

  factory _$LeaveRequestRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveRequestRecordImplFromJson(json);

  @override
  final String id;
  @override
  final String attendanceRecordId;
  @override
  final String reason;
  @override
  final DateTime requestTime;
  @override
  final LeaveStatus status;
  @override
  final DateTime? reviewTime;
  @override
  final String? reviewNote;

  @override
  String toString() {
    return 'LeaveRequestRecord(id: $id, attendanceRecordId: $attendanceRecordId, reason: $reason, requestTime: $requestTime, status: $status, reviewTime: $reviewTime, reviewNote: $reviewNote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveRequestRecordImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.attendanceRecordId, attendanceRecordId) ||
                other.attendanceRecordId == attendanceRecordId) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.requestTime, requestTime) ||
                other.requestTime == requestTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.reviewTime, reviewTime) ||
                other.reviewTime == reviewTime) &&
            (identical(other.reviewNote, reviewNote) ||
                other.reviewNote == reviewNote));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, attendanceRecordId, reason,
      requestTime, status, reviewTime, reviewNote);

  /// Create a copy of LeaveRequestRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveRequestRecordImplCopyWith<_$LeaveRequestRecordImpl> get copyWith =>
      __$$LeaveRequestRecordImplCopyWithImpl<_$LeaveRequestRecordImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveRequestRecordImplToJson(
      this,
    );
  }
}

abstract class _LeaveRequestRecord implements LeaveRequestRecord {
  const factory _LeaveRequestRecord(
      {required final String id,
      required final String attendanceRecordId,
      required final String reason,
      required final DateTime requestTime,
      required final LeaveStatus status,
      final DateTime? reviewTime,
      final String? reviewNote}) = _$LeaveRequestRecordImpl;

  factory _LeaveRequestRecord.fromJson(Map<String, dynamic> json) =
      _$LeaveRequestRecordImpl.fromJson;

  @override
  String get id;
  @override
  String get attendanceRecordId;
  @override
  String get reason;
  @override
  DateTime get requestTime;
  @override
  LeaveStatus get status;
  @override
  DateTime? get reviewTime;
  @override
  String? get reviewNote;

  /// Create a copy of LeaveRequestRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveRequestRecordImplCopyWith<_$LeaveRequestRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttendanceStatistics _$AttendanceStatisticsFromJson(Map<String, dynamic> json) {
  return _AttendanceStatistics.fromJson(json);
}

/// @nodoc
mixin _$AttendanceStatistics {
  int get totalClasses => throw _privateConstructorUsedError;
  int get presentCount => throw _privateConstructorUsedError;
  int get absentCount => throw _privateConstructorUsedError;
  int get lateCount => throw _privateConstructorUsedError;
  int get leaveCount => throw _privateConstructorUsedError;
  double get attendanceRate => throw _privateConstructorUsedError;

  /// Serializes this AttendanceStatistics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceStatisticsCopyWith<AttendanceStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceStatisticsCopyWith<$Res> {
  factory $AttendanceStatisticsCopyWith(AttendanceStatistics value,
          $Res Function(AttendanceStatistics) then) =
      _$AttendanceStatisticsCopyWithImpl<$Res, AttendanceStatistics>;
  @useResult
  $Res call(
      {int totalClasses,
      int presentCount,
      int absentCount,
      int lateCount,
      int leaveCount,
      double attendanceRate});
}

/// @nodoc
class _$AttendanceStatisticsCopyWithImpl<$Res,
        $Val extends AttendanceStatistics>
    implements $AttendanceStatisticsCopyWith<$Res> {
  _$AttendanceStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalClasses = null,
    Object? presentCount = null,
    Object? absentCount = null,
    Object? lateCount = null,
    Object? leaveCount = null,
    Object? attendanceRate = null,
  }) {
    return _then(_value.copyWith(
      totalClasses: null == totalClasses
          ? _value.totalClasses
          : totalClasses // ignore: cast_nullable_to_non_nullable
              as int,
      presentCount: null == presentCount
          ? _value.presentCount
          : presentCount // ignore: cast_nullable_to_non_nullable
              as int,
      absentCount: null == absentCount
          ? _value.absentCount
          : absentCount // ignore: cast_nullable_to_non_nullable
              as int,
      lateCount: null == lateCount
          ? _value.lateCount
          : lateCount // ignore: cast_nullable_to_non_nullable
              as int,
      leaveCount: null == leaveCount
          ? _value.leaveCount
          : leaveCount // ignore: cast_nullable_to_non_nullable
              as int,
      attendanceRate: null == attendanceRate
          ? _value.attendanceRate
          : attendanceRate // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendanceStatisticsImplCopyWith<$Res>
    implements $AttendanceStatisticsCopyWith<$Res> {
  factory _$$AttendanceStatisticsImplCopyWith(_$AttendanceStatisticsImpl value,
          $Res Function(_$AttendanceStatisticsImpl) then) =
      __$$AttendanceStatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalClasses,
      int presentCount,
      int absentCount,
      int lateCount,
      int leaveCount,
      double attendanceRate});
}

/// @nodoc
class __$$AttendanceStatisticsImplCopyWithImpl<$Res>
    extends _$AttendanceStatisticsCopyWithImpl<$Res, _$AttendanceStatisticsImpl>
    implements _$$AttendanceStatisticsImplCopyWith<$Res> {
  __$$AttendanceStatisticsImplCopyWithImpl(_$AttendanceStatisticsImpl _value,
      $Res Function(_$AttendanceStatisticsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalClasses = null,
    Object? presentCount = null,
    Object? absentCount = null,
    Object? lateCount = null,
    Object? leaveCount = null,
    Object? attendanceRate = null,
  }) {
    return _then(_$AttendanceStatisticsImpl(
      totalClasses: null == totalClasses
          ? _value.totalClasses
          : totalClasses // ignore: cast_nullable_to_non_nullable
              as int,
      presentCount: null == presentCount
          ? _value.presentCount
          : presentCount // ignore: cast_nullable_to_non_nullable
              as int,
      absentCount: null == absentCount
          ? _value.absentCount
          : absentCount // ignore: cast_nullable_to_non_nullable
              as int,
      lateCount: null == lateCount
          ? _value.lateCount
          : lateCount // ignore: cast_nullable_to_non_nullable
              as int,
      leaveCount: null == leaveCount
          ? _value.leaveCount
          : leaveCount // ignore: cast_nullable_to_non_nullable
              as int,
      attendanceRate: null == attendanceRate
          ? _value.attendanceRate
          : attendanceRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceStatisticsImpl implements _AttendanceStatistics {
  const _$AttendanceStatisticsImpl(
      {required this.totalClasses,
      required this.presentCount,
      required this.absentCount,
      required this.lateCount,
      required this.leaveCount,
      required this.attendanceRate});

  factory _$AttendanceStatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceStatisticsImplFromJson(json);

  @override
  final int totalClasses;
  @override
  final int presentCount;
  @override
  final int absentCount;
  @override
  final int lateCount;
  @override
  final int leaveCount;
  @override
  final double attendanceRate;

  @override
  String toString() {
    return 'AttendanceStatistics(totalClasses: $totalClasses, presentCount: $presentCount, absentCount: $absentCount, lateCount: $lateCount, leaveCount: $leaveCount, attendanceRate: $attendanceRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceStatisticsImpl &&
            (identical(other.totalClasses, totalClasses) ||
                other.totalClasses == totalClasses) &&
            (identical(other.presentCount, presentCount) ||
                other.presentCount == presentCount) &&
            (identical(other.absentCount, absentCount) ||
                other.absentCount == absentCount) &&
            (identical(other.lateCount, lateCount) ||
                other.lateCount == lateCount) &&
            (identical(other.leaveCount, leaveCount) ||
                other.leaveCount == leaveCount) &&
            (identical(other.attendanceRate, attendanceRate) ||
                other.attendanceRate == attendanceRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalClasses, presentCount,
      absentCount, lateCount, leaveCount, attendanceRate);

  /// Create a copy of AttendanceStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceStatisticsImplCopyWith<_$AttendanceStatisticsImpl>
      get copyWith =>
          __$$AttendanceStatisticsImplCopyWithImpl<_$AttendanceStatisticsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceStatisticsImplToJson(
      this,
    );
  }
}

abstract class _AttendanceStatistics implements AttendanceStatistics {
  const factory _AttendanceStatistics(
      {required final int totalClasses,
      required final int presentCount,
      required final int absentCount,
      required final int lateCount,
      required final int leaveCount,
      required final double attendanceRate}) = _$AttendanceStatisticsImpl;

  factory _AttendanceStatistics.fromJson(Map<String, dynamic> json) =
      _$AttendanceStatisticsImpl.fromJson;

  @override
  int get totalClasses;
  @override
  int get presentCount;
  @override
  int get absentCount;
  @override
  int get lateCount;
  @override
  int get leaveCount;
  @override
  double get attendanceRate;

  /// Create a copy of AttendanceStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceStatisticsImplCopyWith<_$AttendanceStatisticsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LeaveRequestForm _$LeaveRequestFormFromJson(Map<String, dynamic> json) {
  return _LeaveRequestForm.fromJson(json);
}

/// @nodoc
mixin _$LeaveRequestForm {
  String get attendanceRecordId => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  DateTime get requestTime => throw _privateConstructorUsedError;

  /// Serializes this LeaveRequestForm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaveRequestForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaveRequestFormCopyWith<LeaveRequestForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveRequestFormCopyWith<$Res> {
  factory $LeaveRequestFormCopyWith(
          LeaveRequestForm value, $Res Function(LeaveRequestForm) then) =
      _$LeaveRequestFormCopyWithImpl<$Res, LeaveRequestForm>;
  @useResult
  $Res call({String attendanceRecordId, String reason, DateTime requestTime});
}

/// @nodoc
class _$LeaveRequestFormCopyWithImpl<$Res, $Val extends LeaveRequestForm>
    implements $LeaveRequestFormCopyWith<$Res> {
  _$LeaveRequestFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaveRequestForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceRecordId = null,
    Object? reason = null,
    Object? requestTime = null,
  }) {
    return _then(_value.copyWith(
      attendanceRecordId: null == attendanceRecordId
          ? _value.attendanceRecordId
          : attendanceRecordId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      requestTime: null == requestTime
          ? _value.requestTime
          : requestTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaveRequestFormImplCopyWith<$Res>
    implements $LeaveRequestFormCopyWith<$Res> {
  factory _$$LeaveRequestFormImplCopyWith(_$LeaveRequestFormImpl value,
          $Res Function(_$LeaveRequestFormImpl) then) =
      __$$LeaveRequestFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String attendanceRecordId, String reason, DateTime requestTime});
}

/// @nodoc
class __$$LeaveRequestFormImplCopyWithImpl<$Res>
    extends _$LeaveRequestFormCopyWithImpl<$Res, _$LeaveRequestFormImpl>
    implements _$$LeaveRequestFormImplCopyWith<$Res> {
  __$$LeaveRequestFormImplCopyWithImpl(_$LeaveRequestFormImpl _value,
      $Res Function(_$LeaveRequestFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaveRequestForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceRecordId = null,
    Object? reason = null,
    Object? requestTime = null,
  }) {
    return _then(_$LeaveRequestFormImpl(
      attendanceRecordId: null == attendanceRecordId
          ? _value.attendanceRecordId
          : attendanceRecordId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      requestTime: null == requestTime
          ? _value.requestTime
          : requestTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveRequestFormImpl implements _LeaveRequestForm {
  const _$LeaveRequestFormImpl(
      {required this.attendanceRecordId,
      required this.reason,
      required this.requestTime});

  factory _$LeaveRequestFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveRequestFormImplFromJson(json);

  @override
  final String attendanceRecordId;
  @override
  final String reason;
  @override
  final DateTime requestTime;

  @override
  String toString() {
    return 'LeaveRequestForm(attendanceRecordId: $attendanceRecordId, reason: $reason, requestTime: $requestTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveRequestFormImpl &&
            (identical(other.attendanceRecordId, attendanceRecordId) ||
                other.attendanceRecordId == attendanceRecordId) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.requestTime, requestTime) ||
                other.requestTime == requestTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, attendanceRecordId, reason, requestTime);

  /// Create a copy of LeaveRequestForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveRequestFormImplCopyWith<_$LeaveRequestFormImpl> get copyWith =>
      __$$LeaveRequestFormImplCopyWithImpl<_$LeaveRequestFormImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveRequestFormImplToJson(
      this,
    );
  }
}

abstract class _LeaveRequestForm implements LeaveRequestForm {
  const factory _LeaveRequestForm(
      {required final String attendanceRecordId,
      required final String reason,
      required final DateTime requestTime}) = _$LeaveRequestFormImpl;

  factory _LeaveRequestForm.fromJson(Map<String, dynamic> json) =
      _$LeaveRequestFormImpl.fromJson;

  @override
  String get attendanceRecordId;
  @override
  String get reason;
  @override
  DateTime get requestTime;

  /// Create a copy of LeaveRequestForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveRequestFormImplCopyWith<_$LeaveRequestFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
