// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeaveRecord _$LeaveRecordFromJson(Map<String, dynamic> json) {
  return _LeaveRecord.fromJson(json);
}

/// @nodoc
mixin _$LeaveRecord {
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
  @JsonKey(name: 'makeup_arranged')
  int? get makeupArranged => throw _privateConstructorUsedError;

  /// Serializes this LeaveRecord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaveRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaveRecordCopyWith<LeaveRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveRecordCopyWith<$Res> {
  factory $LeaveRecordCopyWith(
          LeaveRecord value, $Res Function(LeaveRecord) then) =
      _$LeaveRecordCopyWithImpl<$Res, LeaveRecord>;
  @useResult
  $Res call(
      {@JsonKey(name: 'lesson_id') int lessonId,
      @JsonKey(name: 'student_id') int studentId,
      String status,
      @JsonKey(name: 'leave_requested') int leaveRequested,
      @JsonKey(name: 'leave_status') String leaveStatus,
      @JsonKey(name: 'leave_reason') String leaveReason,
      @JsonKey(name: 'leave_request_date') DateTime leaveRequestDate,
      @JsonKey(name: 'student_name') String studentName,
      @JsonKey(name: 'class_name') String className,
      @JsonKey(name: 'lesson_date') DateTime lessonDate,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String endTime,
      @JsonKey(name: 'makeup_arranged') int? makeupArranged});
}

/// @nodoc
class _$LeaveRecordCopyWithImpl<$Res, $Val extends LeaveRecord>
    implements $LeaveRecordCopyWith<$Res> {
  _$LeaveRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaveRecord
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
    Object? studentName = null,
    Object? className = null,
    Object? lessonDate = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? makeupArranged = freezed,
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
      makeupArranged: freezed == makeupArranged
          ? _value.makeupArranged
          : makeupArranged // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaveRecordImplCopyWith<$Res>
    implements $LeaveRecordCopyWith<$Res> {
  factory _$$LeaveRecordImplCopyWith(
          _$LeaveRecordImpl value, $Res Function(_$LeaveRecordImpl) then) =
      __$$LeaveRecordImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'student_name') String studentName,
      @JsonKey(name: 'class_name') String className,
      @JsonKey(name: 'lesson_date') DateTime lessonDate,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String endTime,
      @JsonKey(name: 'makeup_arranged') int? makeupArranged});
}

/// @nodoc
class __$$LeaveRecordImplCopyWithImpl<$Res>
    extends _$LeaveRecordCopyWithImpl<$Res, _$LeaveRecordImpl>
    implements _$$LeaveRecordImplCopyWith<$Res> {
  __$$LeaveRecordImplCopyWithImpl(
      _$LeaveRecordImpl _value, $Res Function(_$LeaveRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaveRecord
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
    Object? studentName = null,
    Object? className = null,
    Object? lessonDate = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? makeupArranged = freezed,
  }) {
    return _then(_$LeaveRecordImpl(
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
      makeupArranged: freezed == makeupArranged
          ? _value.makeupArranged
          : makeupArranged // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveRecordImpl implements _LeaveRecord {
  const _$LeaveRecordImpl(
      {@JsonKey(name: 'lesson_id') required this.lessonId,
      @JsonKey(name: 'student_id') required this.studentId,
      required this.status,
      @JsonKey(name: 'leave_requested') required this.leaveRequested,
      @JsonKey(name: 'leave_status') required this.leaveStatus,
      @JsonKey(name: 'leave_reason') required this.leaveReason,
      @JsonKey(name: 'leave_request_date') required this.leaveRequestDate,
      @JsonKey(name: 'student_name') required this.studentName,
      @JsonKey(name: 'class_name') required this.className,
      @JsonKey(name: 'lesson_date') required this.lessonDate,
      @JsonKey(name: 'start_time') required this.startTime,
      @JsonKey(name: 'end_time') required this.endTime,
      @JsonKey(name: 'makeup_arranged') this.makeupArranged});

  factory _$LeaveRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveRecordImplFromJson(json);

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
  @JsonKey(name: 'makeup_arranged')
  final int? makeupArranged;

  @override
  String toString() {
    return 'LeaveRecord(lessonId: $lessonId, studentId: $studentId, status: $status, leaveRequested: $leaveRequested, leaveStatus: $leaveStatus, leaveReason: $leaveReason, leaveRequestDate: $leaveRequestDate, studentName: $studentName, className: $className, lessonDate: $lessonDate, startTime: $startTime, endTime: $endTime, makeupArranged: $makeupArranged)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveRecordImpl &&
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
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.lessonDate, lessonDate) ||
                other.lessonDate == lessonDate) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
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
      studentName,
      className,
      lessonDate,
      startTime,
      endTime,
      makeupArranged);

  /// Create a copy of LeaveRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveRecordImplCopyWith<_$LeaveRecordImpl> get copyWith =>
      __$$LeaveRecordImplCopyWithImpl<_$LeaveRecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveRecordImplToJson(
      this,
    );
  }
}

