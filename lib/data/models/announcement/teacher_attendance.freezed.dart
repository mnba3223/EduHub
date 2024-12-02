// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_attendance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeacherAttendance _$TeacherAttendanceFromJson(Map<String, dynamic> json) {
  return _TeacherAttendance.fromJson(json);
}

/// @nodoc
mixin _$TeacherAttendance {
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

  /// Serializes this TeacherAttendance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeacherAttendance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherAttendanceCopyWith<TeacherAttendance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherAttendanceCopyWith<$Res> {
  factory $TeacherAttendanceCopyWith(
          TeacherAttendance value, $Res Function(TeacherAttendance) then) =
      _$TeacherAttendanceCopyWithImpl<$Res, TeacherAttendance>;
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
class _$TeacherAttendanceCopyWithImpl<$Res, $Val extends TeacherAttendance>
    implements $TeacherAttendanceCopyWith<$Res> {
  _$TeacherAttendanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherAttendance
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
abstract class _$$TeacherAttendanceImplCopyWith<$Res>
    implements $TeacherAttendanceCopyWith<$Res> {
  factory _$$TeacherAttendanceImplCopyWith(_$TeacherAttendanceImpl value,
          $Res Function(_$TeacherAttendanceImpl) then) =
      __$$TeacherAttendanceImplCopyWithImpl<$Res>;
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
class __$$TeacherAttendanceImplCopyWithImpl<$Res>
    extends _$TeacherAttendanceCopyWithImpl<$Res, _$TeacherAttendanceImpl>
    implements _$$TeacherAttendanceImplCopyWith<$Res> {
  __$$TeacherAttendanceImplCopyWithImpl(_$TeacherAttendanceImpl _value,
      $Res Function(_$TeacherAttendanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherAttendance
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
    return _then(_$TeacherAttendanceImpl(
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
class _$TeacherAttendanceImpl implements _TeacherAttendance {
  const _$TeacherAttendanceImpl(
      {@JsonKey(name: 'attendance_id') required this.attendanceId,
      @JsonKey(name: 'student_id') required this.studentId,
      @JsonKey(name: 'attendance_date') required this.attendanceDate,
      required this.temperature,
      @JsonKey(name: 'attendance_status') this.attendanceStatus,
      @JsonKey(name: 'attendance_image') this.attendanceImage,
      @JsonKey(name: 'student_name') required this.studentName,
      @JsonKey(name: 'student_code') required this.studentCode});

  factory _$TeacherAttendanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherAttendanceImplFromJson(json);

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
    return 'TeacherAttendance(attendanceId: $attendanceId, studentId: $studentId, attendanceDate: $attendanceDate, temperature: $temperature, attendanceStatus: $attendanceStatus, attendanceImage: $attendanceImage, studentName: $studentName, studentCode: $studentCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherAttendanceImpl &&
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

  /// Create a copy of TeacherAttendance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherAttendanceImplCopyWith<_$TeacherAttendanceImpl> get copyWith =>
      __$$TeacherAttendanceImplCopyWithImpl<_$TeacherAttendanceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherAttendanceImplToJson(
      this,
    );
  }
}

abstract class _TeacherAttendance implements TeacherAttendance {
  const factory _TeacherAttendance(
      {@JsonKey(name: 'attendance_id') required final int attendanceId,
      @JsonKey(name: 'student_id') required final int studentId,
      @JsonKey(name: 'attendance_date') required final DateTime attendanceDate,
      required final double temperature,
      @JsonKey(name: 'attendance_status') final String? attendanceStatus,
      @JsonKey(name: 'attendance_image') final String? attendanceImage,
      @JsonKey(name: 'student_name') required final String studentName,
      @JsonKey(name: 'student_code')
      required final String studentCode}) = _$TeacherAttendanceImpl;

  factory _TeacherAttendance.fromJson(Map<String, dynamic> json) =
      _$TeacherAttendanceImpl.fromJson;

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

  /// Create a copy of TeacherAttendance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherAttendanceImplCopyWith<_$TeacherAttendanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TeacherAttendanceState {
  List<TeacherAttendance> get attendances => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;
  String? get selectedStudent => throw _privateConstructorUsedError;
  List<String> get students => throw _privateConstructorUsedError;

  /// Create a copy of TeacherAttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherAttendanceStateCopyWith<TeacherAttendanceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherAttendanceStateCopyWith<$Res> {
  factory $TeacherAttendanceStateCopyWith(TeacherAttendanceState value,
          $Res Function(TeacherAttendanceState) then) =
      _$TeacherAttendanceStateCopyWithImpl<$Res, TeacherAttendanceState>;
  @useResult
  $Res call(
      {List<TeacherAttendance> attendances,
      bool isLoading,
      String? error,
      DateTime? selectedDate,
      String? selectedStudent,
      List<String> students});
}

/// @nodoc
class _$TeacherAttendanceStateCopyWithImpl<$Res,
        $Val extends TeacherAttendanceState>
    implements $TeacherAttendanceStateCopyWith<$Res> {
  _$TeacherAttendanceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherAttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendances = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? selectedDate = freezed,
    Object? selectedStudent = freezed,
    Object? students = null,
  }) {
    return _then(_value.copyWith(
      attendances: null == attendances
          ? _value.attendances
          : attendances // ignore: cast_nullable_to_non_nullable
              as List<TeacherAttendance>,
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
      selectedStudent: freezed == selectedStudent
          ? _value.selectedStudent
          : selectedStudent // ignore: cast_nullable_to_non_nullable
              as String?,
      students: null == students
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherAttendanceStateImplCopyWith<$Res>
    implements $TeacherAttendanceStateCopyWith<$Res> {
  factory _$$TeacherAttendanceStateImplCopyWith(
          _$TeacherAttendanceStateImpl value,
          $Res Function(_$TeacherAttendanceStateImpl) then) =
      __$$TeacherAttendanceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TeacherAttendance> attendances,
      bool isLoading,
      String? error,
      DateTime? selectedDate,
      String? selectedStudent,
      List<String> students});
}

/// @nodoc
class __$$TeacherAttendanceStateImplCopyWithImpl<$Res>
    extends _$TeacherAttendanceStateCopyWithImpl<$Res,
        _$TeacherAttendanceStateImpl>
    implements _$$TeacherAttendanceStateImplCopyWith<$Res> {
  __$$TeacherAttendanceStateImplCopyWithImpl(
      _$TeacherAttendanceStateImpl _value,
      $Res Function(_$TeacherAttendanceStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherAttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendances = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? selectedDate = freezed,
    Object? selectedStudent = freezed,
    Object? students = null,
  }) {
    return _then(_$TeacherAttendanceStateImpl(
      attendances: null == attendances
          ? _value._attendances
          : attendances // ignore: cast_nullable_to_non_nullable
              as List<TeacherAttendance>,
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
      selectedStudent: freezed == selectedStudent
          ? _value.selectedStudent
          : selectedStudent // ignore: cast_nullable_to_non_nullable
              as String?,
      students: null == students
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$TeacherAttendanceStateImpl implements _TeacherAttendanceState {
  const _$TeacherAttendanceStateImpl(
      {final List<TeacherAttendance> attendances = const [],
      this.isLoading = true,
      this.error,
      this.selectedDate,
      this.selectedStudent,
      final List<String> students = const []})
      : _attendances = attendances,
        _students = students;

  final List<TeacherAttendance> _attendances;
  @override
  @JsonKey()
  List<TeacherAttendance> get attendances {
    if (_attendances is EqualUnmodifiableListView) return _attendances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attendances);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  @override
  final DateTime? selectedDate;
  @override
  final String? selectedStudent;
  final List<String> _students;
  @override
  @JsonKey()
  List<String> get students {
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  @override
  String toString() {
    return 'TeacherAttendanceState(attendances: $attendances, isLoading: $isLoading, error: $error, selectedDate: $selectedDate, selectedStudent: $selectedStudent, students: $students)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherAttendanceStateImpl &&
            const DeepCollectionEquality()
                .equals(other._attendances, _attendances) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.selectedStudent, selectedStudent) ||
                other.selectedStudent == selectedStudent) &&
            const DeepCollectionEquality().equals(other._students, _students));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_attendances),
      isLoading,
      error,
      selectedDate,
      selectedStudent,
      const DeepCollectionEquality().hash(_students));

  /// Create a copy of TeacherAttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherAttendanceStateImplCopyWith<_$TeacherAttendanceStateImpl>
      get copyWith => __$$TeacherAttendanceStateImplCopyWithImpl<
          _$TeacherAttendanceStateImpl>(this, _$identity);
}

abstract class _TeacherAttendanceState implements TeacherAttendanceState {
  const factory _TeacherAttendanceState(
      {final List<TeacherAttendance> attendances,
      final bool isLoading,
      final String? error,
      final DateTime? selectedDate,
      final String? selectedStudent,
      final List<String> students}) = _$TeacherAttendanceStateImpl;

  @override
  List<TeacherAttendance> get attendances;
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  DateTime? get selectedDate;
  @override
  String? get selectedStudent;
  @override
  List<String> get students;

  /// Create a copy of TeacherAttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherAttendanceStateImplCopyWith<_$TeacherAttendanceStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
