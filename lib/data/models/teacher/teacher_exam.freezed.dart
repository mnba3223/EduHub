// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_exam.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeacherExam _$TeacherExamFromJson(Map<String, dynamic> json) {
  return _TeacherExam.fromJson(json);
}

/// @nodoc
mixin _$TeacherExam {
  @JsonKey(name: 'exam_id')
  int get examId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_id')
  int get lessonId => throw _privateConstructorUsedError;
  @JsonKey(name: 'exam_name')
  String get examName => throw _privateConstructorUsedError;
  @JsonKey(name: 'exam_description')
  String get examDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_file')
  String? get uploadFile => throw _privateConstructorUsedError;
  @JsonKey(name: 'exam_date', fromJson: _dateFromJson, toJson: _dateToJson)
  DateTime get examDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_title')
  String get lessonTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_description')
  String? get lessonDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'teacher_id')
  int get teacherId => throw _privateConstructorUsedError;
  @JsonKey(name: 'teacher_name')
  String get teacherName => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_students')
  int get totalStudents => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_count')
  int get ratingCount => throw _privateConstructorUsedError;

  /// Serializes this TeacherExam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeacherExam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherExamCopyWith<TeacherExam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherExamCopyWith<$Res> {
  factory $TeacherExamCopyWith(
          TeacherExam value, $Res Function(TeacherExam) then) =
      _$TeacherExamCopyWithImpl<$Res, TeacherExam>;
  @useResult
  $Res call(
      {@JsonKey(name: 'exam_id') int examId,
      @JsonKey(name: 'lesson_id') int lessonId,
      @JsonKey(name: 'exam_name') String examName,
      @JsonKey(name: 'exam_description') String examDescription,
      @JsonKey(name: 'upload_file') String? uploadFile,
      @JsonKey(name: 'exam_date', fromJson: _dateFromJson, toJson: _dateToJson)
      DateTime examDate,
      @JsonKey(name: 'lesson_title') String lessonTitle,
      @JsonKey(name: 'lesson_description') String? lessonDescription,
      @JsonKey(name: 'teacher_id') int teacherId,
      @JsonKey(name: 'teacher_name') String teacherName,
      @JsonKey(name: 'total_students') int totalStudents,
      @JsonKey(name: 'rating_count') int ratingCount});
}

/// @nodoc
class _$TeacherExamCopyWithImpl<$Res, $Val extends TeacherExam>
    implements $TeacherExamCopyWith<$Res> {
  _$TeacherExamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherExam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? examId = null,
    Object? lessonId = null,
    Object? examName = null,
    Object? examDescription = null,
    Object? uploadFile = freezed,
    Object? examDate = null,
    Object? lessonTitle = null,
    Object? lessonDescription = freezed,
    Object? teacherId = null,
    Object? teacherName = null,
    Object? totalStudents = null,
    Object? ratingCount = null,
  }) {
    return _then(_value.copyWith(
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as int,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as int,
      examName: null == examName
          ? _value.examName
          : examName // ignore: cast_nullable_to_non_nullable
              as String,
      examDescription: null == examDescription
          ? _value.examDescription
          : examDescription // ignore: cast_nullable_to_non_nullable
              as String,
      uploadFile: freezed == uploadFile
          ? _value.uploadFile
          : uploadFile // ignore: cast_nullable_to_non_nullable
              as String?,
      examDate: null == examDate
          ? _value.examDate
          : examDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lessonTitle: null == lessonTitle
          ? _value.lessonTitle
          : lessonTitle // ignore: cast_nullable_to_non_nullable
              as String,
      lessonDescription: freezed == lessonDescription
          ? _value.lessonDescription
          : lessonDescription // ignore: cast_nullable_to_non_nullable
              as String?,
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
      ratingCount: null == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherExamImplCopyWith<$Res>
    implements $TeacherExamCopyWith<$Res> {
  factory _$$TeacherExamImplCopyWith(
          _$TeacherExamImpl value, $Res Function(_$TeacherExamImpl) then) =
      __$$TeacherExamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'exam_id') int examId,
      @JsonKey(name: 'lesson_id') int lessonId,
      @JsonKey(name: 'exam_name') String examName,
      @JsonKey(name: 'exam_description') String examDescription,
      @JsonKey(name: 'upload_file') String? uploadFile,
      @JsonKey(name: 'exam_date', fromJson: _dateFromJson, toJson: _dateToJson)
      DateTime examDate,
      @JsonKey(name: 'lesson_title') String lessonTitle,
      @JsonKey(name: 'lesson_description') String? lessonDescription,
      @JsonKey(name: 'teacher_id') int teacherId,
      @JsonKey(name: 'teacher_name') String teacherName,
      @JsonKey(name: 'total_students') int totalStudents,
      @JsonKey(name: 'rating_count') int ratingCount});
}