abstract class _LeaveRecord implements LeaveRecord {
  const factory _LeaveRecord(
          {@JsonKey(name: 'lesson_id') required final int lessonId,
          @JsonKey(name: 'student_id') required final int studentId,
          required final String status,
          @JsonKey(name: 'leave_requested') required final int leaveRequested,
          @JsonKey(name: 'leave_status') required final String leaveStatus,
          @JsonKey(name: 'leave_reason') required final String leaveReason,
          @JsonKey(name: 'leave_request_date')
          required final DateTime leaveRequestDate,
          @JsonKey(name: 'student_name') required final String studentName,
          @JsonKey(name: 'class_name') required final String className,
          @JsonKey(name: 'lesson_date') required final DateTime lessonDate,
          @JsonKey(name: 'start_time') required final String startTime,
          @JsonKey(name: 'end_time') required final String endTime,
          @JsonKey(name: 'makeup_arranged') final int? makeupArranged}) =
      _$LeaveRecordImpl;

  factory _LeaveRecord.fromJson(Map<String, dynamic> json) =
      _$LeaveRecordImpl.fromJson;

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
  @JsonKey(name: 'makeup_arranged')
  int? get makeupArranged;

  /// Create a copy of LeaveRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveRecordImplCopyWith<_$LeaveRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeaveRequest _$LeaveRequestFromJson(Map<String, dynamic> json) {
  return _LeaveRequest.fromJson(json);
}

/// @nodoc
mixin _$LeaveRequest {
  @JsonKey(name: 'lesson_ids')
  List<int> get lessonIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'leave_reason')
  String get leaveReason => throw _privateConstructorUsedError; // 未來可能需要的欄位
  @JsonKey(name: 'leave_type')
  String get leaveType => throw _privateConstructorUsedError;

  /// Serializes this LeaveRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaveRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaveRequestCopyWith<LeaveRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveRequestCopyWith<$Res> {
  factory $LeaveRequestCopyWith(
          LeaveRequest value, $Res Function(LeaveRequest) then) =
      _$LeaveRequestCopyWithImpl<$Res, LeaveRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'lesson_ids') List<int> lessonIds,
      @JsonKey(name: 'leave_reason') String leaveReason,
      @JsonKey(name: 'leave_type') String leaveType});
}

/// @nodoc
class _$LeaveRequestCopyWithImpl<$Res, $Val extends LeaveRequest>
    implements $LeaveRequestCopyWith<$Res> {
  _$LeaveRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaveRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonIds = null,
    Object? leaveReason = null,
    Object? leaveType = null,
  }) {
    return _then(_value.copyWith(
      lessonIds: null == lessonIds
          ? _value.lessonIds
          : lessonIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      leaveReason: null == leaveReason
          ? _value.leaveReason
          : leaveReason // ignore: cast_nullable_to_non_nullable
              as String,
      leaveType: null == leaveType
          ? _value.leaveType
          : leaveType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaveRequestImplCopyWith<$Res>
    implements $LeaveRequestCopyWith<$Res> {
  factory _$$LeaveRequestImplCopyWith(
          _$LeaveRequestImpl value, $Res Function(_$LeaveRequestImpl) then) =
      __$$LeaveRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'lesson_ids') List<int> lessonIds,
      @JsonKey(name: 'leave_reason') String leaveReason,
      @JsonKey(name: 'leave_type') String leaveType});
}

