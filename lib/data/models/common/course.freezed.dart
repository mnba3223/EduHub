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
  @JsonKey(name: 'subject_id')
  int get subjectId => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_description')
  String? get courseDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_color')
  String get courseColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_category')
  String? get courseCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_image')
  String get courseImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_type')
  String get courseType => throw _privateConstructorUsedError;
  @JsonKey(name: 'subject_name')
  String get subjectName => throw _privateConstructorUsedError;
  @JsonKey(name: 'subject_description')
  String? get subjectDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort')
  int get sort => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'subject_id') int subjectId,
      @JsonKey(name: 'course_description') String? courseDescription,
      @JsonKey(name: 'course_color') String courseColor,
      @JsonKey(name: 'course_category') String? courseCategory,
      @JsonKey(name: 'course_image') String courseImage,
      @JsonKey(name: 'course_type') String courseType,
      @JsonKey(name: 'subject_name') String subjectName,
      @JsonKey(name: 'subject_description') String? subjectDescription,
      @JsonKey(name: 'sort') int sort});
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
    Object? subjectId = null,
    Object? courseDescription = freezed,
    Object? courseColor = null,
    Object? courseCategory = freezed,
    Object? courseImage = null,
    Object? courseType = null,
    Object? subjectName = null,
    Object? subjectDescription = freezed,
    Object? sort = null,
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
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int,
      courseDescription: freezed == courseDescription
          ? _value.courseDescription
          : courseDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      courseColor: null == courseColor
          ? _value.courseColor
          : courseColor // ignore: cast_nullable_to_non_nullable
              as String,
      courseCategory: freezed == courseCategory
          ? _value.courseCategory
          : courseCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      courseImage: null == courseImage
          ? _value.courseImage
          : courseImage // ignore: cast_nullable_to_non_nullable
              as String,
      courseType: null == courseType
          ? _value.courseType
          : courseType // ignore: cast_nullable_to_non_nullable
              as String,
      subjectName: null == subjectName
          ? _value.subjectName
          : subjectName // ignore: cast_nullable_to_non_nullable
              as String,
      subjectDescription: freezed == subjectDescription
          ? _value.subjectDescription
          : subjectDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int,
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
      @JsonKey(name: 'subject_id') int subjectId,
      @JsonKey(name: 'course_description') String? courseDescription,
      @JsonKey(name: 'course_color') String courseColor,
      @JsonKey(name: 'course_category') String? courseCategory,
      @JsonKey(name: 'course_image') String courseImage,
      @JsonKey(name: 'course_type') String courseType,
      @JsonKey(name: 'subject_name') String subjectName,
      @JsonKey(name: 'subject_description') String? subjectDescription,
      @JsonKey(name: 'sort') int sort});
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
    Object? subjectId = null,
    Object? courseDescription = freezed,
    Object? courseColor = null,
    Object? courseCategory = freezed,
    Object? courseImage = null,
    Object? courseType = null,
    Object? subjectName = null,
    Object? subjectDescription = freezed,
    Object? sort = null,
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
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int,
      courseDescription: freezed == courseDescription
          ? _value.courseDescription
          : courseDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      courseColor: null == courseColor
          ? _value.courseColor
          : courseColor // ignore: cast_nullable_to_non_nullable
              as String,
      courseCategory: freezed == courseCategory
          ? _value.courseCategory
          : courseCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      courseImage: null == courseImage
          ? _value.courseImage
          : courseImage // ignore: cast_nullable_to_non_nullable
              as String,
      courseType: null == courseType
          ? _value.courseType
          : courseType // ignore: cast_nullable_to_non_nullable
              as String,
      subjectName: null == subjectName
          ? _value.subjectName
          : subjectName // ignore: cast_nullable_to_non_nullable
              as String,
      subjectDescription: freezed == subjectDescription
          ? _value.subjectDescription
          : subjectDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseImpl implements _Course {
  const _$CourseImpl(
      {@JsonKey(name: 'course_id') required this.courseId,
      @JsonKey(name: 'course_name') required this.courseName,
      @JsonKey(name: 'subject_id') required this.subjectId,
      @JsonKey(name: 'course_description') this.courseDescription,
      @JsonKey(name: 'course_color') required this.courseColor,
      @JsonKey(name: 'course_category') this.courseCategory,
      @JsonKey(name: 'course_image') required this.courseImage,
      @JsonKey(name: 'course_type') required this.courseType,
      @JsonKey(name: 'subject_name') required this.subjectName,
      @JsonKey(name: 'subject_description') this.subjectDescription,
      @JsonKey(name: 'sort') required this.sort});

  factory _$CourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseImplFromJson(json);

  @override
  @JsonKey(name: 'course_id')
  final int courseId;
  @override
  @JsonKey(name: 'course_name')
  final String courseName;
  @override
  @JsonKey(name: 'subject_id')
  final int subjectId;
  @override
  @JsonKey(name: 'course_description')
  final String? courseDescription;
  @override
  @JsonKey(name: 'course_color')
  final String courseColor;
  @override
  @JsonKey(name: 'course_category')
  final String? courseCategory;
  @override
  @JsonKey(name: 'course_image')
  final String courseImage;
  @override
  @JsonKey(name: 'course_type')
  final String courseType;
  @override
  @JsonKey(name: 'subject_name')
  final String subjectName;
  @override
  @JsonKey(name: 'subject_description')
  final String? subjectDescription;
  @override
  @JsonKey(name: 'sort')
  final int sort;

  @override
  String toString() {
    return 'Course(courseId: $courseId, courseName: $courseName, subjectId: $subjectId, courseDescription: $courseDescription, courseColor: $courseColor, courseCategory: $courseCategory, courseImage: $courseImage, courseType: $courseType, subjectName: $subjectName, subjectDescription: $subjectDescription, sort: $sort)';
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
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.courseDescription, courseDescription) ||
                other.courseDescription == courseDescription) &&
            (identical(other.courseColor, courseColor) ||
                other.courseColor == courseColor) &&
            (identical(other.courseCategory, courseCategory) ||
                other.courseCategory == courseCategory) &&
            (identical(other.courseImage, courseImage) ||
                other.courseImage == courseImage) &&
            (identical(other.courseType, courseType) ||
                other.courseType == courseType) &&
            (identical(other.subjectName, subjectName) ||
                other.subjectName == subjectName) &&
            (identical(other.subjectDescription, subjectDescription) ||
                other.subjectDescription == subjectDescription) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      courseId,
      courseName,
      subjectId,
      courseDescription,
      courseColor,
      courseCategory,
      courseImage,
      courseType,
      subjectName,
      subjectDescription,
      sort);

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
      @JsonKey(name: 'subject_id') required final int subjectId,
      @JsonKey(name: 'course_description') final String? courseDescription,
      @JsonKey(name: 'course_color') required final String courseColor,
      @JsonKey(name: 'course_category') final String? courseCategory,
      @JsonKey(name: 'course_image') required final String courseImage,
      @JsonKey(name: 'course_type') required final String courseType,
      @JsonKey(name: 'subject_name') required final String subjectName,
      @JsonKey(name: 'subject_description') final String? subjectDescription,
      @JsonKey(name: 'sort') required final int sort}) = _$CourseImpl;

  factory _Course.fromJson(Map<String, dynamic> json) = _$CourseImpl.fromJson;

  @override
  @JsonKey(name: 'course_id')
  int get courseId;
  @override
  @JsonKey(name: 'course_name')
  String get courseName;
  @override
  @JsonKey(name: 'subject_id')
  int get subjectId;
  @override
  @JsonKey(name: 'course_description')
  String? get courseDescription;
  @override
  @JsonKey(name: 'course_color')
  String get courseColor;
  @override
  @JsonKey(name: 'course_category')
  String? get courseCategory;
  @override
  @JsonKey(name: 'course_image')
  String get courseImage;
  @override
  @JsonKey(name: 'course_type')
  String get courseType;
  @override
  @JsonKey(name: 'subject_name')
  String get subjectName;
  @override
  @JsonKey(name: 'subject_description')
  String? get subjectDescription;
  @override
  @JsonKey(name: 'sort')
  int get sort;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CourseState {
  List<Course> get courses => throw _privateConstructorUsedError;
  List<Course> get filteredCourses => throw _privateConstructorUsedError;
  DateTime get selectedDate => throw _privateConstructorUsedError;
  DateTime get focusedDay => throw _privateConstructorUsedError;
  String? get selectedSubject => throw _privateConstructorUsedError;
  List<String> get subjects => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

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
      {List<Course> courses,
      List<Course> filteredCourses,
      DateTime selectedDate,
      DateTime focusedDay,
      String? selectedSubject,
      List<String> subjects,
      bool isLoading,
      String? error,
      String? message});
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
    Object? courses = null,
    Object? filteredCourses = null,
    Object? selectedDate = null,
    Object? focusedDay = null,
    Object? selectedSubject = freezed,
    Object? subjects = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
      filteredCourses: null == filteredCourses
          ? _value.filteredCourses
          : filteredCourses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
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
      subjects: null == subjects
          ? _value.subjects
          : subjects // ignore: cast_nullable_to_non_nullable
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
      {List<Course> courses,
      List<Course> filteredCourses,
      DateTime selectedDate,
      DateTime focusedDay,
      String? selectedSubject,
      List<String> subjects,
      bool isLoading,
      String? error,
      String? message});
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
    Object? courses = null,
    Object? filteredCourses = null,
    Object? selectedDate = null,
    Object? focusedDay = null,
    Object? selectedSubject = freezed,
    Object? subjects = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CourseStateImpl(
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
      filteredCourses: null == filteredCourses
          ? _value._filteredCourses
          : filteredCourses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
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
      subjects: null == subjects
          ? _value._subjects
          : subjects // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc

class _$CourseStateImpl implements _CourseState {
  const _$CourseStateImpl(
      {final List<Course> courses = const [],
      final List<Course> filteredCourses = const [],
      required this.selectedDate,
      required this.focusedDay,
      this.selectedSubject,
      final List<String> subjects = const [],
      this.isLoading = false,
      this.error,
      this.message})
      : _courses = courses,
        _filteredCourses = filteredCourses,
        _subjects = subjects;

  final List<Course> _courses;
  @override
  @JsonKey()
  List<Course> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  final List<Course> _filteredCourses;
  @override
  @JsonKey()
  List<Course> get filteredCourses {
    if (_filteredCourses is EqualUnmodifiableListView) return _filteredCourses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredCourses);
  }

  @override
  final DateTime selectedDate;
  @override
  final DateTime focusedDay;
  @override
  final String? selectedSubject;
  final List<String> _subjects;
  @override
  @JsonKey()
  List<String> get subjects {
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subjects);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  @override
  final String? message;

  @override
  String toString() {
    return 'CourseState(courses: $courses, filteredCourses: $filteredCourses, selectedDate: $selectedDate, focusedDay: $focusedDay, selectedSubject: $selectedSubject, subjects: $subjects, isLoading: $isLoading, error: $error, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseStateImpl &&
            const DeepCollectionEquality().equals(other._courses, _courses) &&
            const DeepCollectionEquality()
                .equals(other._filteredCourses, _filteredCourses) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.focusedDay, focusedDay) ||
                other.focusedDay == focusedDay) &&
            (identical(other.selectedSubject, selectedSubject) ||
                other.selectedSubject == selectedSubject) &&
            const DeepCollectionEquality().equals(other._subjects, _subjects) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_courses),
      const DeepCollectionEquality().hash(_filteredCourses),
      selectedDate,
      focusedDay,
      selectedSubject,
      const DeepCollectionEquality().hash(_subjects),
      isLoading,
      error,
      message);

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
      {final List<Course> courses,
      final List<Course> filteredCourses,
      required final DateTime selectedDate,
      required final DateTime focusedDay,
      final String? selectedSubject,
      final List<String> subjects,
      final bool isLoading,
      final String? error,
      final String? message}) = _$CourseStateImpl;

  @override
  List<Course> get courses;
  @override
  List<Course> get filteredCourses;
  @override
  DateTime get selectedDate;
  @override
  DateTime get focusedDay;
  @override
  String? get selectedSubject;
  @override
  List<String> get subjects;
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  String? get message;

  /// Create a copy of CourseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseStateImplCopyWith<_$CourseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