/// @nodoc
class __$$TeacherExamImplCopyWithImpl<$Res>
    extends _$TeacherExamCopyWithImpl<$Res, _$TeacherExamImpl>
    implements _$$TeacherExamImplCopyWith<$Res> {
  __$$TeacherExamImplCopyWithImpl(
      _$TeacherExamImpl _value, $Res Function(_$TeacherExamImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherExam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? examId = null,
    Object? lessonId = null,
    Object? examName = null,
    Object? examDescription = null,
    Object? uploadFile = freezed,
    Object? examDate = null,
    Object? lessonTitle = null,
    Object? lessonDescription = freezed,
    Object? teacherId = null,
    Object? teacherName = null,
    Object? totalStudents = null,
    Object? ratingCount = null,
  }) {
    return _then(_$TeacherExamImpl(
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as int,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as int,
      examName: null == examName
          ? _value.examName
          : examName // ignore: cast_nullable_to_non_nullable
              as String,
      examDescription: null == examDescription
          ? _value.examDescription
          : examDescription // ignore: cast_nullable_to_non_nullable
              as String,
      uploadFile: freezed == uploadFile
          ? _value.uploadFile
          : uploadFile // ignore: cast_nullable_to_non_nullable
              as String?,
      examDate: null == examDate
          ? _value.examDate
          : examDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lessonTitle: null == lessonTitle
          ? _value.lessonTitle
          : lessonTitle // ignore: cast_nullable_to_non_nullable
              as String,
      lessonDescription: freezed == lessonDescription
          ? _value.lessonDescription
          : lessonDescription // ignore: cast_nullable_to_non_nullable
              as String?,
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
      ratingCount: null == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherExamImpl implements _TeacherExam {
  const _$TeacherExamImpl(
      {@JsonKey(name: 'exam_id') required this.examId,
      @JsonKey(name: 'lesson_id') required this.lessonId,
      @JsonKey(name: 'exam_name') required this.examName,
      @JsonKey(name: 'exam_description') required this.examDescription,
      @JsonKey(name: 'upload_file') this.uploadFile,
      @JsonKey(name: 'exam_date', fromJson: _dateFromJson, toJson: _dateToJson)
      required this.examDate,
      @JsonKey(name: 'lesson_title') required this.lessonTitle,
      @JsonKey(name: 'lesson_description') this.lessonDescription,
      @JsonKey(name: 'teacher_id') required this.teacherId,
      @JsonKey(name: 'teacher_name') required this.teacherName,
      @JsonKey(name: 'total_students') required this.totalStudents,
      @JsonKey(name: 'rating_count') required this.ratingCount});

  factory _$TeacherExamImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherExamImplFromJson(json);

  @override
  @JsonKey(name: 'exam_id')
  final int examId;
  @override
  @JsonKey(name: 'lesson_id')
  final int lessonId;
  @override
  @JsonKey(name: 'exam_name')
  final String examName;
  @override
  @JsonKey(name: 'exam_description')
  final String examDescription;
  @override
  @JsonKey(name: 'upload_file')
  final String? uploadFile;
  @override
  @JsonKey(name: 'exam_date', fromJson: _dateFromJson, toJson: _dateToJson)
  final DateTime examDate;
  @override
  @JsonKey(name: 'lesson_title')
  final String lessonTitle;
  @override
  @JsonKey(name: 'lesson_description')
  final String? lessonDescription;
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
  @JsonKey(name: 'rating_count')
  final int ratingCount;

  @override
  String toString() {
    return 'TeacherExam(examId: $examId, lessonId: $lessonId, examName: $examName, examDescription: $examDescription, uploadFile: $uploadFile, examDate: $examDate, lessonTitle: $lessonTitle, lessonDescription: $lessonDescription, teacherId: $teacherId, teacherName: $teacherName, totalStudents: $totalStudents, ratingCount: $ratingCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherExamImpl &&
            (identical(other.examId, examId) || other.examId == examId) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.examName, examName) ||
                other.examName == examName) &&
            (identical(other.examDescription, examDescription) ||
                other.examDescription == examDescription) &&
            (identical(other.uploadFile, uploadFile) ||
                other.uploadFile == uploadFile) &&
            (identical(other.examDate, examDate) ||
                other.examDate == examDate) &&
            (identical(other.lessonTitle, lessonTitle) ||
                other.lessonTitle == lessonTitle) &&
            (identical(other.lessonDescription, lessonDescription) ||
                other.lessonDescription == lessonDescription) &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId) &&
            (identical(other.teacherName, teacherName) ||
                other.teacherName == teacherName) &&
            (identical(other.totalStudents, totalStudents) ||
                other.totalStudents == totalStudents) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      examId,
      lessonId,
      examName,
      examDescription,
      uploadFile,
      examDate,
      lessonTitle,
      lessonDescription,
      teacherId,
      teacherName,
      totalStudents,
      ratingCount);

  /// Create a copy of TeacherExam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherExamImplCopyWith<_$TeacherExamImpl> get copyWith =>
      __$$TeacherExamImplCopyWithImpl<_$TeacherExamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherExamImplToJson(
      this,
    );
  }
}

