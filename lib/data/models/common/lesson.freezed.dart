// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Lesson _$LessonFromJson(Map<String, dynamic> json) {
  return _Lesson.fromJson(json);
}

/// @nodoc
mixin _$Lesson {
  @JsonKey(name: 'lesson_id')
  int get lessonId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_title')
  String get lessonTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_description')
  String? get lessonDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'teacher_id')
  int? get teacherId => throw _privateConstructorUsedError;
  @JsonKey(name: 'classroom_id')
  int? get classroomId => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_id')
  int? get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_date')
  DateTime get lessonDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'teacher_name')
  String? get teacherName => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_name')
  String? get courseName => throw _privateConstructorUsedError;
  @JsonKey(name: 'subject_name')
  String? get subjectName => throw _privateConstructorUsedError;
  @JsonKey(name: 'classroom_name')
  String? get classroomName => throw _privateConstructorUsedError;

  /// Serializes this Lesson to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonCopyWith<Lesson> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonCopyWith<$Res> {
  factory $LessonCopyWith(Lesson value, $Res Function(Lesson) then) =
      _$LessonCopyWithImpl<$Res, Lesson>;
  @useResult
  $Res call(
      {@JsonKey(name: 'lesson_id') int lessonId,
      @JsonKey(name: 'lesson_title') String lessonTitle,
      @JsonKey(name: 'lesson_description') String? lessonDescription,
      @JsonKey(name: 'teacher_id') int? teacherId,
      @JsonKey(name: 'classroom_id') int? classroomId,
      @JsonKey(name: 'course_id') int? courseId,
      @JsonKey(name: 'lesson_date') DateTime lessonDate,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String endTime,
      @JsonKey(name: 'teacher_name') String? teacherName,
      @JsonKey(name: 'course_name') String? courseName,
      @JsonKey(name: 'subject_name') String? subjectName,
      @JsonKey(name: 'classroom_name') String? classroomName});
}

/// @nodoc
class _$LessonCopyWithImpl<$Res, $Val extends Lesson>
    implements $LessonCopyWith<$Res> {
  _$LessonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = null,
    Object? lessonTitle = null,
    Object? lessonDescription = freezed,
    Object? teacherId = freezed,
    Object? classroomId = freezed,
    Object? courseId = freezed,
    Object? lessonDate = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? teacherName = freezed,
    Object? courseName = freezed,
    Object? subjectName = freezed,
    Object? classroomName = freezed,
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
      lessonDescription: freezed == lessonDescription
          ? _value.lessonDescription
          : lessonDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      teacherId: freezed == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int?,
      classroomId: freezed == classroomId
          ? _value.classroomId
          : classroomId // ignore: cast_nullable_to_non_nullable
              as int?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      teacherName: freezed == teacherName
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String?,
      courseName: freezed == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String?,
      subjectName: freezed == subjectName
          ? _value.subjectName
          : subjectName // ignore: cast_nullable_to_non_nullable
              as String?,
      classroomName: freezed == classroomName
          ? _value.classroomName
          : classroomName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonImplCopyWith<$Res> implements $LessonCopyWith<$Res> {
  factory _$$LessonImplCopyWith(
          _$LessonImpl value, $Res Function(_$LessonImpl) then) =
      __$$LessonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'lesson_id') int lessonId,
      @JsonKey(name: 'lesson_title') String lessonTitle,
      @JsonKey(name: 'lesson_description') String? lessonDescription,
      @JsonKey(name: 'teacher_id') int? teacherId,
      @JsonKey(name: 'classroom_id') int? classroomId,
      @JsonKey(name: 'course_id') int? courseId,
      @JsonKey(name: 'lesson_date') DateTime lessonDate,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String endTime,
      @JsonKey(name: 'teacher_name') String? teacherName,
      @JsonKey(name: 'course_name') String? courseName,
      @JsonKey(name: 'subject_name') String? subjectName,
      @JsonKey(name: 'classroom_name') String? classroomName});
}

