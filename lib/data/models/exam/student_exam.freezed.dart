// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_exam.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentExam _$StudentExamFromJson(Map<String, dynamic> json) {
  return _StudentExam.fromJson(json);
}

/// @nodoc
mixin _$StudentExam {
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
  @JsonKey(name: 'exam_date')
  DateTime get examDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_title')
  String get lessonTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_description')
  String? get lessonDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'teacher_id')
  int get teacherId => throw _privateConstructorUsedError;
  @JsonKey(name: 'teacher_name')
  String get teacherName => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
  @JsonKey(name: 'score_desc')
  String? get scoreDesc => throw _privateConstructorUsedError;
  @JsonKey(name: 'isScore')
  bool get isScore => throw _privateConstructorUsedError;

  /// Serializes this StudentExam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentExam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentExamCopyWith<StudentExam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentExamCopyWith<$Res> {
  factory $StudentExamCopyWith(
          StudentExam value, $Res Function(StudentExam) then) =
      _$StudentExamCopyWithImpl<$Res, StudentExam>;
  @useResult
  $Res call(
      {@JsonKey(name: 'exam_id') int examId,
      @JsonKey(name: 'lesson_id') int lessonId,
      @JsonKey(name: 'exam_name') String examName,
      @JsonKey(name: 'exam_description') String examDescription,
      @JsonKey(name: 'upload_file') String? uploadFile,
      @JsonKey(name: 'exam_date') DateTime examDate,
      @JsonKey(name: 'lesson_title') String lessonTitle,
      @JsonKey(name: 'lesson_description') String? lessonDescription,
      @JsonKey(name: 'teacher_id') int teacherId,
      @JsonKey(name: 'teacher_name') String teacherName,
      int? score,
      @JsonKey(name: 'score_desc') String? scoreDesc,
      @JsonKey(name: 'isScore') bool isScore});
}

/// @nodoc
class _$StudentExamCopyWithImpl<$Res, $Val extends StudentExam>
    implements $StudentExamCopyWith<$Res> {
  _$StudentExamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentExam
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
    Object? score = freezed,
    Object? scoreDesc = freezed,
    Object? isScore = null,
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
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      scoreDesc: freezed == scoreDesc
          ? _value.scoreDesc
          : scoreDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      isScore: null == isScore
          ? _value.isScore
          : isScore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentExamImplCopyWith<$Res>
    implements $StudentExamCopyWith<$Res> {
  factory _$$StudentExamImplCopyWith(
          _$StudentExamImpl value, $Res Function(_$StudentExamImpl) then) =
      __$$StudentExamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'exam_id') int examId,
      @JsonKey(name: 'lesson_id') int lessonId,
      @JsonKey(name: 'exam_name') String examName,
      @JsonKey(name: 'exam_description') String examDescription,
      @JsonKey(name: 'upload_file') String? uploadFile,
      @JsonKey(name: 'exam_date') DateTime examDate,
      @JsonKey(name: 'lesson_title') String lessonTitle,
      @JsonKey(name: 'lesson_description') String? lessonDescription,
      @JsonKey(name: 'teacher_id') int teacherId,
      @JsonKey(name: 'teacher_name') String teacherName,
      int? score,
      @JsonKey(name: 'score_desc') String? scoreDesc,
      @JsonKey(name: 'isScore') bool isScore});
}

/// @nodoc
class __$$StudentExamImplCopyWithImpl<$Res>
    extends _$StudentExamCopyWithImpl<$Res, _$StudentExamImpl>
    implements _$$StudentExamImplCopyWith<$Res> {
  __$$StudentExamImplCopyWithImpl(
      _$StudentExamImpl _value, $Res Function(_$StudentExamImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentExam
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
    Object? score = freezed,
    Object? scoreDesc = freezed,
    Object? isScore = null,
  }) {
    return _then(_$StudentExamImpl(
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
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      scoreDesc: freezed == scoreDesc
          ? _value.scoreDesc
          : scoreDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      isScore: null == isScore
          ? _value.isScore
          : isScore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentExamImpl implements _StudentExam {
  const _$StudentExamImpl(
      {@JsonKey(name: 'exam_id') required this.examId,
      @JsonKey(name: 'lesson_id') required this.lessonId,
      @JsonKey(name: 'exam_name') required this.examName,
      @JsonKey(name: 'exam_description') required this.examDescription,
      @JsonKey(name: 'upload_file') this.uploadFile,
      @JsonKey(name: 'exam_date') required this.examDate,
      @JsonKey(name: 'lesson_title') required this.lessonTitle,
      @JsonKey(name: 'lesson_description') this.lessonDescription,
      @JsonKey(name: 'teacher_id') required this.teacherId,
      @JsonKey(name: 'teacher_name') required this.teacherName,
      this.score,
      @JsonKey(name: 'score_desc') this.scoreDesc,
      @JsonKey(name: 'isScore') this.isScore = false});

  factory _$StudentExamImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentExamImplFromJson(json);

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
  @JsonKey(name: 'exam_date')
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
  final int? score;
  @override
  @JsonKey(name: 'score_desc')
  final String? scoreDesc;
  @override
  @JsonKey(name: 'isScore')
  final bool isScore;

  @override
  String toString() {
    return 'StudentExam(examId: $examId, lessonId: $lessonId, examName: $examName, examDescription: $examDescription, uploadFile: $uploadFile, examDate: $examDate, lessonTitle: $lessonTitle, lessonDescription: $lessonDescription, teacherId: $teacherId, teacherName: $teacherName, score: $score, scoreDesc: $scoreDesc, isScore: $isScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentExamImpl &&
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
            (identical(other.score, score) || other.score == score) &&
            (identical(other.scoreDesc, scoreDesc) ||
                other.scoreDesc == scoreDesc) &&
            (identical(other.isScore, isScore) || other.isScore == isScore));
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
      score,
      scoreDesc,
      isScore);

  /// Create a copy of StudentExam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentExamImplCopyWith<_$StudentExamImpl> get copyWith =>
      __$$StudentExamImplCopyWithImpl<_$StudentExamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentExamImplToJson(
      this,
    );
  }
}

abstract class _StudentExam implements StudentExam {
  const factory _StudentExam(
      {@JsonKey(name: 'exam_id') required final int examId,
      @JsonKey(name: 'lesson_id') required final int lessonId,
      @JsonKey(name: 'exam_name') required final String examName,
      @JsonKey(name: 'exam_description') required final String examDescription,
      @JsonKey(name: 'upload_file') final String? uploadFile,
      @JsonKey(name: 'exam_date') required final DateTime examDate,
      @JsonKey(name: 'lesson_title') required final String lessonTitle,
      @JsonKey(name: 'lesson_description') final String? lessonDescription,
      @JsonKey(name: 'teacher_id') required final int teacherId,
      @JsonKey(name: 'teacher_name') required final String teacherName,
      final int? score,
      @JsonKey(name: 'score_desc') final String? scoreDesc,
      @JsonKey(name: 'isScore') final bool isScore}) = _$StudentExamImpl;

  factory _StudentExam.fromJson(Map<String, dynamic> json) =
      _$StudentExamImpl.fromJson;

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
  @JsonKey(name: 'exam_date')
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
  int? get score;
  @override
  @JsonKey(name: 'score_desc')
  String? get scoreDesc;
  @override
  @JsonKey(name: 'isScore')
  bool get isScore;

  /// Create a copy of StudentExam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentExamImplCopyWith<_$StudentExamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