abstract class _TeacherExam implements TeacherExam {
  const factory _TeacherExam(
      {@JsonKey(name: 'exam_id') required final int examId,
      @JsonKey(name: 'lesson_id') required final int lessonId,
      @JsonKey(name: 'exam_name') required final String examName,
      @JsonKey(name: 'exam_description') required final String examDescription,
      @JsonKey(name: 'upload_file') final String? uploadFile,
      @JsonKey(name: 'exam_date', fromJson: _dateFromJson, toJson: _dateToJson)
      required final DateTime examDate,
      @JsonKey(name: 'lesson_title') required final String lessonTitle,
      @JsonKey(name: 'lesson_description') final String? lessonDescription,
      @JsonKey(name: 'teacher_id') required final int teacherId,
      @JsonKey(name: 'teacher_name') required final String teacherName,
      @JsonKey(name: 'total_students') required final int totalStudents,
      @JsonKey(name: 'rating_count')
      required final int ratingCount}) = _$TeacherExamImpl;

  factory _TeacherExam.fromJson(Map<String, dynamic> json) =
      _$TeacherExamImpl.fromJson;

  @override
  @JsonKey(name: 'exam_id')
  int get examId;
  @override
  @JsonKey(name: 'lesson_id')
  int get lessonId;
  @override
  @JsonKey(name: 'exam_name')
  String get examName;
  @override
  @JsonKey(name: 'exam_description')
  String get examDescription;
  @override
  @JsonKey(name: 'upload_file')
  String? get uploadFile;
  @override
  @JsonKey(name: 'exam_date', fromJson: _dateFromJson, toJson: _dateToJson)
  DateTime get examDate;
  @override
  @JsonKey(name: 'lesson_title')
  String get lessonTitle;
  @override
  @JsonKey(name: 'lesson_description')
  String? get lessonDescription;
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
  @JsonKey(name: 'rating_count')
  int get ratingCount;

  /// Create a copy of TeacherExam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherExamImplCopyWith<_$TeacherExamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TeacherExamRegistration _$TeacherExamRegistrationFromJson(
    Map<String, dynamic> json) {
  return _TeacherExamRegistration.fromJson(json);
}

/// @nodoc
mixin _$TeacherExamRegistration {
  @JsonKey(name: 'registration_id')
  int get registrationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'exam_id')
  int get examId => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_id')
  int get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'score')
  int? get score => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_id')
  int get lessonId => throw _privateConstructorUsedError;
  @JsonKey(name: 'exam_name')
  String get examName => throw _privateConstructorUsedError;
  @JsonKey(name: 'exam_description')
  String get examDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'exam_date', fromJson: _dateFromJson, toJson: _dateToJson)
  DateTime get examDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_title')
  String get lessonTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_description')
  String? get lessonDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_students')
  int get totalStudents => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_count')
  int get ratingCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_name')
  String get studentName => throw _privateConstructorUsedError;

  /// Serializes this TeacherExamRegistration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeacherExamRegistration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherExamRegistrationCopyWith<TeacherExamRegistration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherExamRegistrationCopyWith<$Res> {
  factory $TeacherExamRegistrationCopyWith(TeacherExamRegistration value,
          $Res Function(TeacherExamRegistration) then) =
      _$TeacherExamRegistrationCopyWithImpl<$Res, TeacherExamRegistration>;
  @useResult
  $Res call(
      {@JsonKey(name: 'registration_id') int registrationId,
      @JsonKey(name: 'exam_id') int examId,
      @JsonKey(name: 'student_id') int studentId,
      @JsonKey(name: 'score') int? score,
      @JsonKey(name: 'lesson_id') int lessonId,
      @JsonKey(name: 'exam_name') String examName,
      @JsonKey(name: 'exam_description') String examDescription,
      @JsonKey(name: 'exam_date', fromJson: _dateFromJson, toJson: _dateToJson)
      DateTime examDate,
      @JsonKey(name: 'lesson_title') String lessonTitle,
      @JsonKey(name: 'lesson_description') String? lessonDescription,
      @JsonKey(name: 'total_students') int totalStudents,
      @JsonKey(name: 'rating_count') int ratingCount,
      @JsonKey(name: 'student_name') String studentName});
}

/// @nodoc
class _$TeacherExamRegistrationCopyWithImpl<$Res,
        $Val extends TeacherExamRegistration>
    implements $TeacherExamRegistrationCopyWith<$Res> {
  _$TeacherExamRegistrationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherExamRegistration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registrationId = null,
    Object? examId = null,
    Object? studentId = null,
    Object? score = freezed,
    Object? lessonId = null,
    Object? examName = null,
    Object? examDescription = null,
    Object? examDate = null,
    Object? lessonTitle = null,
    Object? lessonDescription = freezed,
    Object? totalStudents = null,
    Object? ratingCount = null,
    Object? studentName = null,
  }) {
    return _then(_value.copyWith(
      registrationId: null == registrationId
          ? _value.registrationId
          : registrationId // ignore: cast_nullable_to_non_nullable
              as int,
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as int,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as int,
      examName: null == examName
          ? _value.examName
          : examName // ignore: cast_nullable_to_non_nullable
              as String,
      examDescription: null == examDescription
          ? _value.examDescription
          : examDescription // ignore: cast_nullable_to_non_nullable
              as String,
      examDate: null == examDate
          ? _value.examDate
          : examDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lessonTitle: null == lessonTitle
          ? _value.lessonTitle
          : lessonTitle // ignore: cast_nullable_to_non_nullable
              as String,
      lessonDescription: freezed == lessonDescription
          ? _value.lessonDescription
          : lessonDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      totalStudents: null == totalStudents
          ? _value.totalStudents
          : totalStudents // ignore: cast_nullable_to_non_nullable
              as int,
      ratingCount: null == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherExamRegistrationImplCopyWith<$Res>
    implements $TeacherExamRegistrationCopyWith<$Res> {
  factory _$$TeacherExamRegistrationImplCopyWith(
          _$TeacherExamRegistrationImpl value,
          $Res Function(_$TeacherExamRegistrationImpl) then) =
      __$$TeacherExamRegistrationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'registration_id') int registrationId,
      @JsonKey(name: 'exam_id') int examId,
      @JsonKey(name: 'student_id') int studentId,
      @JsonKey(name: 'score') int? score,
      @JsonKey(name: 'lesson_id') int lessonId,
      @JsonKey(name: 'exam_name') String examName,
      @JsonKey(name: 'exam_description') String examDescription,
      @JsonKey(name: 'exam_date', fromJson: _dateFromJson, toJson: _dateToJson)
      DateTime examDate,
      @JsonKey(name: 'lesson_title') String lessonTitle,
      @JsonKey(name: 'lesson_description') String? lessonDescription,
      @JsonKey(name: 'total_students') int totalStudents,
      @JsonKey(name: 'rating_count') int ratingCount,
      @JsonKey(name: 'student_name') String studentName});
}