/// @nodoc
class __$$LessonImplCopyWithImpl<$Res>
    extends _$LessonCopyWithImpl<$Res, _$LessonImpl>
    implements _$$LessonImplCopyWith<$Res> {
  __$$LessonImplCopyWithImpl(
      _$LessonImpl _value, $Res Function(_$LessonImpl) _then)
      : super(_value, _then);

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = null,
    Object? lessonTitle = null,
    Object? lessonDescription = freezed,
    Object? teacherId = freezed,
    Object? classroomId = freezed,
    Object? courseId = freezed,
    Object? lessonDate = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? teacherName = freezed,
    Object? courseName = freezed,
    Object? subjectName = freezed,
    Object? classroomName = freezed,
  }) {
    return _then(_$LessonImpl(
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as int,
      lessonTitle: null == lessonTitle
          ? _value.lessonTitle
          : lessonTitle // ignore: cast_nullable_to_non_nullable
              as String,
      lessonDescription: freezed == lessonDescription
          ? _value.lessonDescription
          : lessonDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      teacherId: freezed == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int?,
      classroomId: freezed == classroomId
          ? _value.classroomId
          : classroomId // ignore: cast_nullable_to_non_nullable
              as int?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      teacherName: freezed == teacherName
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String?,
      courseName: freezed == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String?,
      subjectName: freezed == subjectName
          ? _value.subjectName
          : subjectName // ignore: cast_nullable_to_non_nullable
              as String?,
      classroomName: freezed == classroomName
          ? _value.classroomName
          : classroomName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonImpl implements _Lesson {
  const _$LessonImpl(
      {@JsonKey(name: 'lesson_id') required this.lessonId,
      @JsonKey(name: 'lesson_title') required this.lessonTitle,
      @JsonKey(name: 'lesson_description') this.lessonDescription,
      @JsonKey(name: 'teacher_id') this.teacherId,
      @JsonKey(name: 'classroom_id') this.classroomId,
      @JsonKey(name: 'course_id') this.courseId,
      @JsonKey(name: 'lesson_date') required this.lessonDate,
      @JsonKey(name: 'start_time') required this.startTime,
      @JsonKey(name: 'end_time') required this.endTime,
      @JsonKey(name: 'teacher_name') this.teacherName,
      @JsonKey(name: 'course_name') this.courseName,
      @JsonKey(name: 'subject_name') this.subjectName,
      @JsonKey(name: 'classroom_name') this.classroomName});

  factory _$LessonImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonImplFromJson(json);

  @override
  @JsonKey(name: 'lesson_id')
  final int lessonId;
  @override
  @JsonKey(name: 'lesson_title')
  final String lessonTitle;
  @override
  @JsonKey(name: 'lesson_description')
  final String? lessonDescription;
  @override
  @JsonKey(name: 'teacher_id')
  final int? teacherId;
  @override
  @JsonKey(name: 'classroom_id')
  final int? classroomId;
  @override
  @JsonKey(name: 'course_id')
  final int? courseId;
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
  @JsonKey(name: 'teacher_name')
  final String? teacherName;
  @override
  @JsonKey(name: 'course_name')
  final String? courseName;
  @override
  @JsonKey(name: 'subject_name')
  final String? subjectName;
  @override
  @JsonKey(name: 'classroom_name')
  final String? classroomName;

  @override
  String toString() {
    return 'Lesson(lessonId: $lessonId, lessonTitle: $lessonTitle, lessonDescription: $lessonDescription, teacherId: $teacherId, classroomId: $classroomId, courseId: $courseId, lessonDate: $lessonDate, startTime: $startTime, endTime: $endTime, teacherName: $teacherName, courseName: $courseName, subjectName: $subjectName, classroomName: $classroomName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonImpl &&
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
            (identical(other.teacherName, teacherName) ||
                other.teacherName == teacherName) &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName) &&
            (identical(other.subjectName, subjectName) ||
                other.subjectName == subjectName) &&
            (identical(other.classroomName, classroomName) ||
                other.classroomName == classroomName));
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
      teacherName,
      courseName,
      subjectName,
      classroomName);

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonImplCopyWith<_$LessonImpl> get copyWith =>
      __$$LessonImplCopyWithImpl<_$LessonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonImplToJson(
      this,
    );
  }
}

