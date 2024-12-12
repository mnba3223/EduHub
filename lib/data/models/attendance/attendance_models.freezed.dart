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

AttendanceRecord _$AttendanceRecordFromJson(Map<String, dynamic> json) {
  return _AttendanceRecord.fromJson(json);
}

/// @nodoc
mixin _$AttendanceRecord {
  @JsonKey(name: 'attendance_id')
  int get attendanceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_id')
  int get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'attendance_date')
  DateTime get attendanceDate => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'attendance_status')
  String? get attendanceStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'attendance_image')
  String? get attendanceImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_name')
  String get studentName => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_code')
  String get studentCode => throw _privateConstructorUsedError;

  /// Serializes this AttendanceRecord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceRecordCopyWith<AttendanceRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceRecordCopyWith<$Res> {
  factory $AttendanceRecordCopyWith(
          AttendanceRecord value, $Res Function(AttendanceRecord) then) =
      _$AttendanceRecordCopyWithImpl<$Res, AttendanceRecord>;
  @useResult
  $Res call(
      {@JsonKey(name: 'attendance_id') int attendanceId,
      @JsonKey(name: 'student_id') int studentId,
      @JsonKey(name: 'attendance_date') DateTime attendanceDate,
      double temperature,
      @JsonKey(name: 'attendance_status') String? attendanceStatus,
      @JsonKey(name: 'attendance_image') String? attendanceImage,
      @JsonKey(name: 'student_name') String studentName,
      @JsonKey(name: 'student_code') String studentCode});
}

/// @nodoc
class _$AttendanceRecordCopyWithImpl<$Res, $Val extends AttendanceRecord>
    implements $AttendanceRecordCopyWith<$Res> {
  _$AttendanceRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceId = null,
    Object? studentId = null,
    Object? attendanceDate = null,
    Object? temperature = null,
    Object? attendanceStatus = freezed,
    Object? attendanceImage = freezed,
    Object? studentName = null,
    Object? studentCode = null,
  }) {
    return _then(_value.copyWith(
      attendanceId: null == attendanceId
          ? _value.attendanceId
          : attendanceId // ignore: cast_nullable_to_non_nullable
              as int,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      attendanceDate: null == attendanceDate
          ? _value.attendanceDate
          : attendanceDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      attendanceStatus: freezed == attendanceStatus
          ? _value.attendanceStatus
          : attendanceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      attendanceImage: freezed == attendanceImage
          ? _value.attendanceImage
          : attendanceImage // ignore: cast_nullable_to_non_nullable
              as String?,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendanceRecordImplCopyWith<$Res>
    implements $AttendanceRecordCopyWith<$Res> {
  factory _$$AttendanceRecordImplCopyWith(_$AttendanceRecordImpl value,
          $Res Function(_$AttendanceRecordImpl) then) =
      __$$AttendanceRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'attendance_id') int attendanceId,
      @JsonKey(name: 'student_id') int studentId,
      @JsonKey(name: 'attendance_date') DateTime attendanceDate,
      double temperature,
      @JsonKey(name: 'attendance_status') String? attendanceStatus,
      @JsonKey(name: 'attendance_image') String? attendanceImage,
      @JsonKey(name: 'student_name') String studentName,
      @JsonKey(name: 'student_code') String studentCode});
}