/// @nodoc
class __$$TeacherExamRegistrationImplCopyWithImpl<$Res>
    extends _$TeacherExamRegistrationCopyWithImpl<$Res,
        _$TeacherExamRegistrationImpl>
    implements _$$TeacherExamRegistrationImplCopyWith<$Res> {
  __$$TeacherExamRegistrationImplCopyWithImpl(
      _$TeacherExamRegistrationImpl _value,
      $Res Function(_$TeacherExamRegistrationImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherExamRegistration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registrationId = null,
    Object? examId = null,
    Object? studentId = null,
    Object? score = freezed,
    Object? lessonId = null,
    Object? examName = null,
    Object? examDescription = null,
    Object? examDate = null,
    Object? lessonTitle = null,
    Object? lessonDescription = freezed,
    Object? totalStudents = null,
    Object? ratingCount = null,
    Object? studentName = null,
  }) {
    return _then(_$TeacherExamRegistrationImpl(
      registrationId: null == registrationId
          ? _value.registrationId
          : registrationId // ignore: cast_nullable_to_non_nullable
              as int,
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as int,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as int,
      examName: null == examName
          ? _value.examName
          : examName // ignore: cast_nullable_to_non_nullable
              as String,
      examDescription: null == examDescription
          ? _value.examDescription
          : examDescription // ignore: cast_nullable_to_non_nullable
              as String,
      examDate: null == examDate
          ? _value.examDate
          : examDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lessonTitle: null == lessonTitle
          ? _value.lessonTitle
          : lessonTitle // ignore: cast_nullable_to_non_nullable
              as String,
      lessonDescription: freezed == lessonDescription
          ? _value.lessonDescription
          : lessonDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      totalStudents: null == totalStudents
          ? _value.totalStudents
          : totalStudents // ignore: cast_nullable_to_non_nullable
              as int,
      ratingCount: null == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherExamRegistrationImpl implements _TeacherExamRegistration {
  const _$TeacherExamRegistrationImpl(
      {@JsonKey(name: 'registration_id') required this.registrationId,
      @JsonKey(name: 'exam_id') required this.examId,
      @JsonKey(name: 'student_id') required this.studentId,
      @JsonKey(name: 'score') this.score,
      @JsonKey(name: 'lesson_id') required this.lessonId,
      @JsonKey(name: 'exam_name') required this.examName,
      @JsonKey(name: 'exam_description') required this.examDescription,
      @JsonKey(name: 'exam_date', fromJson: _dateFromJson, toJson: _dateToJson)
      required this.examDate,
      @JsonKey(name: 'lesson_title') required this.lessonTitle,
      @JsonKey(name: 'lesson_description') this.lessonDescription,
      @JsonKey(name: 'total_students') required this.totalStudents,
      @JsonKey(name: 'rating_count') required this.ratingCount,
      @JsonKey(name: 'student_name') required this.studentName});

  factory _$TeacherExamRegistrationImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherExamRegistrationImplFromJson(json);

  @override
  @JsonKey(name: 'registration_id')
  final int registrationId;
  @override
  @JsonKey(name: 'exam_id')
  final int examId;
  @override
  @JsonKey(name: 'student_id')
  final int studentId;
  @override
  @JsonKey(name: 'score')
  final int? score;
  @override
  @JsonKey(name: 'lesson_id')
  final int lessonId;
  @override
  @JsonKey(name: 'exam_name')
  final String examName;
  @override
  @JsonKey(name: 'exam_description')
  final String examDescription;
  @override
  @JsonKey(name: 'exam_date', fromJson: _dateFromJson, toJson: _dateToJson)
  final DateTime examDate;
  @override
  @JsonKey(name: 'lesson_title')
  final String lessonTitle;
  @override
  @JsonKey(name: 'lesson_description')
  final String? lessonDescription;
  @override
  @JsonKey(name: 'total_students')
  final int totalStudents;
  @override
  @JsonKey(name: 'rating_count')
  final int ratingCount;
  @override
  @JsonKey(name: 'student_name')
  final String studentName;

  @override
  String toString() {
    return 'TeacherExamRegistration(registrationId: $registrationId, examId: $examId, studentId: $studentId, score: $score, lessonId: $lessonId, examName: $examName, examDescription: $examDescription, examDate: $examDate, lessonTitle: $lessonTitle, lessonDescription: $lessonDescription, totalStudents: $totalStudents, ratingCount: $ratingCount, studentName: $studentName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherExamRegistrationImpl &&
            (identical(other.registrationId, registrationId) ||
                other.registrationId == registrationId) &&
            (identical(other.examId, examId) || other.examId == examId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.examName, examName) ||
                other.examName == examName) &&
            (identical(other.examDescription, examDescription) ||
                other.examDescription == examDescription) &&
            (identical(other.examDate, examDate) ||
                other.examDate == examDate) &&
            (identical(other.lessonTitle, lessonTitle) ||
                other.lessonTitle == lessonTitle) &&
            (identical(other.lessonDescription, lessonDescription) ||
                other.lessonDescription == lessonDescription) &&
            (identical(other.totalStudents, totalStudents) ||
                other.totalStudents == totalStudents) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      registrationId,
      examId,
      studentId,
      score,
      lessonId,
      examName,
      examDescription,
      examDate,
      lessonTitle,
      lessonDescription,
      totalStudents,
      ratingCount,
      studentName);

  /// Create a copy of TeacherExamRegistration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherExamRegistrationImplCopyWith<_$TeacherExamRegistrationImpl>
      get copyWith => __$$TeacherExamRegistrationImplCopyWithImpl<
          _$TeacherExamRegistrationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherExamRegistrationImplToJson(
      this,
    );
  }
}

abstract class _TeacherExamRegistration implements TeacherExamRegistration {
  const factory _TeacherExamRegistration(
      {@JsonKey(name: 'registration_id') required final int registrationId,
      @JsonKey(name: 'exam_id') required final int examId,
      @JsonKey(name: 'student_id') required final int studentId,
      @JsonKey(name: 'score') final int? score,
      @JsonKey(name: 'lesson_id') required final int lessonId,
      @JsonKey(name: 'exam_name') required final String examName,
      @JsonKey(name: 'exam_description') required final String examDescription,
      @JsonKey(name: 'exam_date', fromJson: _dateFromJson, toJson: _dateToJson)
      required final DateTime examDate,
      @JsonKey(name: 'lesson_title') required final String lessonTitle,
      @JsonKey(name: 'lesson_description') final String? lessonDescription,
      @JsonKey(name: 'total_students') required final int totalStudents,
      @JsonKey(name: 'rating_count') required final int ratingCount,
      @JsonKey(name: 'student_name')
      required final String studentName}) = _$TeacherExamRegistrationImpl;

  factory _TeacherExamRegistration.fromJson(Map<String, dynamic> json) =
      _$TeacherExamRegistrationImpl.fromJson;

  @override
  @JsonKey(name: 'registration_id')
  int get registrationId;
  @override
  @JsonKey(name: 'exam_id')
  int get examId;
  @override
  @JsonKey(name: 'student_id')
  int get studentId;
  @override
  @JsonKey(name: 'score')
  int? get score;
  @override
  @JsonKey(name: 'lesson_id')
  int get lessonId;
  @override
  @JsonKey(name: 'exam_name')
  String get examName;
  @override
  @JsonKey(name: 'exam_description')
  String get examDescription;
  @override
  @JsonKey(name: 'exam_date', fromJson: _dateFromJson, toJson: _dateToJson)
  DateTime get examDate;
  @override
  @JsonKey(name: 'lesson_title')
  String get lessonTitle;
  @override
  @JsonKey(name: 'lesson_description')
  String? get lessonDescription;
  @override
  @JsonKey(name: 'total_students')
  int get totalStudents;
  @override
  @JsonKey(name: 'rating_count')
  int get ratingCount;
  @override
  @JsonKey(name: 'student_name')
  String get studentName;

  /// Create a copy of TeacherExamRegistration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherExamRegistrationImplCopyWith<_$TeacherExamRegistrationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ExamCreateRequest _$ExamCreateRequestFromJson(Map<String, dynamic> json) {
  return _ExamCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$ExamCreateRequest {
  @JsonKey(name: 'exam_name')
  String get examName => throw _privateConstructorUsedError;
  @JsonKey(name: 'exam_description')
  String get examDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_id')
  int get lessonId => throw _privateConstructorUsedError;
  @JsonKey(name: 'exam_date', fromJson: _dateFromJson, toJson: _dateToJson)
  DateTime get examDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_file')
  String? get uploadFile => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  File? get uploadedFile => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  bool get keepExistingFile => throw _privateConstructorUsedError;

  /// Serializes this ExamCreateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExamCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExamCreateRequestCopyWith<ExamCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamCreateRequestCopyWith<$Res> {
  factory $ExamCreateRequestCopyWith(
          ExamCreateRequest value, $Res Function(ExamCreateRequest) then) =
      _$ExamCreateRequestCopyWithImpl<$Res, ExamCreateRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'exam_name') String examName,
      @JsonKey(name: 'exam_description') String examDescription,
      @JsonKey(name: 'lesson_id') int lessonId,
      @JsonKey(name: 'exam_date', fromJson: _dateFromJson, toJson: _dateToJson)
      DateTime examDate,
      @JsonKey(name: 'upload_file') String? uploadFile,
      @JsonKey(includeFromJson: false, includeToJson: false) File? uploadedFile,
      @JsonKey(includeFromJson: false, includeToJson: false)
      bool keepExistingFile});
}