abstract class _Lesson implements Lesson {
  const factory _Lesson(
          {@JsonKey(name: 'lesson_id') required final int lessonId,
          @JsonKey(name: 'lesson_title') required final String lessonTitle,
          @JsonKey(name: 'lesson_description') final String? lessonDescription,
          @JsonKey(name: 'teacher_id') final int? teacherId,
          @JsonKey(name: 'classroom_id') final int? classroomId,
          @JsonKey(name: 'course_id') final int? courseId,
          @JsonKey(name: 'lesson_date') required final DateTime lessonDate,
          @JsonKey(name: 'start_time') required final String startTime,
          @JsonKey(name: 'end_time') required final String endTime,
          @JsonKey(name: 'teacher_name') final String? teacherName,
          @JsonKey(name: 'course_name') final String? courseName,
          @JsonKey(name: 'subject_name') final String? subjectName,
          @JsonKey(name: 'classroom_name') final String? classroomName}) =
      _$LessonImpl;

  factory _Lesson.fromJson(Map<String, dynamic> json) = _$LessonImpl.fromJson;

  @override
  @JsonKey(name: 'lesson_id')
  int get lessonId;
  @override
  @JsonKey(name: 'lesson_title')
  String get lessonTitle;
  @override
  @JsonKey(name: 'lesson_description')
  String? get lessonDescription;
  @override
  @JsonKey(name: 'teacher_id')
  int? get teacherId;
  @override
  @JsonKey(name: 'classroom_id')
  int? get classroomId;
  @override
  @JsonKey(name: 'course_id')
  int? get courseId;
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
  @JsonKey(name: 'teacher_name')
  String? get teacherName;
  @override
  @JsonKey(name: 'course_name')
  String? get courseName;
  @override
  @JsonKey(name: 'subject_name')
  String? get subjectName;
  @override
  @JsonKey(name: 'classroom_name')
  String? get classroomName;

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonImplCopyWith<_$LessonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LessonQueryParams _$LessonQueryParamsFromJson(Map<String, dynamic> json) {
  return _LessonQueryParams.fromJson(json);
}

/// @nodoc
mixin _$LessonQueryParams {
  @JsonKey(name: 'teacherId')
  int? get teacherId => throw _privateConstructorUsedError;
  @JsonKey(name: 'startDate')
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'endDate')
  String? get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'startTime')
  String? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'endTime')
  String? get endTime => throw _privateConstructorUsedError;

  /// Serializes this LessonQueryParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonQueryParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonQueryParamsCopyWith<LessonQueryParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonQueryParamsCopyWith<$Res> {
  factory $LessonQueryParamsCopyWith(
          LessonQueryParams value, $Res Function(LessonQueryParams) then) =
      _$LessonQueryParamsCopyWithImpl<$Res, LessonQueryParams>;
  @useResult
  $Res call(
      {@JsonKey(name: 'teacherId') int? teacherId,
      @JsonKey(name: 'startDate') String? startDate,
      @JsonKey(name: 'endDate') String? endDate,
      @JsonKey(name: 'startTime') String? startTime,
      @JsonKey(name: 'endTime') String? endTime});
}

/// @nodoc
class _$LessonQueryParamsCopyWithImpl<$Res, $Val extends LessonQueryParams>
    implements $LessonQueryParamsCopyWith<$Res> {
  _$LessonQueryParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonQueryParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacherId = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_value.copyWith(
      teacherId: freezed == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonQueryParamsImplCopyWith<$Res>
    implements $LessonQueryParamsCopyWith<$Res> {
  factory _$$LessonQueryParamsImplCopyWith(_$LessonQueryParamsImpl value,
          $Res Function(_$LessonQueryParamsImpl) then) =
      __$$LessonQueryParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'teacherId') int? teacherId,
      @JsonKey(name: 'startDate') String? startDate,
      @JsonKey(name: 'endDate') String? endDate,
      @JsonKey(name: 'startTime') String? startTime,
      @JsonKey(name: 'endTime') String? endTime});
}