/// @nodoc
class __$$AttendanceRecordImplCopyWithImpl<$Res>
    extends _$AttendanceRecordCopyWithImpl<$Res, _$AttendanceRecordImpl>
    implements _$$AttendanceRecordImplCopyWith<$Res> {
  __$$AttendanceRecordImplCopyWithImpl(_$AttendanceRecordImpl _value,
      $Res Function(_$AttendanceRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceId = null,
    Object? studentId = null,
    Object? attendanceDate = null,
    Object? temperature = null,
    Object? attendanceStatus = freezed,
    Object? attendanceImage = freezed,
    Object? studentName = null,
    Object? studentCode = null,
  }) {
    return _then(_$AttendanceRecordImpl(
      attendanceId: null == attendanceId
          ? _value.attendanceId
          : attendanceId // ignore: cast_nullable_to_non_nullable
              as int,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      attendanceDate: null == attendanceDate
          ? _value.attendanceDate
          : attendanceDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      attendanceStatus: freezed == attendanceStatus
          ? _value.attendanceStatus
          : attendanceStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      attendanceImage: freezed == attendanceImage
          ? _value.attendanceImage
          : attendanceImage // ignore: cast_nullable_to_non_nullable
              as String?,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceRecordImpl implements _AttendanceRecord {
  const _$AttendanceRecordImpl(
      {@JsonKey(name: 'attendance_id') required this.attendanceId,
      @JsonKey(name: 'student_id') required this.studentId,
      @JsonKey(name: 'attendance_date') required this.attendanceDate,
      required this.temperature,
      @JsonKey(name: 'attendance_status') this.attendanceStatus,
      @JsonKey(name: 'attendance_image') this.attendanceImage,
      @JsonKey(name: 'student_name') required this.studentName,
      @JsonKey(name: 'student_code') required this.studentCode});

  factory _$AttendanceRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceRecordImplFromJson(json);

  @override
  @JsonKey(name: 'attendance_id')
  final int attendanceId;
  @override
  @JsonKey(name: 'student_id')
  final int studentId;
  @override
  @JsonKey(name: 'attendance_date')
  final DateTime attendanceDate;
  @override
  final double temperature;
  @override
  @JsonKey(name: 'attendance_status')
  final String? attendanceStatus;
  @override
  @JsonKey(name: 'attendance_image')
  final String? attendanceImage;
  @override
  @JsonKey(name: 'student_name')
  final String studentName;
  @override
  @JsonKey(name: 'student_code')
  final String studentCode;

  @override
  String toString() {
    return 'AttendanceRecord(attendanceId: $attendanceId, studentId: $studentId, attendanceDate: $attendanceDate, temperature: $temperature, attendanceStatus: $attendanceStatus, attendanceImage: $attendanceImage, studentName: $studentName, studentCode: $studentCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceRecordImpl &&
            (identical(other.attendanceId, attendanceId) ||
                other.attendanceId == attendanceId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.attendanceDate, attendanceDate) ||
                other.attendanceDate == attendanceDate) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.attendanceStatus, attendanceStatus) ||
                other.attendanceStatus == attendanceStatus) &&
            (identical(other.attendanceImage, attendanceImage) ||
                other.attendanceImage == attendanceImage) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      attendanceId,
      studentId,
      attendanceDate,
      temperature,
      attendanceStatus,
      attendanceImage,
      studentName,
      studentCode);

  /// Create a copy of AttendanceRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceRecordImplCopyWith<_$AttendanceRecordImpl> get copyWith =>
      __$$AttendanceRecordImplCopyWithImpl<_$AttendanceRecordImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceRecordImplToJson(
      this,
    );
  }
}

abstract class _AttendanceRecord implements AttendanceRecord {
  const factory _AttendanceRecord(
      {@JsonKey(name: 'attendance_id') required final int attendanceId,
      @JsonKey(name: 'student_id') required final int studentId,
      @JsonKey(name: 'attendance_date') required final DateTime attendanceDate,
      required final double temperature,
      @JsonKey(name: 'attendance_status') final String? attendanceStatus,
      @JsonKey(name: 'attendance_image') final String? attendanceImage,
      @JsonKey(name: 'student_name') required final String studentName,
      @JsonKey(name: 'student_code')
      required final String studentCode}) = _$AttendanceRecordImpl;

  factory _AttendanceRecord.fromJson(Map<String, dynamic> json) =
      _$AttendanceRecordImpl.fromJson;

  @override
  @JsonKey(name: 'attendance_id')
  int get attendanceId;
  @override
  @JsonKey(name: 'student_id')
  int get studentId;
  @override
  @JsonKey(name: 'attendance_date')
  DateTime get attendanceDate;
  @override
  double get temperature;
  @override
  @JsonKey(name: 'attendance_status')
  String? get attendanceStatus;
  @override
  @JsonKey(name: 'attendance_image')
  String? get attendanceImage;
  @override
  @JsonKey(name: 'student_name')
  String get studentName;
  @override
  @JsonKey(name: 'student_code')
  String get studentCode;