/// @nodoc
class _$ExamCreateRequestCopyWithImpl<$Res, $Val extends ExamCreateRequest>
    implements $ExamCreateRequestCopyWith<$Res> {
  _$ExamCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExamCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? examName = null,
    Object? examDescription = null,
    Object? lessonId = null,
    Object? examDate = null,
    Object? uploadFile = freezed,
    Object? uploadedFile = freezed,
    Object? keepExistingFile = null,
  }) {
    return _then(_value.copyWith(
      examName: null == examName
          ? _value.examName
          : examName // ignore: cast_nullable_to_non_nullable
              as String,
      examDescription: null == examDescription
          ? _value.examDescription
          : examDescription // ignore: cast_nullable_to_non_nullable
              as String,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as int,
      examDate: null == examDate
          ? _value.examDate
          : examDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      uploadFile: freezed == uploadFile
          ? _value.uploadFile
          : uploadFile // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedFile: freezed == uploadedFile
          ? _value.uploadedFile
          : uploadedFile // ignore: cast_nullable_to_non_nullable
              as File?,
      keepExistingFile: null == keepExistingFile
          ? _value.keepExistingFile
          : keepExistingFile // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExamCreateRequestImplCopyWith<$Res>
    implements $ExamCreateRequestCopyWith<$Res> {
  factory _$$ExamCreateRequestImplCopyWith(_$ExamCreateRequestImpl value,
          $Res Function(_$ExamCreateRequestImpl) then) =
      __$$ExamCreateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'exam_name') String examName,
      @JsonKey(name: 'exam_description') String examDescription,
      @JsonKey(name: 'lesson_id') int lessonId,
      @JsonKey(name: 'exam_date', fromJson: _dateFromJson, toJson: _dateToJson)
      DateTime examDate,
      @JsonKey(name: 'upload_file') String? uploadFile,
      @JsonKey(includeFromJson: false, includeToJson: false) File? uploadedFile,
      @JsonKey(includeFromJson: false, includeToJson: false)
      bool keepExistingFile});
}

