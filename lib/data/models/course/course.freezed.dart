// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Course _$CourseFromJson(Map<String, dynamic> json) {
  return _Course.fromJson(json);
}

/// @nodoc
mixin _$Course {
  @JsonKey(name: 'course_id')
  int get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_name')
  String get courseName => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_description')
  String? get courseDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'subject_id')
  int get subjectId => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_color', defaultValue: '#4A90E2')
  String get courseColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_image')
  String? get courseImage => throw _privateConstructorUsedError; // 允許為 null
  @JsonKey(name: 'subject_name')
  String get subjectName => throw _privateConstructorUsedError;
  @JsonKey(name: 'subject_description')
  String? get subjectDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency')
  String get currency => throw _privateConstructorUsedError;

  /// Serializes this Course to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res, Course>;
  @useResult
  $Res call(
      {@JsonKey(name: 'course_id') int courseId,
      @JsonKey(name: 'course_name') String courseName,
      @JsonKey(name: 'course_description') String? courseDescription,
      @JsonKey(name: 'subject_id') int subjectId,
      double price,
      @JsonKey(name: 'course_color', defaultValue: '#4A90E2')
      String courseColor,
      @JsonKey(name: 'course_image') String? courseImage,
      @JsonKey(name: 'subject_name') String subjectName,
      @JsonKey(name: 'subject_description') String? subjectDescription,
      @JsonKey(name: 'currency') String currency});
}

/// @nodoc
class _$CourseCopyWithImpl<$Res, $Val extends Course>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? courseName = null,
    Object? courseDescription = freezed,
    Object? subjectId = null,
    Object? price = null,
    Object? courseColor = null,
    Object? courseImage = freezed,
    Object? subjectName = null,
    Object? subjectDescription = freezed,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      courseDescription: freezed == courseDescription
          ? _value.courseDescription
          : courseDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      courseColor: null == courseColor
          ? _value.courseColor
          : courseColor // ignore: cast_nullable_to_non_nullable
              as String,
      courseImage: freezed == courseImage
          ? _value.courseImage
          : courseImage // ignore: cast_nullable_to_non_nullable
              as String?,
      subjectName: null == subjectName
          ? _value.subjectName
          : subjectName // ignore: cast_nullable_to_non_nullable
              as String,
      subjectDescription: freezed == subjectDescription
          ? _value.subjectDescription
          : subjectDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseImplCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$$CourseImplCopyWith(
          _$CourseImpl value, $Res Function(_$CourseImpl) then) =
      __$$CourseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'course_id') int courseId,
      @JsonKey(name: 'course_name') String courseName,
      @JsonKey(name: 'course_description') String? courseDescription,
      @JsonKey(name: 'subject_id') int subjectId,
      double price,
      @JsonKey(name: 'course_color', defaultValue: '#4A90E2')
      String courseColor,
      @JsonKey(name: 'course_image') String? courseImage,
      @JsonKey(name: 'subject_name') String subjectName,
      @JsonKey(name: 'subject_description') String? subjectDescription,
      @JsonKey(name: 'currency') String currency});
}