  /// Create a copy of AttendanceRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceRecordImplCopyWith<_$AttendanceRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StudentLeaveRecord _$StudentLeaveRecordFromJson(Map<String, dynamic> json) {
  return _StudentLeaveRecord.fromJson(json);
}

/// @nodoc
mixin _$StudentLeaveRecord {
  @JsonKey(name: 'lesson_id')
  int get lessonId => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_id')
  int get studentId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'leave_requested')
  int get leaveRequested => throw _privateConstructorUsedError;
  @JsonKey(name: 'leave_status')
  String get leaveStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'leave_reason')
  String get leaveReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'leave_request_date')
  DateTime get leaveRequestDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'adjustment_type_id')
  int get adjustmentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_name')
  String get studentName => throw _privateConstructorUsedError;
  @JsonKey(name: 'class_name')
  String get className => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_date')
  DateTime get lessonDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'adjustment_type')
  String get adjustmentType => throw _privateConstructorUsedError;
  @JsonKey(name: 'makeup_arranged')
  int get makeupArranged => throw _privateConstructorUsedError;

  /// Serializes this StudentLeaveRecord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentLeaveRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentLeaveRecordCopyWith<StudentLeaveRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentLeaveRecordCopyWith<$Res> {
  factory $StudentLeaveRecordCopyWith(
          StudentLeaveRecord value, $Res Function(StudentLeaveRecord) then) =
      _$StudentLeaveRecordCopyWithImpl<$Res, StudentLeaveRecord>;
  @useResult
  $Res call(
      {@JsonKey(name: 'lesson_id') int lessonId,
      @JsonKey(name: 'student_id') int studentId,
      String status,
      @JsonKey(name: 'leave_requested') int leaveRequested,
      @JsonKey(name: 'leave_status') String leaveStatus,
      @JsonKey(name: 'leave_reason') String leaveReason,
      @JsonKey(name: 'leave_request_date') DateTime leaveRequestDate,
      @JsonKey(name: 'adjustment_type_id') int adjustmentTypeId,
      @JsonKey(name: 'student_name') String studentName,
      @JsonKey(name: 'class_name') String className,
      @JsonKey(name: 'lesson_date') DateTime lessonDate,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String endTime,
      @JsonKey(name: 'adjustment_type') String adjustmentType,
      @JsonKey(name: 'makeup_arranged') int makeupArranged});
}

