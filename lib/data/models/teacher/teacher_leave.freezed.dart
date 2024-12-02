// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_leave.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeacherLeave _$TeacherLeaveFromJson(Map<String, dynamic> json) {
  return _TeacherLeave.fromJson(json);
}

/// @nodoc
mixin _$TeacherLeave {
  @JsonKey(name: 'lesson_id')
  int get lessonId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_title')
  String get lessonTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_description')
  String get lessonDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'teacher_id')
  int get teacherId => throw _privateConstructorUsedError;
  @JsonKey(name: 'classroom_id')
  int get classroomId => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_id')
  int get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_date')
  DateTime get lessonDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_price')
  double get lessonPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'substitute_teacher_id')
  int? get substituteTeacherId => throw _privateConstructorUsedError;
  @JsonKey(name: 'leave_requested')
  int get leaveRequested => throw _privateConstructorUsedError;
  @JsonKey(name: 'leave_status')
  String get leaveStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'leave_request_date')
  DateTime get leaveRequestDate => throw _privateConstructorUsedError;

  /// Serializes this TeacherLeave to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeacherLeave
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherLeaveCopyWith<TeacherLeave> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherLeaveCopyWith<$Res> {
  factory $TeacherLeaveCopyWith(
          TeacherLeave value, $Res Function(TeacherLeave) then) =
      _$TeacherLeaveCopyWithImpl<$Res, TeacherLeave>;
  @useResult
  $Res call(
      {@JsonKey(name: 'lesson_id') int lessonId,
      @JsonKey(name: 'lesson_title') String lessonTitle,
      @JsonKey(name: 'lesson_description') String lessonDescription,
      @JsonKey(name: 'teacher_id') int teacherId,
      @JsonKey(name: 'classroom_id') int classroomId,
      @JsonKey(name: 'course_id') int courseId,
      @JsonKey(name: 'lesson_date') DateTime lessonDate,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String endTime,
      @JsonKey(name: 'lesson_price') double lessonPrice,
      @JsonKey(name: 'substitute_teacher_id') int? substituteTeacherId,
      @JsonKey(name: 'leave_requested') int leaveRequested,
      @JsonKey(name: 'leave_status') String leaveStatus,
      @JsonKey(name: 'leave_request_date') DateTime leaveRequestDate});
}

/// @nodoc
class _$TeacherLeaveCopyWithImpl<$Res, $Val extends TeacherLeave>
    implements $TeacherLeaveCopyWith<$Res> {
  _$TeacherLeaveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherLeave
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = null,
    Object? lessonTitle = null,
    Object? lessonDescription = null,
    Object? teacherId = null,
    Object? classroomId = null,
    Object? courseId = null,
    Object? lessonDate = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? lessonPrice = null,
    Object? substituteTeacherId = freezed,
    Object? leaveRequested = null,
    Object? leaveStatus = null,
    Object? leaveRequestDate = null,
  }) {
    return _then(_value.copyWith(
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
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int,
      classroomId: null == classroomId
          ? _value.classroomId
          : classroomId // ignore: cast_nullable_to_non_nullable
              as int,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
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
      lessonPrice: null == lessonPrice
          ? _value.lessonPrice
          : lessonPrice // ignore: cast_nullable_to_non_nullable
              as double,
      substituteTeacherId: freezed == substituteTeacherId
          ? _value.substituteTeacherId
          : substituteTeacherId // ignore: cast_nullable_to_non_nullable
              as int?,
      leaveRequested: null == leaveRequested
          ? _value.leaveRequested
          : leaveRequested // ignore: cast_nullable_to_non_nullable
              as int,
      leaveStatus: null == leaveStatus
          ? _value.leaveStatus
          : leaveStatus // ignore: cast_nullable_to_non_nullable
              as String,
      leaveRequestDate: null == leaveRequestDate
          ? _value.leaveRequestDate
          : leaveRequestDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherLeaveImplCopyWith<$Res>
    implements $TeacherLeaveCopyWith<$Res> {
  factory _$$TeacherLeaveImplCopyWith(
          _$TeacherLeaveImpl value, $Res Function(_$TeacherLeaveImpl) then) =
      __$$TeacherLeaveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'lesson_id') int lessonId,
      @JsonKey(name: 'lesson_title') String lessonTitle,
      @JsonKey(name: 'lesson_description') String lessonDescription,
      @JsonKey(name: 'teacher_id') int teacherId,
      @JsonKey(name: 'classroom_id') int classroomId,
      @JsonKey(name: 'course_id') int courseId,
      @JsonKey(name: 'lesson_date') DateTime lessonDate,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String endTime,
      @JsonKey(name: 'lesson_price') double lessonPrice,
      @JsonKey(name: 'substitute_teacher_id') int? substituteTeacherId,
      @JsonKey(name: 'leave_requested') int leaveRequested,
      @JsonKey(name: 'leave_status') String leaveStatus,
      @JsonKey(name: 'leave_request_date') DateTime leaveRequestDate});
}