/// @nodoc
class __$$LessonQueryParamsImplCopyWithImpl<$Res>
    extends _$LessonQueryParamsCopyWithImpl<$Res, _$LessonQueryParamsImpl>
    implements _$$LessonQueryParamsImplCopyWith<$Res> {
  __$$LessonQueryParamsImplCopyWithImpl(_$LessonQueryParamsImpl _value,
      $Res Function(_$LessonQueryParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonQueryParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacherId = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_$LessonQueryParamsImpl(
      teacherId: freezed == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonQueryParamsImpl implements _LessonQueryParams {
  const _$LessonQueryParamsImpl(
      {@JsonKey(name: 'teacherId') this.teacherId,
      @JsonKey(name: 'startDate') this.startDate,
      @JsonKey(name: 'endDate') this.endDate,
      @JsonKey(name: 'startTime') this.startTime,
      @JsonKey(name: 'endTime') this.endTime});

  factory _$LessonQueryParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonQueryParamsImplFromJson(json);

  @override
  @JsonKey(name: 'teacherId')
  final int? teacherId;
  @override
  @JsonKey(name: 'startDate')
  final String? startDate;
  @override
  @JsonKey(name: 'endDate')
  final String? endDate;
  @override
  @JsonKey(name: 'startTime')
  final String? startTime;
  @override
  @JsonKey(name: 'endTime')
  final String? endTime;

  @override
  String toString() {
    return 'LessonQueryParams(teacherId: $teacherId, startDate: $startDate, endDate: $endDate, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonQueryParamsImpl &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, teacherId, startDate, endDate, startTime, endTime);

  /// Create a copy of LessonQueryParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonQueryParamsImplCopyWith<_$LessonQueryParamsImpl> get copyWith =>
      __$$LessonQueryParamsImplCopyWithImpl<_$LessonQueryParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonQueryParamsImplToJson(
      this,
    );
  }
}

abstract class _LessonQueryParams implements LessonQueryParams {
  const factory _LessonQueryParams(
          {@JsonKey(name: 'teacherId') final int? teacherId,
          @JsonKey(name: 'startDate') final String? startDate,
          @JsonKey(name: 'endDate') final String? endDate,
          @JsonKey(name: 'startTime') final String? startTime,
          @JsonKey(name: 'endTime') final String? endTime}) =
      _$LessonQueryParamsImpl;

  factory _LessonQueryParams.fromJson(Map<String, dynamic> json) =
      _$LessonQueryParamsImpl.fromJson;

  @override
  @JsonKey(name: 'teacherId')
  int? get teacherId;
  @override
  @JsonKey(name: 'startDate')
  String? get startDate;
  @override
  @JsonKey(name: 'endDate')
  String? get endDate;
  @override
  @JsonKey(name: 'startTime')
  String? get startTime;
  @override
  @JsonKey(name: 'endTime')
  String? get endTime;

  /// Create a copy of LessonQueryParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonQueryParamsImplCopyWith<_$LessonQueryParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LessonState {
  List<Lesson> get lessons => throw _privateConstructorUsedError;
  List<Lesson> get filteredLessons => throw _privateConstructorUsedError;
  DateTime get selectedDate => throw _privateConstructorUsedError;
  DateTime get focusedDay => throw _privateConstructorUsedError;
  String? get selectedSubject => throw _privateConstructorUsedError;
  String? get selectedClassroom => throw _privateConstructorUsedError;
  List<String> get subjects => throw _privateConstructorUsedError;
  List<String> get classrooms => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  LessonQueryParams? get currentQuery => throw _privateConstructorUsedError;

  /// Create a copy of LessonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonStateCopyWith<LessonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonStateCopyWith<$Res> {
  factory $LessonStateCopyWith(
          LessonState value, $Res Function(LessonState) then) =
      _$LessonStateCopyWithImpl<$Res, LessonState>;
  @useResult
  $Res call(
      {List<Lesson> lessons,
      List<Lesson> filteredLessons,
      DateTime selectedDate,
      DateTime focusedDay,
      String? selectedSubject,
      String? selectedClassroom,
      List<String> subjects,
      List<String> classrooms,
      bool isLoading,
      String? error,
      String? message,
      LessonQueryParams? currentQuery});

  $LessonQueryParamsCopyWith<$Res>? get currentQuery;
}

/// @nodoc
class _$LessonStateCopyWithImpl<$Res, $Val extends LessonState>
    implements $LessonStateCopyWith<$Res> {
  _$LessonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessons = null,
    Object? filteredLessons = null,
    Object? selectedDate = null,
    Object? focusedDay = null,
    Object? selectedSubject = freezed,
    Object? selectedClassroom = freezed,
    Object? subjects = null,
    Object? classrooms = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? message = freezed,
    Object? currentQuery = freezed,
  }) {
    return _then(_value.copyWith(
      lessons: null == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
      filteredLessons: null == filteredLessons
          ? _value.filteredLessons
          : filteredLessons // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      focusedDay: null == focusedDay
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedSubject: freezed == selectedSubject
          ? _value.selectedSubject
          : selectedSubject // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedClassroom: freezed == selectedClassroom
          ? _value.selectedClassroom
          : selectedClassroom // ignore: cast_nullable_to_non_nullable
              as String?,
      subjects: null == subjects
          ? _value.subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<String>,
      classrooms: null == classrooms
          ? _value.classrooms
          : classrooms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      currentQuery: freezed == currentQuery
          ? _value.currentQuery
          : currentQuery // ignore: cast_nullable_to_non_nullable
              as LessonQueryParams?,
    ) as $Val);
  }

  /// Create a copy of LessonState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LessonQueryParamsCopyWith<$Res>? get currentQuery {
    if (_value.currentQuery == null) {
      return null;
    }

    return $LessonQueryParamsCopyWith<$Res>(_value.currentQuery!, (value) {
      return _then(_value.copyWith(currentQuery: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LessonStateImplCopyWith<$Res>
    implements $LessonStateCopyWith<$Res> {
  factory _$$LessonStateImplCopyWith(
          _$LessonStateImpl value, $Res Function(_$LessonStateImpl) then) =
      __$$LessonStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Lesson> lessons,
      List<Lesson> filteredLessons,
      DateTime selectedDate,
      DateTime focusedDay,
      String? selectedSubject,
      String? selectedClassroom,
      List<String> subjects,
      List<String> classrooms,
      bool isLoading,
      String? error,
      String? message,
      LessonQueryParams? currentQuery});

  @override
  $LessonQueryParamsCopyWith<$Res>? get currentQuery;
}

/// @nodoc
class __$$LessonStateImplCopyWithImpl<$Res>
    extends _$LessonStateCopyWithImpl<$Res, _$LessonStateImpl>
    implements _$$LessonStateImplCopyWith<$Res> {
  __$$LessonStateImplCopyWithImpl(
      _$LessonStateImpl _value, $Res Function(_$LessonStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessons = null,
    Object? filteredLessons = null,
    Object? selectedDate = null,
    Object? focusedDay = null,
    Object? selectedSubject = freezed,
    Object? selectedClassroom = freezed,
    Object? subjects = null,
    Object? classrooms = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? message = freezed,
    Object? currentQuery = freezed,
  }) {
    return _then(_$LessonStateImpl(
      lessons: null == lessons
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
      filteredLessons: null == filteredLessons
          ? _value._filteredLessons
          : filteredLessons // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      focusedDay: null == focusedDay
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedSubject: freezed == selectedSubject
          ? _value.selectedSubject
          : selectedSubject // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedClassroom: freezed == selectedClassroom
          ? _value.selectedClassroom
          : selectedClassroom // ignore: cast_nullable_to_non_nullable
              as String?,
      subjects: null == subjects
          ? _value._subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<String>,
      classrooms: null == classrooms
          ? _value._classrooms
          : classrooms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      currentQuery: freezed == currentQuery
          ? _value.currentQuery
          : currentQuery // ignore: cast_nullable_to_non_nullable
              as LessonQueryParams?,
    ));
  }
}

/// @nodoc

class _$LessonStateImpl implements _LessonState {
  const _$LessonStateImpl(
      {final List<Lesson> lessons = const [],
      final List<Lesson> filteredLessons = const [],
      required this.selectedDate,
      required this.focusedDay,
      this.selectedSubject,
      this.selectedClassroom,
      final List<String> subjects = const [],
      final List<String> classrooms = const [],
      this.isLoading = false,
      this.error,
      this.message,
      this.currentQuery})
      : _lessons = lessons,
        _filteredLessons = filteredLessons,
        _subjects = subjects,
        _classrooms = classrooms;

  final List<Lesson> _lessons;
  @override
  @JsonKey()
  List<Lesson> get lessons {
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  final List<Lesson> _filteredLessons;
  @override
  @JsonKey()
  List<Lesson> get filteredLessons {
    if (_filteredLessons is EqualUnmodifiableListView) return _filteredLessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredLessons);
  }

  @override
  final DateTime selectedDate;
  @override
  final DateTime focusedDay;
  @override
  final String? selectedSubject;
  @override
  final String? selectedClassroom;
  final List<String> _subjects;
  @override
  @JsonKey()
  List<String> get subjects {
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subjects);
  }

  final List<String> _classrooms;
  @override
  @JsonKey()
  List<String> get classrooms {
    if (_classrooms is EqualUnmodifiableListView) return _classrooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classrooms);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  @override
  final String? message;
  @override
  final LessonQueryParams? currentQuery;

  @override
  String toString() {
    return 'LessonState(lessons: $lessons, filteredLessons: $filteredLessons, selectedDate: $selectedDate, focusedDay: $focusedDay, selectedSubject: $selectedSubject, selectedClassroom: $selectedClassroom, subjects: $subjects, classrooms: $classrooms, isLoading: $isLoading, error: $error, message: $message, currentQuery: $currentQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonStateImpl &&
            const DeepCollectionEquality().equals(other._lessons, _lessons) &&
            const DeepCollectionEquality()
                .equals(other._filteredLessons, _filteredLessons) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.focusedDay, focusedDay) ||
                other.focusedDay == focusedDay) &&
            (identical(other.selectedSubject, selectedSubject) ||
                other.selectedSubject == selectedSubject) &&
            (identical(other.selectedClassroom, selectedClassroom) ||
                other.selectedClassroom == selectedClassroom) &&
            const DeepCollectionEquality().equals(other._subjects, _subjects) &&
            const DeepCollectionEquality()
                .equals(other._classrooms, _classrooms) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.currentQuery, currentQuery) ||
                other.currentQuery == currentQuery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_lessons),
      const DeepCollectionEquality().hash(_filteredLessons),
      selectedDate,
      focusedDay,
      selectedSubject,
      selectedClassroom,
      const DeepCollectionEquality().hash(_subjects),
      const DeepCollectionEquality().hash(_classrooms),
      isLoading,
      error,
      message,
      currentQuery);

  /// Create a copy of LessonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonStateImplCopyWith<_$LessonStateImpl> get copyWith =>
      __$$LessonStateImplCopyWithImpl<_$LessonStateImpl>(this, _$identity);
}