/// @nodoc
class __$$CourseImplCopyWithImpl<$Res>
    extends _$CourseCopyWithImpl<$Res, _$CourseImpl>
    implements _$$CourseImplCopyWith<$Res> {
  __$$CourseImplCopyWithImpl(
      _$CourseImpl _value, $Res Function(_$CourseImpl) _then)
      : super(_value, _then);

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? courseName = null,
    Object? courseDescription = freezed,
    Object? subjectId = null,
    Object? price = null,
    Object? courseColor = null,
    Object? courseImage = freezed,
    Object? subjectName = null,
    Object? subjectDescription = freezed,
    Object? currency = null,
  }) {
    return _then(_$CourseImpl(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      courseDescription: freezed == courseDescription
          ? _value.courseDescription
          : courseDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      courseColor: null == courseColor
          ? _value.courseColor
          : courseColor // ignore: cast_nullable_to_non_nullable
              as String,
      courseImage: freezed == courseImage
          ? _value.courseImage
          : courseImage // ignore: cast_nullable_to_non_nullable
              as String?,
      subjectName: null == subjectName
          ? _value.subjectName
          : subjectName // ignore: cast_nullable_to_non_nullable
              as String,
      subjectDescription: freezed == subjectDescription
          ? _value.subjectDescription
          : subjectDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseImpl implements _Course {
  const _$CourseImpl(
      {@JsonKey(name: 'course_id') required this.courseId,
      @JsonKey(name: 'course_name') required this.courseName,
      @JsonKey(name: 'course_description') this.courseDescription,
      @JsonKey(name: 'subject_id') required this.subjectId,
      required this.price,
      @JsonKey(name: 'course_color', defaultValue: '#4A90E2')
      required this.courseColor,
      @JsonKey(name: 'course_image') this.courseImage,
      @JsonKey(name: 'subject_name') required this.subjectName,
      @JsonKey(name: 'subject_description') this.subjectDescription,
      @JsonKey(name: 'currency') required this.currency});

  factory _$CourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseImplFromJson(json);

  @override
  @JsonKey(name: 'course_id')
  final int courseId;
  @override
  @JsonKey(name: 'course_name')
  final String courseName;
  @override
  @JsonKey(name: 'course_description')
  final String? courseDescription;
  @override
  @JsonKey(name: 'subject_id')
  final int subjectId;
  @override
  final double price;
  @override
  @JsonKey(name: 'course_color', defaultValue: '#4A90E2')
  final String courseColor;
  @override
  @JsonKey(name: 'course_image')
  final String? courseImage;
// 允許為 null
  @override
  @JsonKey(name: 'subject_name')
  final String subjectName;
  @override
  @JsonKey(name: 'subject_description')
  final String? subjectDescription;
  @override
  @JsonKey(name: 'currency')
  final String currency;

  @override
  String toString() {
    return 'Course(courseId: $courseId, courseName: $courseName, courseDescription: $courseDescription, subjectId: $subjectId, price: $price, courseColor: $courseColor, courseImage: $courseImage, subjectName: $subjectName, subjectDescription: $subjectDescription, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName) &&
            (identical(other.courseDescription, courseDescription) ||
                other.courseDescription == courseDescription) &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.courseColor, courseColor) ||
                other.courseColor == courseColor) &&
            (identical(other.courseImage, courseImage) ||
                other.courseImage == courseImage) &&
            (identical(other.subjectName, subjectName) ||
                other.subjectName == subjectName) &&
            (identical(other.subjectDescription, subjectDescription) ||
                other.subjectDescription == subjectDescription) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      courseId,
      courseName,
      courseDescription,
      subjectId,
      price,
      courseColor,
      courseImage,
      subjectName,
      subjectDescription,
      currency);

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      __$$CourseImplCopyWithImpl<_$CourseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseImplToJson(
      this,
    );
  }
}

abstract class _Course implements Course {
  const factory _Course(
      {@JsonKey(name: 'course_id') required final int courseId,
      @JsonKey(name: 'course_name') required final String courseName,
      @JsonKey(name: 'course_description') final String? courseDescription,
      @JsonKey(name: 'subject_id') required final int subjectId,
      required final double price,
      @JsonKey(name: 'course_color', defaultValue: '#4A90E2')
      required final String courseColor,
      @JsonKey(name: 'course_image') final String? courseImage,
      @JsonKey(name: 'subject_name') required final String subjectName,
      @JsonKey(name: 'subject_description') final String? subjectDescription,
      @JsonKey(name: 'currency')
      required final String currency}) = _$CourseImpl;

  factory _Course.fromJson(Map<String, dynamic> json) = _$CourseImpl.fromJson;