/// @nodoc
class __$$TeacherLeaveImplCopyWithImpl<$Res>
    extends _$TeacherLeaveCopyWithImpl<$Res, _$TeacherLeaveImpl>
    implements _$$TeacherLeaveImplCopyWith<$Res> {
  __$$TeacherLeaveImplCopyWithImpl(
      _$TeacherLeaveImpl _value, $Res Function(_$TeacherLeaveImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherLeave
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = null,
    Object? lessonTitle = null,
    Object? lessonDescription = null,
    Object? teacherId = null,
    Object? classroomId = null,
    Object? courseId = null,
    Object? lessonDate = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? lessonPrice = null,
    Object? substituteTeacherId = freezed,
    Object? leaveRequested = null,
    Object? leaveStatus = null,
    Object? leaveRequestDate = null,
  }) {
    return _then(_$TeacherLeaveImpl(
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
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int,
      classroomId: null == classroomId
          ? _value.classroomId
          : classroomId // ignore: cast_nullable_to_non_nullable
              as int,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
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
      lessonPrice: null == lessonPrice
          ? _value.lessonPrice
          : lessonPrice // ignore: cast_nullable_to_non_nullable
              as double,
      substituteTeacherId: freezed == substituteTeacherId
          ? _value.substituteTeacherId
          : substituteTeacherId // ignore: cast_nullable_to_non_nullable
              as int?,
      leaveRequested: null == leaveRequested
          ? _value.leaveRequested
          : leaveRequested // ignore: cast_nullable_to_non_nullable
              as int,
      leaveStatus: null == leaveStatus
          ? _value.leaveStatus
          : leaveStatus // ignore: cast_nullable_to_non_nullable
              as String,
      leaveRequestDate: null == leaveRequestDate
          ? _value.leaveRequestDate
          : leaveRequestDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherLeaveImpl implements _TeacherLeave {
  const _$TeacherLeaveImpl(
      {@JsonKey(name: 'lesson_id') required this.lessonId,
      @JsonKey(name: 'lesson_title') required this.lessonTitle,
      @JsonKey(name: 'lesson_description') required this.lessonDescription,
      @JsonKey(name: 'teacher_id') required this.teacherId,
      @JsonKey(name: 'classroom_id') required this.classroomId,
      @JsonKey(name: 'course_id') required this.courseId,
      @JsonKey(name: 'lesson_date') required this.lessonDate,
      @JsonKey(name: 'start_time') required this.startTime,
      @JsonKey(name: 'end_time') required this.endTime,
      @JsonKey(name: 'lesson_price') required this.lessonPrice,
      @JsonKey(name: 'substitute_teacher_id') this.substituteTeacherId,
      @JsonKey(name: 'leave_requested') required this.leaveRequested,
      @JsonKey(name: 'leave_status') required this.leaveStatus,
      @JsonKey(name: 'leave_request_date') required this.leaveRequestDate});

  factory _$TeacherLeaveImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherLeaveImplFromJson(json);

  @override
  @JsonKey(name: 'lesson_id')
  final int lessonId;
  @override
  @JsonKey(name: 'lesson_title')
  final String lessonTitle;
  @override
  @JsonKey(name: 'lesson_description')
  final String lessonDescription;
  @override
  @JsonKey(name: 'teacher_id')
  final int teacherId;
  @override
  @JsonKey(name: 'classroom_id')
  final int classroomId;
  @override
  @JsonKey(name: 'course_id')
  final int courseId;
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
  @JsonKey(name: 'lesson_price')
  final double lessonPrice;
  @override
  @JsonKey(name: 'substitute_teacher_id')
  final int? substituteTeacherId;
  @override
  @JsonKey(name: 'leave_requested')
  final int leaveRequested;
  @override
  @JsonKey(name: 'leave_status')
  final String leaveStatus;
  @override
  @JsonKey(name: 'leave_request_date')
  final DateTime leaveRequestDate;

  @override
  String toString() {
    return 'TeacherLeave(lessonId: $lessonId, lessonTitle: $lessonTitle, lessonDescription: $lessonDescription, teacherId: $teacherId, classroomId: $classroomId, courseId: $courseId, lessonDate: $lessonDate, startTime: $startTime, endTime: $endTime, lessonPrice: $lessonPrice, substituteTeacherId: $substituteTeacherId, leaveRequested: $leaveRequested, leaveStatus: $leaveStatus, leaveRequestDate: $leaveRequestDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherLeaveImpl &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.lessonTitle, lessonTitle) ||
                other.lessonTitle == lessonTitle) &&
            (identical(other.lessonDescription, lessonDescription) ||
                other.lessonDescription == lessonDescription) &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId) &&
            (identical(other.classroomId, classroomId) ||
                other.classroomId == classroomId) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.lessonDate, lessonDate) ||
                other.lessonDate == lessonDate) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.lessonPrice, lessonPrice) ||
                other.lessonPrice == lessonPrice) &&
            (identical(other.substituteTeacherId, substituteTeacherId) ||
                other.substituteTeacherId == substituteTeacherId) &&
            (identical(other.leaveRequested, leaveRequested) ||
                other.leaveRequested == leaveRequested) &&
            (identical(other.leaveStatus, leaveStatus) ||
                other.leaveStatus == leaveStatus) &&
            (identical(other.leaveRequestDate, leaveRequestDate) ||
                other.leaveRequestDate == leaveRequestDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lessonId,
      lessonTitle,
      lessonDescription,
      teacherId,
      classroomId,
      courseId,
      lessonDate,
      startTime,
      endTime,
      lessonPrice,
      substituteTeacherId,
      leaveRequested,
      leaveStatus,
      leaveRequestDate);

  /// Create a copy of TeacherLeave
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherLeaveImplCopyWith<_$TeacherLeaveImpl> get copyWith =>
      __$$TeacherLeaveImplCopyWithImpl<_$TeacherLeaveImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherLeaveImplToJson(
      this,
    );
  }
}