abstract class _LessonState implements LessonState {
  const factory _LessonState(
      {final List<Lesson> lessons,
      final List<Lesson> filteredLessons,
      required final DateTime selectedDate,
      required final DateTime focusedDay,
      final String? selectedSubject,
      final String? selectedClassroom,
      final List<String> subjects,
      final List<String> classrooms,
      final bool isLoading,
      final String? error,
      final String? message,
      final LessonQueryParams? currentQuery}) = _$LessonStateImpl;

  @override
  List<Lesson> get lessons;
  @override
  List<Lesson> get filteredLessons;
  @override
  DateTime get selectedDate;
  @override
  DateTime get focusedDay;
  @override
  String? get selectedSubject;
  @override
  String? get selectedClassroom;
  @override
  List<String> get subjects;
  @override
  List<String> get classrooms;
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  String? get message;
  @override
  LessonQueryParams? get currentQuery;

  /// Create a copy of LessonState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonStateImplCopyWith<_$LessonStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LessonStudent _$LessonStudentFromJson(Map<String, dynamic> json) {
  return _LessonStudent.fromJson(json);
}

/// @nodoc
mixin _$LessonStudent {
  @JsonKey(name: 'lesson_id')
  int get lessonId => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_id')
  int get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_name')
  String get studentName => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'leave_reason')
  String? get leaveReason => throw _privateConstructorUsedError;

  /// Serializes this LessonStudent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonStudent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonStudentCopyWith<LessonStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonStudentCopyWith<$Res> {
  factory $LessonStudentCopyWith(
          LessonStudent value, $Res Function(LessonStudent) then) =
      _$LessonStudentCopyWithImpl<$Res, LessonStudent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'lesson_id') int lessonId,
      @JsonKey(name: 'student_id') int studentId,
      @JsonKey(name: 'student_name') String studentName,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'leave_reason') String? leaveReason});
}