/// @nodoc
class __$$LeaveRequestImplCopyWithImpl<$Res>
    extends _$LeaveRequestCopyWithImpl<$Res, _$LeaveRequestImpl>
    implements _$$LeaveRequestImplCopyWith<$Res> {
  __$$LeaveRequestImplCopyWithImpl(
      _$LeaveRequestImpl _value, $Res Function(_$LeaveRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaveRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonIds = null,
    Object? leaveReason = null,
    Object? leaveType = null,
  }) {
    return _then(_$LeaveRequestImpl(
      lessonIds: null == lessonIds
          ? _value._lessonIds
          : lessonIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      leaveReason: null == leaveReason
          ? _value.leaveReason
          : leaveReason // ignore: cast_nullable_to_non_nullable
              as String,
      leaveType: null == leaveType
          ? _value.leaveType
          : leaveType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveRequestImpl implements _LeaveRequest {
  const _$LeaveRequestImpl(
      {@JsonKey(name: 'lesson_ids') required final List<int> lessonIds,
      @JsonKey(name: 'leave_reason') required this.leaveReason,
      @JsonKey(name: 'leave_type') required this.leaveType})
      : _lessonIds = lessonIds;

  factory _$LeaveRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveRequestImplFromJson(json);

  final List<int> _lessonIds;
  @override
  @JsonKey(name: 'lesson_ids')
  List<int> get lessonIds {
    if (_lessonIds is EqualUnmodifiableListView) return _lessonIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessonIds);
  }

  @override
  @JsonKey(name: 'leave_reason')
  final String leaveReason;
// 未來可能需要的欄位
  @override
  @JsonKey(name: 'leave_type')
  final String leaveType;

  @override
  String toString() {
    return 'LeaveRequest(lessonIds: $lessonIds, leaveReason: $leaveReason, leaveType: $leaveType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveRequestImpl &&
            const DeepCollectionEquality()
                .equals(other._lessonIds, _lessonIds) &&
            (identical(other.leaveReason, leaveReason) ||
                other.leaveReason == leaveReason) &&
            (identical(other.leaveType, leaveType) ||
                other.leaveType == leaveType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_lessonIds), leaveReason, leaveType);

  /// Create a copy of LeaveRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveRequestImplCopyWith<_$LeaveRequestImpl> get copyWith =>
      __$$LeaveRequestImplCopyWithImpl<_$LeaveRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveRequestImplToJson(
      this,
    );
  }
}

abstract class _LeaveRequest implements LeaveRequest {
  const factory _LeaveRequest(
          {@JsonKey(name: 'lesson_ids') required final List<int> lessonIds,
          @JsonKey(name: 'leave_reason') required final String leaveReason,
          @JsonKey(name: 'leave_type') required final String leaveType}) =
      _$LeaveRequestImpl;

  factory _LeaveRequest.fromJson(Map<String, dynamic> json) =
      _$LeaveRequestImpl.fromJson;

  @override
  @JsonKey(name: 'lesson_ids')
  List<int> get lessonIds;
  @override
  @JsonKey(name: 'leave_reason')
  String get leaveReason; // 未來可能需要的欄位
  @override
  @JsonKey(name: 'leave_type')
  String get leaveType;

  /// Create a copy of LeaveRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveRequestImplCopyWith<_$LeaveRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LeaveState {
  List<LeaveRecord> get leaveRecords => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isDuplicateRequest => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of LeaveState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaveStateCopyWith<LeaveState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveStateCopyWith<$Res> {
  factory $LeaveStateCopyWith(
          LeaveState value, $Res Function(LeaveState) then) =
      _$LeaveStateCopyWithImpl<$Res, LeaveState>;
  @useResult
  $Res call(
      {List<LeaveRecord> leaveRecords,
      DateTime? selectedDate,
      bool isLoading,
      bool isDuplicateRequest,
      String? error});
}

/// @nodoc
class _$LeaveStateCopyWithImpl<$Res, $Val extends LeaveState>
    implements $LeaveStateCopyWith<$Res> {
  _$LeaveStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaveState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaveRecords = null,
    Object? selectedDate = freezed,
    Object? isLoading = null,
    Object? isDuplicateRequest = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      leaveRecords: null == leaveRecords
          ? _value.leaveRecords
          : leaveRecords // ignore: cast_nullable_to_non_nullable
              as List<LeaveRecord>,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDuplicateRequest: null == isDuplicateRequest
          ? _value.isDuplicateRequest
          : isDuplicateRequest // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaveStateImplCopyWith<$Res>
    implements $LeaveStateCopyWith<$Res> {
  factory _$$LeaveStateImplCopyWith(
          _$LeaveStateImpl value, $Res Function(_$LeaveStateImpl) then) =
      __$$LeaveStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<LeaveRecord> leaveRecords,
      DateTime? selectedDate,
      bool isLoading,
      bool isDuplicateRequest,
      String? error});
}

/// @nodoc
class __$$LeaveStateImplCopyWithImpl<$Res>
    extends _$LeaveStateCopyWithImpl<$Res, _$LeaveStateImpl>
    implements _$$LeaveStateImplCopyWith<$Res> {
  __$$LeaveStateImplCopyWithImpl(
      _$LeaveStateImpl _value, $Res Function(_$LeaveStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaveState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaveRecords = null,
    Object? selectedDate = freezed,
    Object? isLoading = null,
    Object? isDuplicateRequest = null,
    Object? error = freezed,
  }) {
    return _then(_$LeaveStateImpl(
      leaveRecords: null == leaveRecords
          ? _value._leaveRecords
          : leaveRecords // ignore: cast_nullable_to_non_nullable
              as List<LeaveRecord>,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDuplicateRequest: null == isDuplicateRequest
          ? _value.isDuplicateRequest
          : isDuplicateRequest // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LeaveStateImpl implements _LeaveState {
  const _$LeaveStateImpl(
      {final List<LeaveRecord> leaveRecords = const [],
      this.selectedDate = null,
      this.isLoading = false,
      this.isDuplicateRequest = false,
      this.error})
      : _leaveRecords = leaveRecords;

  final List<LeaveRecord> _leaveRecords;
  @override
  @JsonKey()
  List<LeaveRecord> get leaveRecords {
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
  @JsonKey()
  final bool isDuplicateRequest;
  @override
  final String? error;

  @override
  String toString() {
    return 'LeaveState(leaveRecords: $leaveRecords, selectedDate: $selectedDate, isLoading: $isLoading, isDuplicateRequest: $isDuplicateRequest, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveStateImpl &&
            const DeepCollectionEquality()
                .equals(other._leaveRecords, _leaveRecords) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isDuplicateRequest, isDuplicateRequest) ||
                other.isDuplicateRequest == isDuplicateRequest) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_leaveRecords),
      selectedDate,
      isLoading,
      isDuplicateRequest,
      error);

  /// Create a copy of LeaveState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveStateImplCopyWith<_$LeaveStateImpl> get copyWith =>
      __$$LeaveStateImplCopyWithImpl<_$LeaveStateImpl>(this, _$identity);
}

abstract class _LeaveState implements LeaveState {
  const factory _LeaveState(
      {final List<LeaveRecord> leaveRecords,
      final DateTime? selectedDate,
      final bool isLoading,
      final bool isDuplicateRequest,
      final String? error}) = _$LeaveStateImpl;

  @override
  List<LeaveRecord> get leaveRecords;
  @override
  DateTime? get selectedDate;
  @override
  bool get isLoading;
  @override
  bool get isDuplicateRequest;
  @override
  String? get error;

  /// Create a copy of LeaveState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveStateImplCopyWith<_$LeaveStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