abstract class _TeacherLeave implements TeacherLeave {
  const factory _TeacherLeave(
      {@JsonKey(name: 'lesson_id') required final int lessonId,
      @JsonKey(name: 'lesson_title') required final String lessonTitle,
      @JsonKey(name: 'lesson_description')
      required final String lessonDescription,
      @JsonKey(name: 'teacher_id') required final int teacherId,
      @JsonKey(name: 'classroom_id') required final int classroomId,
      @JsonKey(name: 'course_id') required final int courseId,
      @JsonKey(name: 'lesson_date') required final DateTime lessonDate,
      @JsonKey(name: 'start_time') required final String startTime,
      @JsonKey(name: 'end_time') required final String endTime,
      @JsonKey(name: 'lesson_price') required final double lessonPrice,
      @JsonKey(name: 'substitute_teacher_id') final int? substituteTeacherId,
      @JsonKey(name: 'leave_requested') required final int leaveRequested,
      @JsonKey(name: 'leave_status') required final String leaveStatus,
      @JsonKey(name: 'leave_request_date')
      required final DateTime leaveRequestDate}) = _$TeacherLeaveImpl;

  factory _TeacherLeave.fromJson(Map<String, dynamic> json) =
      _$TeacherLeaveImpl.fromJson;

  @override
  @JsonKey(name: 'lesson_id')
  int get lessonId;
  @override
  @JsonKey(name: 'lesson_title')
  String get lessonTitle;
  @override
  @JsonKey(name: 'lesson_description')
  String get lessonDescription;
  @override
  @JsonKey(name: 'teacher_id')
  int get teacherId;
  @override
  @JsonKey(name: 'classroom_id')
  int get classroomId;
  @override
  @JsonKey(name: 'course_id')
  int get courseId;
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
  @JsonKey(name: 'lesson_price')
  double get lessonPrice;
  @override
  @JsonKey(name: 'substitute_teacher_id')
  int? get substituteTeacherId;
  @override
  @JsonKey(name: 'leave_requested')
  int get leaveRequested;
  @override
  @JsonKey(name: 'leave_status')
  String get leaveStatus;
  @override
  @JsonKey(name: 'leave_request_date')
  DateTime get leaveRequestDate;