/// @nodoc
class _$StudentLeaveRecordCopyWithImpl<$Res, $Val extends StudentLeaveRecord>
    implements $StudentLeaveRecordCopyWith<$Res> {
  _$StudentLeaveRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentLeaveRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = null,
    Object? studentId = null,
    Object? status = null,
    Object? leaveRequested = null,
    Object? leaveStatus = null,
    Object? leaveReason = null,
    Object? leaveRequestDate = null,
    Object? adjustmentTypeId = null,
    Object? studentName = null,
    Object? className = null,
    Object? lessonDate = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? adjustmentType = null,
    Object? makeupArranged = null,
  }) {
    return _then(_value.copyWith(
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as int,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      leaveRequested: null == leaveRequested
          ? _value.leaveRequested
          : leaveRequested // ignore: cast_nullable_to_non_nullable
              as int,
      leaveStatus: null == leaveStatus
          ? _value.leaveStatus
          : leaveStatus // ignore: cast_nullable_to_non_nullable
              as String,
      leaveReason: null == leaveReason
          ? _value.leaveReason
          : leaveReason // ignore: cast_nullable_to_non_nullable
              as String,
      leaveRequestDate: null == leaveRequestDate
          ? _value.leaveRequestDate
          : leaveRequestDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      adjustmentTypeId: null == adjustmentTypeId
          ? _value.adjustmentTypeId
          : adjustmentTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      lessonDate: null == lessonDate
          ? _value.lessonDate
          : lessonDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      adjustmentType: null == adjustmentType
          ? _value.adjustmentType
          : adjustmentType // ignore: cast_nullable_to_non_nullable
              as String,
      makeupArranged: null == makeupArranged
          ? _value.makeupArranged
          : makeupArranged // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentLeaveRecordImplCopyWith<$Res>
    implements $StudentLeaveRecordCopyWith<$Res> {
  factory _$$StudentLeaveRecordImplCopyWith(_$StudentLeaveRecordImpl value,
          $Res Function(_$StudentLeaveRecordImpl) then) =
      __$$StudentLeaveRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'lesson_id') int lessonId,
      @JsonKey(name: 'student_id') int studentId,
      String status,
      @JsonKey(name: 'leave_requested') int leaveRequested,
      @JsonKey(name: 'leave_status') String leaveStatus,
      @JsonKey(name: 'leave_reason') String leaveReason,
      @JsonKey(name: 'leave_request_date') DateTime leaveRequestDate,
      @JsonKey(name: 'adjustment_type_id') int adjustmentTypeId,
      @JsonKey(name: 'student_name') String studentName,
      @JsonKey(name: 'class_name') String className,
      @JsonKey(name: 'lesson_date') DateTime lessonDate,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String endTime,
      @JsonKey(name: 'adjustment_type') String adjustmentType,
      @JsonKey(name: 'makeup_arranged') int makeupArranged});
}