  @override
  @JsonKey(name: 'course_id')
  int get courseId;
  @override
  @JsonKey(name: 'course_name')
  String get courseName;
  @override
  @JsonKey(name: 'course_description')
  String? get courseDescription;
  @override
  @JsonKey(name: 'subject_id')
  int get subjectId;
  @override
  double get price;
  @override
  @JsonKey(name: 'course_color', defaultValue: '#4A90E2')
  String get courseColor;
  @override
  @JsonKey(name: 'course_image')
  String? get courseImage; // 允許為 null
  @override
  @JsonKey(name: 'subject_name')
  String get subjectName;
  @override
  @JsonKey(name: 'subject_description')
  String? get subjectDescription;
  @override
  @JsonKey(name: 'currency')
  String get currency;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StudentLesson _$StudentLessonFromJson(Map<String, dynamic> json) {
  return _StudentLesson.fromJson(json);
}

/// @nodoc
mixin _$StudentLesson {
  @JsonKey(name: 'class_id')
  int get classId => throw _privateConstructorUsedError;
  @JsonKey(name: 'class_name')
  String get className => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_id')
  int get lessonId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_date')
  DateTime get lessonDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_name')
  String get courseName => throw _privateConstructorUsedError;
  @JsonKey(name: 'classroom_name')
  String get classroomName => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_color', defaultValue: '#4A90E2')
  String get courseColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_image')
  String? get courseImage => throw _privateConstructorUsedError; // 允許為 null
  @JsonKey(name: 'subject_name')
  String get subjectName => throw _privateConstructorUsedError;

  /// Serializes this StudentLesson to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentLesson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentLessonCopyWith<StudentLesson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentLessonCopyWith<$Res> {
  factory $StudentLessonCopyWith(
          StudentLesson value, $Res Function(StudentLesson) then) =
      _$StudentLessonCopyWithImpl<$Res, StudentLesson>;
  @useResult
  $Res call(
      {@JsonKey(name: 'class_id') int classId,
      @JsonKey(name: 'class_name') String className,
      @JsonKey(name: 'lesson_id') int lessonId,
      @JsonKey(name: 'lesson_date') DateTime lessonDate,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String endTime,
      @JsonKey(name: 'course_name') String courseName,
      @JsonKey(name: 'classroom_name') String classroomName,
      @JsonKey(name: 'course_color', defaultValue: '#4A90E2')
      String courseColor,
      @JsonKey(name: 'course_image') String? courseImage,
      @JsonKey(name: 'subject_name') String subjectName});
}

/// @nodoc
class _$StudentLessonCopyWithImpl<$Res, $Val extends StudentLesson>
    implements $StudentLessonCopyWith<$Res> {
  _$StudentLessonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentLesson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classId = null,
    Object? className = null,
    Object? lessonId = null,
    Object? lessonDate = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? courseName = null,
    Object? classroomName = null,
    Object? courseColor = null,
    Object? courseImage = freezed,
    Object? subjectName = null,
  }) {
    return _then(_value.copyWith(
      classId: null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
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
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      classroomName: null == classroomName
          ? _value.classroomName
          : classroomName // ignore: cast_nullable_to_non_nullable
              as String,
      courseColor: null == courseColor
          ? _value.courseColor
          : courseColor // ignore: cast_nullable_to_non_nullable
              as String,
      courseImage: freezed == courseImage
          ? _value.courseImage
          : courseImage // ignore: cast_nullable_to_non_nullable
              as String?,
      subjectName: null == subjectName
          ? _value.subjectName
          : subjectName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentLessonImplCopyWith<$Res>
    implements $StudentLessonCopyWith<$Res> {
  factory _$$StudentLessonImplCopyWith(
          _$StudentLessonImpl value, $Res Function(_$StudentLessonImpl) then) =
      __$$StudentLessonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'class_id') int classId,
      @JsonKey(name: 'class_name') String className,
      @JsonKey(name: 'lesson_id') int lessonId,
      @JsonKey(name: 'lesson_date') DateTime lessonDate,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String endTime,
      @JsonKey(name: 'course_name') String courseName,
      @JsonKey(name: 'classroom_name') String classroomName,
      @JsonKey(name: 'course_color', defaultValue: '#4A90E2')
      String courseColor,
      @JsonKey(name: 'course_image') String? courseImage,
      @JsonKey(name: 'subject_name') String subjectName});
}