  /// Create a copy of TeacherLeave
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherLeaveImplCopyWith<_$TeacherLeaveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TeacherLeaveState {
  List<TeacherLeave> get leaveRequests => throw _privateConstructorUsedError;
  List<TeacherLeave> get filteredLeaves => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;
  DateTime? get focusedDay => throw _privateConstructorUsedError;

  /// Create a copy of TeacherLeaveState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherLeaveStateCopyWith<TeacherLeaveState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherLeaveStateCopyWith<$Res> {
  factory $TeacherLeaveStateCopyWith(
          TeacherLeaveState value, $Res Function(TeacherLeaveState) then) =
      _$TeacherLeaveStateCopyWithImpl<$Res, TeacherLeaveState>;
  @useResult
  $Res call(
      {List<TeacherLeave> leaveRequests,
      List<TeacherLeave> filteredLeaves,
      bool isLoading,
      String? error,
      DateTime? selectedDate,
      DateTime? focusedDay});
}

/// @nodoc
class _$TeacherLeaveStateCopyWithImpl<$Res, $Val extends TeacherLeaveState>
    implements $TeacherLeaveStateCopyWith<$Res> {
  _$TeacherLeaveStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherLeaveState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaveRequests = null,
    Object? filteredLeaves = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? selectedDate = freezed,
    Object? focusedDay = freezed,
  }) {
    return _then(_value.copyWith(
      leaveRequests: null == leaveRequests
          ? _value.leaveRequests
          : leaveRequests // ignore: cast_nullable_to_non_nullable
              as List<TeacherLeave>,
      filteredLeaves: null == filteredLeaves
          ? _value.filteredLeaves
          : filteredLeaves // ignore: cast_nullable_to_non_nullable
              as List<TeacherLeave>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      focusedDay: freezed == focusedDay
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherLeaveStateImplCopyWith<$Res>
    implements $TeacherLeaveStateCopyWith<$Res> {
  factory _$$TeacherLeaveStateImplCopyWith(_$TeacherLeaveStateImpl value,
          $Res Function(_$TeacherLeaveStateImpl) then) =
      __$$TeacherLeaveStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TeacherLeave> leaveRequests,
      List<TeacherLeave> filteredLeaves,
      bool isLoading,
      String? error,
      DateTime? selectedDate,
      DateTime? focusedDay});
}

/// @nodoc
class __$$TeacherLeaveStateImplCopyWithImpl<$Res>
    extends _$TeacherLeaveStateCopyWithImpl<$Res, _$TeacherLeaveStateImpl>
    implements _$$TeacherLeaveStateImplCopyWith<$Res> {
  __$$TeacherLeaveStateImplCopyWithImpl(_$TeacherLeaveStateImpl _value,
      $Res Function(_$TeacherLeaveStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherLeaveState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaveRequests = null,
    Object? filteredLeaves = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? selectedDate = freezed,
    Object? focusedDay = freezed,
  }) {
    return _then(_$TeacherLeaveStateImpl(
      leaveRequests: null == leaveRequests
          ? _value._leaveRequests
          : leaveRequests // ignore: cast_nullable_to_non_nullable
              as List<TeacherLeave>,
      filteredLeaves: null == filteredLeaves
          ? _value._filteredLeaves
          : filteredLeaves // ignore: cast_nullable_to_non_nullable
              as List<TeacherLeave>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      focusedDay: freezed == focusedDay
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$TeacherLeaveStateImpl implements _TeacherLeaveState {
  const _$TeacherLeaveStateImpl(
      {final List<TeacherLeave> leaveRequests = const [],
      final List<TeacherLeave> filteredLeaves = const [],
      this.isLoading = false,
      this.error,
      this.selectedDate,
      this.focusedDay})
      : _leaveRequests = leaveRequests,
        _filteredLeaves = filteredLeaves;

  final List<TeacherLeave> _leaveRequests;
  @override
  @JsonKey()
  List<TeacherLeave> get leaveRequests {
    if (_leaveRequests is EqualUnmodifiableListView) return _leaveRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leaveRequests);
  }

  final List<TeacherLeave> _filteredLeaves;
  @override
  @JsonKey()
  List<TeacherLeave> get filteredLeaves {
    if (_filteredLeaves is EqualUnmodifiableListView) return _filteredLeaves;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredLeaves);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  @override
  final DateTime? selectedDate;
  @override
  final DateTime? focusedDay;

  @override
  String toString() {
    return 'TeacherLeaveState(leaveRequests: $leaveRequests, filteredLeaves: $filteredLeaves, isLoading: $isLoading, error: $error, selectedDate: $selectedDate, focusedDay: $focusedDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherLeaveStateImpl &&
            const DeepCollectionEquality()
                .equals(other._leaveRequests, _leaveRequests) &&
            const DeepCollectionEquality()
                .equals(other._filteredLeaves, _filteredLeaves) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.focusedDay, focusedDay) ||
                other.focusedDay == focusedDay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_leaveRequests),
      const DeepCollectionEquality().hash(_filteredLeaves),
      isLoading,
      error,
      selectedDate,
      focusedDay);

  /// Create a copy of TeacherLeaveState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherLeaveStateImplCopyWith<_$TeacherLeaveStateImpl> get copyWith =>
      __$$TeacherLeaveStateImplCopyWithImpl<_$TeacherLeaveStateImpl>(
          this, _$identity);
}

abstract class _TeacherLeaveState implements TeacherLeaveState {
  const factory _TeacherLeaveState(
      {final List<TeacherLeave> leaveRequests,
      final List<TeacherLeave> filteredLeaves,
      final bool isLoading,
      final String? error,
      final DateTime? selectedDate,
      final DateTime? focusedDay}) = _$TeacherLeaveStateImpl;

  @override
  List<TeacherLeave> get leaveRequests;
  @override
  List<TeacherLeave> get filteredLeaves;
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  DateTime? get selectedDate;
  @override
  DateTime? get focusedDay;

  /// Create a copy of TeacherLeaveState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherLeaveStateImplCopyWith<_$TeacherLeaveStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