/// @nodoc
class __$$StudentLeaveRecordImplCopyWithImpl<$Res>
    extends _$StudentLeaveRecordCopyWithImpl<$Res, _$StudentLeaveRecordImpl>
    implements _$$StudentLeaveRecordImplCopyWith<$Res> {
  __$$StudentLeaveRecordImplCopyWithImpl(_$StudentLeaveRecordImpl _value,
      $Res Function(_$StudentLeaveRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentLeaveRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = null,
    Object? studentId = null,
    Object? status = null,
    Object? leaveRequested = null,
    Object? leaveStatus = null,
    Object? leaveReason = null,
    Object? leaveRequestDate = null,
    Object? adjustmentTypeId = null,
    Object? studentName = null,
    Object? className = null,
    Object? lessonDate = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? adjustmentType = null,
    Object? makeupArranged = null,
  }) {
    return _then(_$StudentLeaveRecordImpl(
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as int,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      leaveRequested: null == leaveRequested
          ? _value.leaveRequested
          : leaveRequested // ignore: cast_nullable_to_non_nullable
              as int,
      leaveStatus: null == leaveStatus
          ? _value.leaveStatus
          : leaveStatus // ignore: cast_nullable_to_non_nullable
              as String,
      leaveReason: null == leaveReason
          ? _value.leaveReason
          : leaveReason // ignore: cast_nullable_to_non_nullable
              as String,
      leaveRequestDate: null == leaveRequestDate
          ? _value.leaveRequestDate
          : leaveRequestDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      adjustmentTypeId: null == adjustmentTypeId
          ? _value.adjustmentTypeId
          : adjustmentTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      lessonDate: null == lessonDate
          ? _value.lessonDate
          : lessonDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      adjustmentType: null == adjustmentType
          ? _value.adjustmentType
          : adjustmentType // ignore: cast_nullable_to_non_nullable
              as String,
      makeupArranged: null == makeupArranged
          ? _value.makeupArranged
          : makeupArranged // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentLeaveRecordImpl implements _StudentLeaveRecord {
  const _$StudentLeaveRecordImpl(
      {@JsonKey(name: 'lesson_id') required this.lessonId,
      @JsonKey(name: 'student_id') required this.studentId,
      required this.status,
      @JsonKey(name: 'leave_requested') required this.leaveRequested,
      @JsonKey(name: 'leave_status') required this.leaveStatus,
      @JsonKey(name: 'leave_reason') required this.leaveReason,
      @JsonKey(name: 'leave_request_date') required this.leaveRequestDate,
      @JsonKey(name: 'adjustment_type_id') required this.adjustmentTypeId,
      @JsonKey(name: 'student_name') required this.studentName,
      @JsonKey(name: 'class_name') required this.className,
      @JsonKey(name: 'lesson_date') required this.lessonDate,
      @JsonKey(name: 'start_time') required this.startTime,
      @JsonKey(name: 'end_time') required this.endTime,
      @JsonKey(name: 'adjustment_type') required this.adjustmentType,
      @JsonKey(name: 'makeup_arranged') required this.makeupArranged});

  factory _$StudentLeaveRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentLeaveRecordImplFromJson(json);

  @override
  @JsonKey(name: 'lesson_id')
  final int lessonId;
  @override
  @JsonKey(name: 'student_id')
  final int studentId;
  @override
  final String status;
  @override
  @JsonKey(name: 'leave_requested')
  final int leaveRequested;
  @override
  @JsonKey(name: 'leave_status')
  final String leaveStatus;
  @override
  @JsonKey(name: 'leave_reason')
  final String leaveReason;
  @override
  @JsonKey(name: 'leave_request_date')
  final DateTime leaveRequestDate;
  @override
  @JsonKey(name: 'adjustment_type_id')
  final int adjustmentTypeId;
  @override
  @JsonKey(name: 'student_name')
  final String studentName;
  @override
  @JsonKey(name: 'class_name')
  final String className;
  @override
  @JsonKey(name: 'lesson_date')
  final DateTime lessonDate;
  @override
  @JsonKey(name: 'start_time')
  final String startTime;
  @override
  @JsonKey(name: 'end_time')
  final String endTime;
  @override
  @JsonKey(name: 'adjustment_type')
  final String adjustmentType;
  @override
  @JsonKey(name: 'makeup_arranged')
  final int makeupArranged;

  @override
  String toString() {
    return 'StudentLeaveRecord(lessonId: $lessonId, studentId: $studentId, status: $status, leaveRequested: $leaveRequested, leaveStatus: $leaveStatus, leaveReason: $leaveReason, leaveRequestDate: $leaveRequestDate, adjustmentTypeId: $adjustmentTypeId, studentName: $studentName, className: $className, lessonDate: $lessonDate, startTime: $startTime, endTime: $endTime, adjustmentType: $adjustmentType, makeupArranged: $makeupArranged)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentLeaveRecordImpl &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.leaveRequested, leaveRequested) ||
                other.leaveRequested == leaveRequested) &&
            (identical(other.leaveStatus, leaveStatus) ||
                other.leaveStatus == leaveStatus) &&
            (identical(other.leaveReason, leaveReason) ||
                other.leaveReason == leaveReason) &&
            (identical(other.leaveRequestDate, leaveRequestDate) ||
                other.leaveRequestDate == leaveRequestDate) &&
            (identical(other.adjustmentTypeId, adjustmentTypeId) ||
                other.adjustmentTypeId == adjustmentTypeId) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.lessonDate, lessonDate) ||
                other.lessonDate == lessonDate) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.adjustmentType, adjustmentType) ||
                other.adjustmentType == adjustmentType) &&
            (identical(other.makeupArranged, makeupArranged) ||
                other.makeupArranged == makeupArranged));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lessonId,
      studentId,
      status,
      leaveRequested,
      leaveStatus,
      leaveReason,
      leaveRequestDate,
      adjustmentTypeId,
      studentName,
      className,
      lessonDate,
      startTime,
      endTime,
      adjustmentType,
      makeupArranged);

  /// Create a copy of StudentLeaveRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentLeaveRecordImplCopyWith<_$StudentLeaveRecordImpl> get copyWith =>
      __$$StudentLeaveRecordImplCopyWithImpl<_$StudentLeaveRecordImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentLeaveRecordImplToJson(
      this,
    );
  }
}