/// @nodoc
class __$$StudentLessonImplCopyWithImpl<$Res>
    extends _$StudentLessonCopyWithImpl<$Res, _$StudentLessonImpl>
    implements _$$StudentLessonImplCopyWith<$Res> {
  __$$StudentLessonImplCopyWithImpl(
      _$StudentLessonImpl _value, $Res Function(_$StudentLessonImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentLesson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classId = null,
    Object? className = null,
    Object? lessonId = null,
    Object? lessonDate = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? courseName = null,
    Object? classroomName = null,
    Object? courseColor = null,
    Object? courseImage = freezed,
    Object? subjectName = null,
  }) {
    return _then(_$StudentLessonImpl(
      classId: null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
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
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      classroomName: null == classroomName
          ? _value.classroomName
          : classroomName // ignore: cast_nullable_to_non_nullable
              as String,
      courseColor: null == courseColor
          ? _value.courseColor
          : courseColor // ignore: cast_nullable_to_non_nullable
              as String,
      courseImage: freezed == courseImage
          ? _value.courseImage
          : courseImage // ignore: cast_nullable_to_non_nullable
              as String?,
      subjectName: null == subjectName
          ? _value.subjectName
          : subjectName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentLessonImpl implements _StudentLesson {
  const _$StudentLessonImpl(
      {@JsonKey(name: 'class_id') required this.classId,
      @JsonKey(name: 'class_name') required this.className,
      @JsonKey(name: 'lesson_id') required this.lessonId,
      @JsonKey(name: 'lesson_date') required this.lessonDate,
      @JsonKey(name: 'start_time') required this.startTime,
      @JsonKey(name: 'end_time') required this.endTime,
      @JsonKey(name: 'course_name') required this.courseName,
      @JsonKey(name: 'classroom_name') required this.classroomName,
      @JsonKey(name: 'course_color', defaultValue: '#4A90E2')
      required this.courseColor,
      @JsonKey(name: 'course_image') this.courseImage,
      @JsonKey(name: 'subject_name') required this.subjectName});

  factory _$StudentLessonImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentLessonImplFromJson(json);

  @override
  @JsonKey(name: 'class_id')
  final int classId;
  @override
  @JsonKey(name: 'class_name')
  final String className;
  @override
  @JsonKey(name: 'lesson_id')
  final int lessonId;
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
  @JsonKey(name: 'course_name')
  final String courseName;
  @override
  @JsonKey(name: 'classroom_name')
  final String classroomName;
  @override
  @JsonKey(name: 'course_color', defaultValue: '#4A90E2')
  final String courseColor;
  @override
  @JsonKey(name: 'course_image')
  final String? courseImage;
// 允許為 null
  @override
  @JsonKey(name: 'subject_name')
  final String subjectName;

  @override
  String toString() {
    return 'StudentLesson(classId: $classId, className: $className, lessonId: $lessonId, lessonDate: $lessonDate, startTime: $startTime, endTime: $endTime, courseName: $courseName, classroomName: $classroomName, courseColor: $courseColor, courseImage: $courseImage, subjectName: $subjectName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentLessonImpl &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.lessonDate, lessonDate) ||
                other.lessonDate == lessonDate) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName) &&
            (identical(other.classroomName, classroomName) ||
                other.classroomName == classroomName) &&
            (identical(other.courseColor, courseColor) ||
                other.courseColor == courseColor) &&
            (identical(other.courseImage, courseImage) ||
                other.courseImage == courseImage) &&
            (identical(other.subjectName, subjectName) ||
                other.subjectName == subjectName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      classId,
      className,
      lessonId,
      lessonDate,
      startTime,
      endTime,
      courseName,
      classroomName,
      courseColor,
      courseImage,
      subjectName);

  /// Create a copy of StudentLesson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentLessonImplCopyWith<_$StudentLessonImpl> get copyWith =>
      __$$StudentLessonImplCopyWithImpl<_$StudentLessonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentLessonImplToJson(
      this,
    );
  }
}

abstract class _StudentLesson implements StudentLesson {
  const factory _StudentLesson(
          {@JsonKey(name: 'class_id') required final int classId,
          @JsonKey(name: 'class_name') required final String className,
          @JsonKey(name: 'lesson_id') required final int lessonId,
          @JsonKey(name: 'lesson_date') required final DateTime lessonDate,
          @JsonKey(name: 'start_time') required final String startTime,
          @JsonKey(name: 'end_time') required final String endTime,
          @JsonKey(name: 'course_name') required final String courseName,
          @JsonKey(name: 'classroom_name') required final String classroomName,
          @JsonKey(name: 'course_color', defaultValue: '#4A90E2')
          required final String courseColor,
          @JsonKey(name: 'course_image') final String? courseImage,
          @JsonKey(name: 'subject_name') required final String subjectName}) =
      _$StudentLessonImpl;

  factory _StudentLesson.fromJson(Map<String, dynamic> json) =
      _$StudentLessonImpl.fromJson;

  @override
  @JsonKey(name: 'class_id')
  int get classId;
  @override
  @JsonKey(name: 'class_name')
  String get className;
  @override
  @JsonKey(name: 'lesson_id')
  int get lessonId;
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
  @JsonKey(name: 'course_name')
  String get courseName;
  @override
  @JsonKey(name: 'classroom_name')
  String get classroomName;
  @override
  @JsonKey(name: 'course_color', defaultValue: '#4A90E2')
  String get courseColor;
  @override
  @JsonKey(name: 'course_image')
  String? get courseImage; // 允許為 null
  @override
  @JsonKey(name: 'subject_name')
  String get subjectName;

  /// Create a copy of StudentLesson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentLessonImplCopyWith<_$StudentLessonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CourseState {
  List<Course> get allCourses => throw _privateConstructorUsedError;
  List<StudentLesson> get studentLessons => throw _privateConstructorUsedError;
  List<StudentLesson> get todayLessons => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of CourseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseStateCopyWith<CourseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseStateCopyWith<$Res> {
  factory $CourseStateCopyWith(
          CourseState value, $Res Function(CourseState) then) =
      _$CourseStateCopyWithImpl<$Res, CourseState>;
  @useResult
  $Res call(
      {List<Course> allCourses,
      List<StudentLesson> studentLessons,
      List<StudentLesson> todayLessons,
      bool isLoading,
      String? error});
}

/// @nodoc
class _$CourseStateCopyWithImpl<$Res, $Val extends CourseState>
    implements $CourseStateCopyWith<$Res> {
  _$CourseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allCourses = null,
    Object? studentLessons = null,
    Object? todayLessons = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      allCourses: null == allCourses
          ? _value.allCourses
          : allCourses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
      studentLessons: null == studentLessons
          ? _value.studentLessons
          : studentLessons // ignore: cast_nullable_to_non_nullable
              as List<StudentLesson>,
      todayLessons: null == todayLessons
          ? _value.todayLessons
          : todayLessons // ignore: cast_nullable_to_non_nullable
              as List<StudentLesson>,
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
abstract class _$$CourseStateImplCopyWith<$Res>
    implements $CourseStateCopyWith<$Res> {
  factory _$$CourseStateImplCopyWith(
          _$CourseStateImpl value, $Res Function(_$CourseStateImpl) then) =
      __$$CourseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Course> allCourses,
      List<StudentLesson> studentLessons,
      List<StudentLesson> todayLessons,
      bool isLoading,
      String? error});
}

/// @nodoc
class __$$CourseStateImplCopyWithImpl<$Res>
    extends _$CourseStateCopyWithImpl<$Res, _$CourseStateImpl>
    implements _$$CourseStateImplCopyWith<$Res> {
  __$$CourseStateImplCopyWithImpl(
      _$CourseStateImpl _value, $Res Function(_$CourseStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allCourses = null,
    Object? studentLessons = null,
    Object? todayLessons = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$CourseStateImpl(
      allCourses: null == allCourses
          ? _value._allCourses
          : allCourses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
      studentLessons: null == studentLessons
          ? _value._studentLessons
          : studentLessons // ignore: cast_nullable_to_non_nullable
              as List<StudentLesson>,
      todayLessons: null == todayLessons
          ? _value._todayLessons
          : todayLessons // ignore: cast_nullable_to_non_nullable
              as List<StudentLesson>,
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

class _$CourseStateImpl implements _CourseState {
  const _$CourseStateImpl(
      {final List<Course> allCourses = const [],
      final List<StudentLesson> studentLessons = const [],
      final List<StudentLesson> todayLessons = const [],
      this.isLoading = false,
      this.error})
      : _allCourses = allCourses,
        _studentLessons = studentLessons,
        _todayLessons = todayLessons;

  final List<Course> _allCourses;
  @override
  @JsonKey()
  List<Course> get allCourses {
    if (_allCourses is EqualUnmodifiableListView) return _allCourses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allCourses);
  }

  final List<StudentLesson> _studentLessons;
  @override
  @JsonKey()
  List<StudentLesson> get studentLessons {
    if (_studentLessons is EqualUnmodifiableListView) return _studentLessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studentLessons);
  }

  final List<StudentLesson> _todayLessons;
  @override
  @JsonKey()
  List<StudentLesson> get todayLessons {
    if (_todayLessons is EqualUnmodifiableListView) return _todayLessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todayLessons);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'CourseState(allCourses: $allCourses, studentLessons: $studentLessons, todayLessons: $todayLessons, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseStateImpl &&
            const DeepCollectionEquality()
                .equals(other._allCourses, _allCourses) &&
            const DeepCollectionEquality()
                .equals(other._studentLessons, _studentLessons) &&
            const DeepCollectionEquality()
                .equals(other._todayLessons, _todayLessons) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allCourses),
      const DeepCollectionEquality().hash(_studentLessons),
      const DeepCollectionEquality().hash(_todayLessons),
      isLoading,
      error);

  /// Create a copy of CourseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseStateImplCopyWith<_$CourseStateImpl> get copyWith =>
      __$$CourseStateImplCopyWithImpl<_$CourseStateImpl>(this, _$identity);
}

abstract class _CourseState implements CourseState {
  const factory _CourseState(
      {final List<Course> allCourses,
      final List<StudentLesson> studentLessons,
      final List<StudentLesson> todayLessons,
      final bool isLoading,
      final String? error}) = _$CourseStateImpl;

  @override
  List<Course> get allCourses;
  @override
  List<StudentLesson> get studentLessons;
  @override
  List<StudentLesson> get todayLessons;
  @override
  bool get isLoading;
  @override
  String? get error;

  /// Create a copy of CourseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseStateImplCopyWith<_$CourseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
