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
      @JsonKey(name: 'teacher_name') String teacherName});
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
      @JsonKey(name: 'teacher_name') String teacherName});
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
      @JsonKey(name: 'teacher_name') required this.teacherName});

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
  String toString() {
    return 'TeacherExam(examId: $examId, lessonId: $lessonId, examName: $examName, examDescription: $examDescription, uploadFile: $uploadFile, examDate: $examDate, lessonTitle: $lessonTitle, lessonDescription: $lessonDescription, teacherId: $teacherId, teacherName: $teacherName)';
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
                other.teacherName == teacherName));
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
      teacherName);

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
      @JsonKey(name: 'teacher_name')
      required final String teacherName}) = _$TeacherExamImpl;

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

  /// Create a copy of TeacherExam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherExamImplCopyWith<_$TeacherExamImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
  @JsonKey(ignore: true)
  File? get uploadedFile => throw _privateConstructorUsedError;

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
      @JsonKey(ignore: true) File? uploadedFile});
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
    Object? uploadedFile = freezed,
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
      uploadedFile: freezed == uploadedFile
          ? _value.uploadedFile
          : uploadedFile // ignore: cast_nullable_to_non_nullable
              as File?,
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
      @JsonKey(ignore: true) File? uploadedFile});
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
    Object? uploadedFile = freezed,
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
      uploadedFile: freezed == uploadedFile
          ? _value.uploadedFile
          : uploadedFile // ignore: cast_nullable_to_non_nullable
              as File?,
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
      @JsonKey(ignore: true) this.uploadedFile});

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
  @JsonKey(ignore: true)
  final File? uploadedFile;

  @override
  String toString() {
    return 'ExamCreateRequest(examName: $examName, examDescription: $examDescription, lessonId: $lessonId, examDate: $examDate, uploadedFile: $uploadedFile)';
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
            (identical(other.uploadedFile, uploadedFile) ||
                other.uploadedFile == uploadedFile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, examName, examDescription, lessonId, examDate, uploadedFile);

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
      @JsonKey(ignore: true)
      final File? uploadedFile}) = _$ExamCreateRequestImpl;

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
  @JsonKey(ignore: true)
  File? get uploadedFile;

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
      required this.selectedDate,
      required this.focusedDay,
      this.selectedLesson,
      final List<String> lessons = const [],
      this.isLoading = false,
      this.error})
      : _exams = exams,
        _filteredExams = filteredExams,
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
    return 'TeacherExamState(exams: $exams, filteredExams: $filteredExams, selectedDate: $selectedDate, focusedDay: $focusedDay, selectedLesson: $selectedLesson, lessons: $lessons, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherExamStateImpl &&
            const DeepCollectionEquality().equals(other._exams, _exams) &&
            const DeepCollectionEquality()
                .equals(other._filteredExams, _filteredExams) &&
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