abstract class _StudentLeaveRecord implements StudentLeaveRecord {
  const factory _StudentLeaveRecord(
      {@JsonKey(name: 'lesson_id') required final int lessonId,
      @JsonKey(name: 'student_id') required final int studentId,
      required final String status,
      @JsonKey(name: 'leave_requested') required final int leaveRequested,
      @JsonKey(name: 'leave_status') required final String leaveStatus,
      @JsonKey(name: 'leave_reason') required final String leaveReason,
      @JsonKey(name: 'leave_request_date')
      required final DateTime leaveRequestDate,
      @JsonKey(name: 'adjustment_type_id') required final int adjustmentTypeId,
      @JsonKey(name: 'student_name') required final String studentName,
      @JsonKey(name: 'class_name') required final String className,
      @JsonKey(name: 'lesson_date') required final DateTime lessonDate,
      @JsonKey(name: 'start_time') required final String startTime,
      @JsonKey(name: 'end_time') required final String endTime,
      @JsonKey(name: 'adjustment_type') required final String adjustmentType,
      @JsonKey(name: 'makeup_arranged')
      required final int makeupArranged}) = _$StudentLeaveRecordImpl;

  factory _StudentLeaveRecord.fromJson(Map<String, dynamic> json) =
      _$StudentLeaveRecordImpl.fromJson;

  @override
  @JsonKey(name: 'lesson_id')
  int get lessonId;
  @override
  @JsonKey(name: 'student_id')
  int get studentId;
  @override
  String get status;
  @override
  @JsonKey(name: 'leave_requested')
  int get leaveRequested;
  @override
  @JsonKey(name: 'leave_status')
  String get leaveStatus;
  @override
  @JsonKey(name: 'leave_reason')
  String get leaveReason;
  @override
  @JsonKey(name: 'leave_request_date')
  DateTime get leaveRequestDate;
  @override
  @JsonKey(name: 'adjustment_type_id')
  int get adjustmentTypeId;
  @override
  @JsonKey(name: 'student_name')
  String get studentName;
  @override
  @JsonKey(name: 'class_name')
  String get className;
  @override
  @JsonKey(name: 'lesson_date')
  DateTime get lessonDate;
  @override
  @JsonKey(name: 'start_time')
  String get startTime;
  @override
  @JsonKey(name: 'end_time')
  String get endTime;
  @override
  @JsonKey(name: 'adjustment_type')
  String get adjustmentType;
  @override
  @JsonKey(name: 'makeup_arranged')
  int get makeupArranged;

  /// Create a copy of StudentLeaveRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentLeaveRecordImplCopyWith<_$StudentLeaveRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttendanceResponse _$AttendanceResponseFromJson(Map<String, dynamic> json) {
  return _AttendanceResponse.fromJson(json);
}

/// @nodoc
mixin _$AttendanceResponse {
  List<AttendanceRecord>? get Attendance => throw _privateConstructorUsedError;
  List<StudentLeaveRecord>? get Leave => throw _privateConstructorUsedError;

  /// Serializes this AttendanceResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceResponseCopyWith<AttendanceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceResponseCopyWith<$Res> {
  factory $AttendanceResponseCopyWith(
          AttendanceResponse value, $Res Function(AttendanceResponse) then) =
      _$AttendanceResponseCopyWithImpl<$Res, AttendanceResponse>;
  @useResult
  $Res call(
      {List<AttendanceRecord>? Attendance, List<StudentLeaveRecord>? Leave});
}