/// @nodoc
class __$$ExamCreateRequestImplCopyWithImpl<$Res>
    extends _$ExamCreateRequestCopyWithImpl<$Res, _$ExamCreateRequestImpl>
    implements _$$ExamCreateRequestImplCopyWith<$Res> {
  __$$ExamCreateRequestImplCopyWithImpl(_$ExamCreateRequestImpl _value,
      $Res Function(_$ExamCreateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? examName = null,
    Object? examDescription = null,
    Object? lessonId = null,
    Object? examDate = null,
    Object? uploadFile = freezed,
    Object? uploadedFile = freezed,
    Object? keepExistingFile = null,
  }) {
    return _then(_$ExamCreateRequestImpl(
      examName: null == examName
          ? _value.examName
          : examName // ignore: cast_nullable_to_non_nullable
              as String,
      examDescription: null == examDescription
          ? _value.examDescription
          : examDescription // ignore: cast_nullable_to_non_nullable
              as String,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as int,
      examDate: null == examDate
          ? _value.examDate
          : examDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      uploadFile: freezed == uploadFile
          ? _value.uploadFile
          : uploadFile // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedFile: freezed == uploadedFile
          ? _value.uploadedFile
          : uploadedFile // ignore: cast_nullable_to_non_nullable
              as File?,
      keepExistingFile: null == keepExistingFile
          ? _value.keepExistingFile
          : keepExistingFile // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExamCreateRequestImpl implements _ExamCreateRequest {
  const _$ExamCreateRequestImpl(
      {@JsonKey(name: 'exam_name') required this.examName,
      @JsonKey(name: 'exam_description') required this.examDescription,
      @JsonKey(name: 'lesson_id') required this.lessonId,
      @JsonKey(name: 'exam_date', fromJson: _dateFromJson, toJson: _dateToJson)
      required this.examDate,
      @JsonKey(name: 'upload_file') this.uploadFile,
      @JsonKey(includeFromJson: false, includeToJson: false) this.uploadedFile,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.keepExistingFile = false});

  factory _$ExamCreateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExamCreateRequestImplFromJson(json);

  @override
  @JsonKey(name: 'exam_name')
  final String examName;
  @override
  @JsonKey(name: 'exam_description')
  final String examDescription;
  @override
  @JsonKey(name: 'lesson_id')
  final int lessonId;
  @override
  @JsonKey(name: 'exam_date', fromJson: _dateFromJson, toJson: _dateToJson)
  final DateTime examDate;
  @override
  @JsonKey(name: 'upload_file')
  final String? uploadFile;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final File? uploadedFile;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final bool keepExistingFile;

  @override
  String toString() {
    return 'ExamCreateRequest(examName: $examName, examDescription: $examDescription, lessonId: $lessonId, examDate: $examDate, uploadFile: $uploadFile, uploadedFile: $uploadedFile, keepExistingFile: $keepExistingFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamCreateRequestImpl &&
            (identical(other.examName, examName) ||
                other.examName == examName) &&
            (identical(other.examDescription, examDescription) ||
                other.examDescription == examDescription) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.examDate, examDate) ||
                other.examDate == examDate) &&
            (identical(other.uploadFile, uploadFile) ||
                other.uploadFile == uploadFile) &&
            (identical(other.uploadedFile, uploadedFile) ||
                other.uploadedFile == uploadedFile) &&
            (identical(other.keepExistingFile, keepExistingFile) ||
                other.keepExistingFile == keepExistingFile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, examName, examDescription,
      lessonId, examDate, uploadFile, uploadedFile, keepExistingFile);

  /// Create a copy of ExamCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamCreateRequestImplCopyWith<_$ExamCreateRequestImpl> get copyWith =>
      __$$ExamCreateRequestImplCopyWithImpl<_$ExamCreateRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExamCreateRequestImplToJson(
      this,
    );
  }
}

abstract class _ExamCreateRequest implements ExamCreateRequest {
  const factory _ExamCreateRequest(
      {@JsonKey(name: 'exam_name') required final String examName,
      @JsonKey(name: 'exam_description') required final String examDescription,
      @JsonKey(name: 'lesson_id') required final int lessonId,
      @JsonKey(name: 'exam_date', fromJson: _dateFromJson, toJson: _dateToJson)
      required final DateTime examDate,
      @JsonKey(name: 'upload_file') final String? uploadFile,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final File? uploadedFile,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final bool keepExistingFile}) = _$ExamCreateRequestImpl;

  factory _ExamCreateRequest.fromJson(Map<String, dynamic> json) =
      _$ExamCreateRequestImpl.fromJson;

  @override
  @JsonKey(name: 'exam_name')
  String get examName;
  @override
  @JsonKey(name: 'exam_description')
  String get examDescription;
  @override
  @JsonKey(name: 'lesson_id')
  int get lessonId;
  @override
  @JsonKey(name: 'exam_date', fromJson: _dateFromJson, toJson: _dateToJson)
  DateTime get examDate;
  @override
  @JsonKey(name: 'upload_file')
  String? get uploadFile;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  File? get uploadedFile;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  bool get keepExistingFile;

  /// Create a copy of ExamCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamCreateRequestImplCopyWith<_$ExamCreateRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TeacherExamState {
  List<TeacherExam> get exams => throw _privateConstructorUsedError;
  List<TeacherExam> get filteredExams => throw _privateConstructorUsedError;
  List<TeacherExamRegistration> get registrations =>
      throw _privateConstructorUsedError;
  DateTime get selectedDate => throw _privateConstructorUsedError;
  DateTime get focusedDay => throw _privateConstructorUsedError;
  String? get selectedLesson => throw _privateConstructorUsedError;
  List<String> get lessons => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of TeacherExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherExamStateCopyWith<TeacherExamState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherExamStateCopyWith<$Res> {
  factory $TeacherExamStateCopyWith(
          TeacherExamState value, $Res Function(TeacherExamState) then) =
      _$TeacherExamStateCopyWithImpl<$Res, TeacherExamState>;
  @useResult
  $Res call(
      {List<TeacherExam> exams,
      List<TeacherExam> filteredExams,
      List<TeacherExamRegistration> registrations,
      DateTime selectedDate,
      DateTime focusedDay,
      String? selectedLesson,
      List<String> lessons,
      bool isLoading,
      String? error});
}

/// @nodoc
class _$TeacherExamStateCopyWithImpl<$Res, $Val extends TeacherExamState>
    implements $TeacherExamStateCopyWith<$Res> {
  _$TeacherExamStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherExamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exams = null,
    Object? filteredExams = null,
    Object? registrations = null,
    Object? selectedDate = null,
    Object? focusedDay = null,
    Object? selectedLesson = freezed,
    Object? lessons = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      exams: null == exams
          ? _value.exams
          : exams // ignore: cast_nullable_to_non_nullable
              as List<TeacherExam>,
      filteredExams: null == filteredExams
          ? _value.filteredExams
          : filteredExams // ignore: cast_nullable_to_non_nullable
              as List<TeacherExam>,
      registrations: null == registrations
          ? _value.registrations
          : registrations // ignore: cast_nullable_to_non_nullable
              as List<TeacherExamRegistration>,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      focusedDay: null == focusedDay
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedLesson: freezed == selectedLesson
          ? _value.selectedLesson
          : selectedLesson // ignore: cast_nullable_to_non_nullable
              as String?,
      lessons: null == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
abstract class _$$TeacherExamStateImplCopyWith<$Res>
    implements $TeacherExamStateCopyWith<$Res> {
  factory _$$TeacherExamStateImplCopyWith(_$TeacherExamStateImpl value,
          $Res Function(_$TeacherExamStateImpl) then) =
      __$$TeacherExamStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TeacherExam> exams,
      List<TeacherExam> filteredExams,
      List<TeacherExamRegistration> registrations,
      DateTime selectedDate,
      DateTime focusedDay,
      String? selectedLesson,
      List<String> lessons,
      bool isLoading,
      String? error});
}

/// @nodoc
class __$$TeacherExamStateImplCopyWithImpl<$Res>
    extends _$TeacherExamStateCopyWithImpl<$Res, _$TeacherExamStateImpl>
    implements _$$TeacherExamStateImplCopyWith<$Res> {
  __$$TeacherExamStateImplCopyWithImpl(_$TeacherExamStateImpl _value,
      $Res Function(_$TeacherExamStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherExamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exams = null,
    Object? filteredExams = null,
    Object? registrations = null,
    Object? selectedDate = null,
    Object? focusedDay = null,
    Object? selectedLesson = freezed,
    Object? lessons = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$TeacherExamStateImpl(
      exams: null == exams
          ? _value._exams
          : exams // ignore: cast_nullable_to_non_nullable
              as List<TeacherExam>,
      filteredExams: null == filteredExams
          ? _value._filteredExams
          : filteredExams // ignore: cast_nullable_to_non_nullable
              as List<TeacherExam>,
      registrations: null == registrations
          ? _value._registrations
          : registrations // ignore: cast_nullable_to_non_nullable
              as List<TeacherExamRegistration>,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      focusedDay: null == focusedDay
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedLesson: freezed == selectedLesson
          ? _value.selectedLesson
          : selectedLesson // ignore: cast_nullable_to_non_nullable
              as String?,
      lessons: null == lessons
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<String>,
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

class _$TeacherExamStateImpl implements _TeacherExamState {
  const _$TeacherExamStateImpl(
      {final List<TeacherExam> exams = const [],
      final List<TeacherExam> filteredExams = const [],
      final List<TeacherExamRegistration> registrations = const [],
      required this.selectedDate,
      required this.focusedDay,
      this.selectedLesson,
      final List<String> lessons = const [],
      this.isLoading = false,
      this.error})
      : _exams = exams,
        _filteredExams = filteredExams,
        _registrations = registrations,
        _lessons = lessons;

  final List<TeacherExam> _exams;
  @override
  @JsonKey()
  List<TeacherExam> get exams {
    if (_exams is EqualUnmodifiableListView) return _exams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exams);
  }

  final List<TeacherExam> _filteredExams;
  @override
  @JsonKey()
  List<TeacherExam> get filteredExams {
    if (_filteredExams is EqualUnmodifiableListView) return _filteredExams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredExams);
  }

  final List<TeacherExamRegistration> _registrations;
  @override
  @JsonKey()
  List<TeacherExamRegistration> get registrations {
    if (_registrations is EqualUnmodifiableListView) return _registrations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_registrations);
  }

  @override
  final DateTime selectedDate;
  @override
  final DateTime focusedDay;
  @override
  final String? selectedLesson;
  final List<String> _lessons;
  @override
  @JsonKey()
  List<String> get lessons {
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'TeacherExamState(exams: $exams, filteredExams: $filteredExams, registrations: $registrations, selectedDate: $selectedDate, focusedDay: $focusedDay, selectedLesson: $selectedLesson, lessons: $lessons, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherExamStateImpl &&
            const DeepCollectionEquality().equals(other._exams, _exams) &&
            const DeepCollectionEquality()
                .equals(other._filteredExams, _filteredExams) &&
            const DeepCollectionEquality()
                .equals(other._registrations, _registrations) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.focusedDay, focusedDay) ||
                other.focusedDay == focusedDay) &&
            (identical(other.selectedLesson, selectedLesson) ||
                other.selectedLesson == selectedLesson) &&
            const DeepCollectionEquality().equals(other._lessons, _lessons) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_exams),
      const DeepCollectionEquality().hash(_filteredExams),
      const DeepCollectionEquality().hash(_registrations),
      selectedDate,
      focusedDay,
      selectedLesson,
      const DeepCollectionEquality().hash(_lessons),
      isLoading,
      error);

  /// Create a copy of TeacherExamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherExamStateImplCopyWith<_$TeacherExamStateImpl> get copyWith =>
      __$$TeacherExamStateImplCopyWithImpl<_$TeacherExamStateImpl>(
          this, _$identity);
}

abstract class _TeacherExamState implements TeacherExamState {
  const factory _TeacherExamState(
      {final List<TeacherExam> exams,
      final List<TeacherExam> filteredExams,
      final List<TeacherExamRegistration> registrations,
      required final DateTime selectedDate,
      required final DateTime focusedDay,
      final String? selectedLesson,
      final List<String> lessons,
      final bool isLoading,
      final String? error}) = _$TeacherExamStateImpl;

  @override
  List<TeacherExam> get exams;
  @override
  List<TeacherExam> get filteredExams;
  @override
  List<TeacherExamRegistration> get registrations;
  @override
  DateTime get selectedDate;
  @override
  DateTime get focusedDay;
  @override
  String? get selectedLesson;
  @override
  List<String> get lessons;
  @override
  bool get isLoading;
  @override
  String? get error;

  /// Create a copy of TeacherExamState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherExamStateImplCopyWith<_$TeacherExamStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