/// @nodoc
class _$LessonStudentCopyWithImpl<$Res, $Val extends LessonStudent>
    implements $LessonStudentCopyWith<$Res> {
  _$LessonStudentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonStudent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = null,
    Object? studentId = null,
    Object? studentName = null,
    Object? status = null,
    Object? leaveReason = freezed,
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
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      leaveReason: freezed == leaveReason
          ? _value.leaveReason
          : leaveReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonStudentImplCopyWith<$Res>
    implements $LessonStudentCopyWith<$Res> {
  factory _$$LessonStudentImplCopyWith(
          _$LessonStudentImpl value, $Res Function(_$LessonStudentImpl) then) =
      __$$LessonStudentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'lesson_id') int lessonId,
      @JsonKey(name: 'student_id') int studentId,
      @JsonKey(name: 'student_name') String studentName,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'leave_reason') String? leaveReason});
}

/// @nodoc
class __$$LessonStudentImplCopyWithImpl<$Res>
    extends _$LessonStudentCopyWithImpl<$Res, _$LessonStudentImpl>
    implements _$$LessonStudentImplCopyWith<$Res> {
  __$$LessonStudentImplCopyWithImpl(
      _$LessonStudentImpl _value, $Res Function(_$LessonStudentImpl) _then)
      : super(_value, _then);

  /// Create a copy of LessonStudent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonId = null,
    Object? studentId = null,
    Object? studentName = null,
    Object? status = null,
    Object? leaveReason = freezed,
  }) {
    return _then(_$LessonStudentImpl(
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as int,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      leaveReason: freezed == leaveReason
          ? _value.leaveReason
          : leaveReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonStudentImpl implements _LessonStudent {
  const _$LessonStudentImpl(
      {@JsonKey(name: 'lesson_id') required this.lessonId,
      @JsonKey(name: 'student_id') required this.studentId,
      @JsonKey(name: 'student_name') required this.studentName,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'leave_reason') this.leaveReason});

  factory _$LessonStudentImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonStudentImplFromJson(json);

  @override
  @JsonKey(name: 'lesson_id')
  final int lessonId;
  @override
  @JsonKey(name: 'student_id')
  final int studentId;
  @override
  @JsonKey(name: 'student_name')
  final String studentName;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'leave_reason')
  final String? leaveReason;

  @override
  String toString() {
    return 'LessonStudent(lessonId: $lessonId, studentId: $studentId, studentName: $studentName, status: $status, leaveReason: $leaveReason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonStudentImpl &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.leaveReason, leaveReason) ||
                other.leaveReason == leaveReason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, lessonId, studentId, studentName, status, leaveReason);

  /// Create a copy of LessonStudent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonStudentImplCopyWith<_$LessonStudentImpl> get copyWith =>
      __$$LessonStudentImplCopyWithImpl<_$LessonStudentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonStudentImplToJson(
      this,
    );
  }
}

abstract class _LessonStudent implements LessonStudent {
  const factory _LessonStudent(
          {@JsonKey(name: 'lesson_id') required final int lessonId,
          @JsonKey(name: 'student_id') required final int studentId,
          @JsonKey(name: 'student_name') required final String studentName,
          @JsonKey(name: 'status') required final String status,
          @JsonKey(name: 'leave_reason') final String? leaveReason}) =
      _$LessonStudentImpl;

  factory _LessonStudent.fromJson(Map<String, dynamic> json) =
      _$LessonStudentImpl.fromJson;

  @override
  @JsonKey(name: 'lesson_id')
  int get lessonId;
  @override
  @JsonKey(name: 'student_id')
  int get studentId;
  @override
  @JsonKey(name: 'student_name')
  String get studentName;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'leave_reason')
  String? get leaveReason;

  /// Create a copy of LessonStudent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonStudentImplCopyWith<_$LessonStudentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