/// @nodoc
class _$AttendanceResponseCopyWithImpl<$Res, $Val extends AttendanceResponse>
    implements $AttendanceResponseCopyWith<$Res> {
  _$AttendanceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Attendance = freezed,
    Object? Leave = freezed,
  }) {
    return _then(_value.copyWith(
      Attendance: freezed == Attendance
          ? _value.Attendance
          : Attendance // ignore: cast_nullable_to_non_nullable
              as List<AttendanceRecord>?,
      Leave: freezed == Leave
          ? _value.Leave
          : Leave // ignore: cast_nullable_to_non_nullable
              as List<StudentLeaveRecord>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendanceResponseImplCopyWith<$Res>
    implements $AttendanceResponseCopyWith<$Res> {
  factory _$$AttendanceResponseImplCopyWith(_$AttendanceResponseImpl value,
          $Res Function(_$AttendanceResponseImpl) then) =
      __$$AttendanceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AttendanceRecord>? Attendance, List<StudentLeaveRecord>? Leave});
}

/// @nodoc
class __$$AttendanceResponseImplCopyWithImpl<$Res>
    extends _$AttendanceResponseCopyWithImpl<$Res, _$AttendanceResponseImpl>
    implements _$$AttendanceResponseImplCopyWith<$Res> {
  __$$AttendanceResponseImplCopyWithImpl(_$AttendanceResponseImpl _value,
      $Res Function(_$AttendanceResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Attendance = freezed,
    Object? Leave = freezed,
  }) {
    return _then(_$AttendanceResponseImpl(
      Attendance: freezed == Attendance
          ? _value._Attendance
          : Attendance // ignore: cast_nullable_to_non_nullable
              as List<AttendanceRecord>?,
      Leave: freezed == Leave
          ? _value._Leave
          : Leave // ignore: cast_nullable_to_non_nullable
              as List<StudentLeaveRecord>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceResponseImpl implements _AttendanceResponse {
  const _$AttendanceResponseImpl(
      {final List<AttendanceRecord>? Attendance,
      final List<StudentLeaveRecord>? Leave})
      : _Attendance = Attendance,
        _Leave = Leave;

  factory _$AttendanceResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceResponseImplFromJson(json);

  final List<AttendanceRecord>? _Attendance;
  @override
  List<AttendanceRecord>? get Attendance {
    final value = _Attendance;
    if (value == null) return null;
    if (_Attendance is EqualUnmodifiableListView) return _Attendance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<StudentLeaveRecord>? _Leave;
  @override
  List<StudentLeaveRecord>? get Leave {
    final value = _Leave;
    if (value == null) return null;
    if (_Leave is EqualUnmodifiableListView) return _Leave;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AttendanceResponse(Attendance: $Attendance, Leave: $Leave)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._Attendance, _Attendance) &&
            const DeepCollectionEquality().equals(other._Leave, _Leave));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_Attendance),
      const DeepCollectionEquality().hash(_Leave));

  /// Create a copy of AttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceResponseImplCopyWith<_$AttendanceResponseImpl> get copyWith =>
      __$$AttendanceResponseImplCopyWithImpl<_$AttendanceResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceResponseImplToJson(
      this,
    );
  }
}

abstract class _AttendanceResponse implements AttendanceResponse {
  const factory _AttendanceResponse(
      {final List<AttendanceRecord>? Attendance,
      final List<StudentLeaveRecord>? Leave}) = _$AttendanceResponseImpl;

  factory _AttendanceResponse.fromJson(Map<String, dynamic> json) =
      _$AttendanceResponseImpl.fromJson;

  @override
  List<AttendanceRecord>? get Attendance;
  @override
  List<StudentLeaveRecord>? get Leave;

  /// Create a copy of AttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceResponseImplCopyWith<_$AttendanceResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AttendanceState {
  List<AttendanceRecord> get attendanceRecords =>
      throw _privateConstructorUsedError;
  List<StudentLeaveRecord> get leaveRecords =>
      throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceStateCopyWith<AttendanceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceStateCopyWith<$Res> {
  factory $AttendanceStateCopyWith(
          AttendanceState value, $Res Function(AttendanceState) then) =
      _$AttendanceStateCopyWithImpl<$Res, AttendanceState>;
  @useResult
  $Res call(
      {List<AttendanceRecord> attendanceRecords,
      List<StudentLeaveRecord> leaveRecords,
      DateTime? selectedDate,
      bool isLoading,
      String? error});
}

/// @nodoc
class _$AttendanceStateCopyWithImpl<$Res, $Val extends AttendanceState>
    implements $AttendanceStateCopyWith<$Res> {
  _$AttendanceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceRecords = null,
    Object? leaveRecords = null,
    Object? selectedDate = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      attendanceRecords: null == attendanceRecords
          ? _value.attendanceRecords
          : attendanceRecords // ignore: cast_nullable_to_non_nullable
              as List<AttendanceRecord>,
      leaveRecords: null == leaveRecords
          ? _value.leaveRecords
          : leaveRecords // ignore: cast_nullable_to_non_nullable
              as List<StudentLeaveRecord>,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendanceStateImplCopyWith<$Res>
    implements $AttendanceStateCopyWith<$Res> {
  factory _$$AttendanceStateImplCopyWith(_$AttendanceStateImpl value,
          $Res Function(_$AttendanceStateImpl) then) =
      __$$AttendanceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AttendanceRecord> attendanceRecords,
      List<StudentLeaveRecord> leaveRecords,
      DateTime? selectedDate,
      bool isLoading,
      String? error});
}

/// @nodoc
class __$$AttendanceStateImplCopyWithImpl<$Res>
    extends _$AttendanceStateCopyWithImpl<$Res, _$AttendanceStateImpl>
    implements _$$AttendanceStateImplCopyWith<$Res> {
  __$$AttendanceStateImplCopyWithImpl(
      _$AttendanceStateImpl _value, $Res Function(_$AttendanceStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceRecords = null,
    Object? leaveRecords = null,
    Object? selectedDate = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$AttendanceStateImpl(
      attendanceRecords: null == attendanceRecords
          ? _value._attendanceRecords
          : attendanceRecords // ignore: cast_nullable_to_non_nullable
              as List<AttendanceRecord>,
      leaveRecords: null == leaveRecords
          ? _value._leaveRecords
          : leaveRecords // ignore: cast_nullable_to_non_nullable
              as List<StudentLeaveRecord>,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AttendanceStateImpl implements _AttendanceState {
  const _$AttendanceStateImpl(
      {final List<AttendanceRecord> attendanceRecords = const [],
      final List<StudentLeaveRecord> leaveRecords = const [],
      this.selectedDate = null,
      this.isLoading = false,
      this.error})
      : _attendanceRecords = attendanceRecords,
        _leaveRecords = leaveRecords;

  final List<AttendanceRecord> _attendanceRecords;
  @override
  @JsonKey()
  List<AttendanceRecord> get attendanceRecords {
    if (_attendanceRecords is EqualUnmodifiableListView)
      return _attendanceRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attendanceRecords);
  }

  final List<StudentLeaveRecord> _leaveRecords;
  @override
  @JsonKey()
  List<StudentLeaveRecord> get leaveRecords {
    if (_leaveRecords is EqualUnmodifiableListView) return _leaveRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leaveRecords);
  }

  @override
  @JsonKey()
  final DateTime? selectedDate;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'AttendanceState(attendanceRecords: $attendanceRecords, leaveRecords: $leaveRecords, selectedDate: $selectedDate, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceStateImpl &&
            const DeepCollectionEquality()
                .equals(other._attendanceRecords, _attendanceRecords) &&
            const DeepCollectionEquality()
                .equals(other._leaveRecords, _leaveRecords) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_attendanceRecords),
      const DeepCollectionEquality().hash(_leaveRecords),
      selectedDate,
      isLoading,
      error);

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceStateImplCopyWith<_$AttendanceStateImpl> get copyWith =>
      __$$AttendanceStateImplCopyWithImpl<_$AttendanceStateImpl>(
          this, _$identity);
}

abstract class _AttendanceState implements AttendanceState {
  const factory _AttendanceState(
      {final List<AttendanceRecord> attendanceRecords,
      final List<StudentLeaveRecord> leaveRecords,
      final DateTime? selectedDate,
      final bool isLoading,
      final String? error}) = _$AttendanceStateImpl;

  @override
  List<AttendanceRecord> get attendanceRecords;
  @override
  List<StudentLeaveRecord> get leaveRecords;
  @override
  DateTime? get selectedDate;
  @override
  bool get isLoading;
  @override
  String? get error;

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceStateImplCopyWith<_$AttendanceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
