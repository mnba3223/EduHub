// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_homework_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TeacherHomeworkState {
  List<TeacherHomeworkListItem> get homeworks =>
      throw _privateConstructorUsedError;
  List<TeacherHomeworkListItem> get filteredHomeworks =>
      throw _privateConstructorUsedError;
  List<String> get classrooms => throw _privateConstructorUsedError;
  List<String> get lessons => throw _privateConstructorUsedError;
  List<Lesson> get teacherLessons =>
      throw _privateConstructorUsedError; // 新增教師課程列表
  TeacherHomeworkListItem? get selectedHomework =>
      throw _privateConstructorUsedError;
  List<TeacherHomeworkSubmission> get submissions =>
      throw _privateConstructorUsedError;
  String? get selectedClassroom => throw _privateConstructorUsedError;
  String? get selectedLesson => throw _privateConstructorUsedError;
  Lesson? get selectedTeacherLesson =>
      throw _privateConstructorUsedError; // 新增選中的課程
  DateTime get selectedDate => throw _privateConstructorUsedError;
  DateTime get focusedDay => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError; // 添加成功消息
// 新增下載相關狀態
  Map<String, double> get downloadProgress =>
      throw _privateConstructorUsedError;
  bool get isDownloading => throw _privateConstructorUsedError; // 新增評分相關狀態
  bool get isGrading => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError; // 新增作業提交狀態
  File? get selectedFile => throw _privateConstructorUsedError;

  /// Create a copy of TeacherHomeworkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherHomeworkStateCopyWith<TeacherHomeworkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherHomeworkStateCopyWith<$Res> {
  factory $TeacherHomeworkStateCopyWith(TeacherHomeworkState value,
          $Res Function(TeacherHomeworkState) then) =
      _$TeacherHomeworkStateCopyWithImpl<$Res, TeacherHomeworkState>;
  @useResult
  $Res call(
      {List<TeacherHomeworkListItem> homeworks,
      List<TeacherHomeworkListItem> filteredHomeworks,
      List<String> classrooms,
      List<String> lessons,
      List<Lesson> teacherLessons,
      TeacherHomeworkListItem? selectedHomework,
      List<TeacherHomeworkSubmission> submissions,
      String? selectedClassroom,
      String? selectedLesson,
      Lesson? selectedTeacherLesson,
      DateTime selectedDate,
      DateTime focusedDay,
      bool isLoading,
      String? error,
      String? message,
      Map<String, double> downloadProgress,
      bool isDownloading,
      bool isGrading,
      bool isSubmitting,
      File? selectedFile});

  $TeacherHomeworkListItemCopyWith<$Res>? get selectedHomework;
  $LessonCopyWith<$Res>? get selectedTeacherLesson;
}

/// @nodoc
class _$TeacherHomeworkStateCopyWithImpl<$Res,
        $Val extends TeacherHomeworkState>
    implements $TeacherHomeworkStateCopyWith<$Res> {
  _$TeacherHomeworkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherHomeworkState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeworks = null,
    Object? filteredHomeworks = null,
    Object? classrooms = null,
    Object? lessons = null,
    Object? teacherLessons = null,
    Object? selectedHomework = freezed,
    Object? submissions = null,
    Object? selectedClassroom = freezed,
    Object? selectedLesson = freezed,
    Object? selectedTeacherLesson = freezed,
    Object? selectedDate = null,
    Object? focusedDay = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? message = freezed,
    Object? downloadProgress = null,
    Object? isDownloading = null,
    Object? isGrading = null,
    Object? isSubmitting = null,
    Object? selectedFile = freezed,
  }) {
    return _then(_value.copyWith(
      homeworks: null == homeworks
          ? _value.homeworks
          : homeworks // ignore: cast_nullable_to_non_nullable
              as List<TeacherHomeworkListItem>,
      filteredHomeworks: null == filteredHomeworks
          ? _value.filteredHomeworks
          : filteredHomeworks // ignore: cast_nullable_to_non_nullable
              as List<TeacherHomeworkListItem>,
      classrooms: null == classrooms
          ? _value.classrooms
          : classrooms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lessons: null == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      teacherLessons: null == teacherLessons
          ? _value.teacherLessons
          : teacherLessons // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
      selectedHomework: freezed == selectedHomework
          ? _value.selectedHomework
          : selectedHomework // ignore: cast_nullable_to_non_nullable
              as TeacherHomeworkListItem?,
      submissions: null == submissions
          ? _value.submissions
          : submissions // ignore: cast_nullable_to_non_nullable
              as List<TeacherHomeworkSubmission>,
      selectedClassroom: freezed == selectedClassroom
          ? _value.selectedClassroom
          : selectedClassroom // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedLesson: freezed == selectedLesson
          ? _value.selectedLesson
          : selectedLesson // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedTeacherLesson: freezed == selectedTeacherLesson
          ? _value.selectedTeacherLesson
          : selectedTeacherLesson // ignore: cast_nullable_to_non_nullable
              as Lesson?,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      focusedDay: null == focusedDay
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      downloadProgress: null == downloadProgress
          ? _value.downloadProgress
          : downloadProgress // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      isDownloading: null == isDownloading
          ? _value.isDownloading
          : isDownloading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGrading: null == isGrading
          ? _value.isGrading
          : isGrading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedFile: freezed == selectedFile
          ? _value.selectedFile
          : selectedFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }

  /// Create a copy of TeacherHomeworkState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TeacherHomeworkListItemCopyWith<$Res>? get selectedHomework {
    if (_value.selectedHomework == null) {
      return null;
    }

    return $TeacherHomeworkListItemCopyWith<$Res>(_value.selectedHomework!,
        (value) {
      return _then(_value.copyWith(selectedHomework: value) as $Val);
    });
  }

  /// Create a copy of TeacherHomeworkState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LessonCopyWith<$Res>? get selectedTeacherLesson {
    if (_value.selectedTeacherLesson == null) {
      return null;
    }

    return $LessonCopyWith<$Res>(_value.selectedTeacherLesson!, (value) {
      return _then(_value.copyWith(selectedTeacherLesson: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeacherHomeworkStateImplCopyWith<$Res>
    implements $TeacherHomeworkStateCopyWith<$Res> {
  factory _$$TeacherHomeworkStateImplCopyWith(_$TeacherHomeworkStateImpl value,
          $Res Function(_$TeacherHomeworkStateImpl) then) =
      __$$TeacherHomeworkStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TeacherHomeworkListItem> homeworks,
      List<TeacherHomeworkListItem> filteredHomeworks,
      List<String> classrooms,
      List<String> lessons,
      List<Lesson> teacherLessons,
      TeacherHomeworkListItem? selectedHomework,
      List<TeacherHomeworkSubmission> submissions,
      String? selectedClassroom,
      String? selectedLesson,
      Lesson? selectedTeacherLesson,
      DateTime selectedDate,
      DateTime focusedDay,
      bool isLoading,
      String? error,
      String? message,
      Map<String, double> downloadProgress,
      bool isDownloading,
      bool isGrading,
      bool isSubmitting,
      File? selectedFile});

  @override
  $TeacherHomeworkListItemCopyWith<$Res>? get selectedHomework;
  @override
  $LessonCopyWith<$Res>? get selectedTeacherLesson;
}

/// @nodoc
class __$$TeacherHomeworkStateImplCopyWithImpl<$Res>
    extends _$TeacherHomeworkStateCopyWithImpl<$Res, _$TeacherHomeworkStateImpl>
    implements _$$TeacherHomeworkStateImplCopyWith<$Res> {
  __$$TeacherHomeworkStateImplCopyWithImpl(_$TeacherHomeworkStateImpl _value,
      $Res Function(_$TeacherHomeworkStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherHomeworkState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeworks = null,
    Object? filteredHomeworks = null,
    Object? classrooms = null,
    Object? lessons = null,
    Object? teacherLessons = null,
    Object? selectedHomework = freezed,
    Object? submissions = null,
    Object? selectedClassroom = freezed,
    Object? selectedLesson = freezed,
    Object? selectedTeacherLesson = freezed,
    Object? selectedDate = null,
    Object? focusedDay = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? message = freezed,
    Object? downloadProgress = null,
    Object? isDownloading = null,
    Object? isGrading = null,
    Object? isSubmitting = null,
    Object? selectedFile = freezed,
  }) {
    return _then(_$TeacherHomeworkStateImpl(
      homeworks: null == homeworks
          ? _value._homeworks
          : homeworks // ignore: cast_nullable_to_non_nullable
              as List<TeacherHomeworkListItem>,
      filteredHomeworks: null == filteredHomeworks
          ? _value._filteredHomeworks
          : filteredHomeworks // ignore: cast_nullable_to_non_nullable
              as List<TeacherHomeworkListItem>,
      classrooms: null == classrooms
          ? _value._classrooms
          : classrooms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lessons: null == lessons
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      teacherLessons: null == teacherLessons
          ? _value._teacherLessons
          : teacherLessons // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
      selectedHomework: freezed == selectedHomework
          ? _value.selectedHomework
          : selectedHomework // ignore: cast_nullable_to_non_nullable
              as TeacherHomeworkListItem?,
      submissions: null == submissions
          ? _value._submissions
          : submissions // ignore: cast_nullable_to_non_nullable
              as List<TeacherHomeworkSubmission>,
      selectedClassroom: freezed == selectedClassroom
          ? _value.selectedClassroom
          : selectedClassroom // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedLesson: freezed == selectedLesson
          ? _value.selectedLesson
          : selectedLesson // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedTeacherLesson: freezed == selectedTeacherLesson
          ? _value.selectedTeacherLesson
          : selectedTeacherLesson // ignore: cast_nullable_to_non_nullable
              as Lesson?,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      focusedDay: null == focusedDay
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      downloadProgress: null == downloadProgress
          ? _value._downloadProgress
          : downloadProgress // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      isDownloading: null == isDownloading
          ? _value.isDownloading
          : isDownloading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGrading: null == isGrading
          ? _value.isGrading
          : isGrading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedFile: freezed == selectedFile
          ? _value.selectedFile
          : selectedFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$TeacherHomeworkStateImpl implements _TeacherHomeworkState {
  const _$TeacherHomeworkStateImpl(
      {final List<TeacherHomeworkListItem> homeworks = const [],
      final List<TeacherHomeworkListItem> filteredHomeworks = const [],
      final List<String> classrooms = const [],
      final List<String> lessons = const [],
      final List<Lesson> teacherLessons = const [],
      this.selectedHomework,
      final List<TeacherHomeworkSubmission> submissions = const [],
      this.selectedClassroom,
      this.selectedLesson,
      this.selectedTeacherLesson,
      required this.selectedDate,
      required this.focusedDay,
      this.isLoading = false,
      this.error,
      this.message,
      final Map<String, double> downloadProgress = const {},
      this.isDownloading = false,
      this.isGrading = false,
      this.isSubmitting = false,
      this.selectedFile})
      : _homeworks = homeworks,
        _filteredHomeworks = filteredHomeworks,
        _classrooms = classrooms,
        _lessons = lessons,
        _teacherLessons = teacherLessons,
        _submissions = submissions,
        _downloadProgress = downloadProgress;

  final List<TeacherHomeworkListItem> _homeworks;
  @override
  @JsonKey()
  List<TeacherHomeworkListItem> get homeworks {
    if (_homeworks is EqualUnmodifiableListView) return _homeworks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_homeworks);
  }

  final List<TeacherHomeworkListItem> _filteredHomeworks;
  @override
  @JsonKey()
  List<TeacherHomeworkListItem> get filteredHomeworks {
    if (_filteredHomeworks is EqualUnmodifiableListView)
      return _filteredHomeworks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredHomeworks);
  }

  final List<String> _classrooms;
  @override
  @JsonKey()
  List<String> get classrooms {
    if (_classrooms is EqualUnmodifiableListView) return _classrooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classrooms);
  }

  final List<String> _lessons;
  @override
  @JsonKey()
  List<String> get lessons {
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  final List<Lesson> _teacherLessons;
  @override
  @JsonKey()
  List<Lesson> get teacherLessons {
    if (_teacherLessons is EqualUnmodifiableListView) return _teacherLessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teacherLessons);
  }

// 新增教師課程列表
  @override
  final TeacherHomeworkListItem? selectedHomework;
  final List<TeacherHomeworkSubmission> _submissions;
  @override
  @JsonKey()
  List<TeacherHomeworkSubmission> get submissions {
    if (_submissions is EqualUnmodifiableListView) return _submissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_submissions);
  }

  @override
  final String? selectedClassroom;
  @override
  final String? selectedLesson;
  @override
  final Lesson? selectedTeacherLesson;
// 新增選中的課程
  @override
  final DateTime selectedDate;
  @override
  final DateTime focusedDay;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  @override
  final String? message;
// 添加成功消息
// 新增下載相關狀態
  final Map<String, double> _downloadProgress;
// 添加成功消息
// 新增下載相關狀態
  @override
  @JsonKey()
  Map<String, double> get downloadProgress {
    if (_downloadProgress is EqualUnmodifiableMapView) return _downloadProgress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_downloadProgress);
  }

  @override
  @JsonKey()
  final bool isDownloading;
// 新增評分相關狀態
  @override
  @JsonKey()
  final bool isGrading;
  @override
  @JsonKey()
  final bool isSubmitting;
// 新增作業提交狀態
  @override
  final File? selectedFile;

  @override
  String toString() {
    return 'TeacherHomeworkState(homeworks: $homeworks, filteredHomeworks: $filteredHomeworks, classrooms: $classrooms, lessons: $lessons, teacherLessons: $teacherLessons, selectedHomework: $selectedHomework, submissions: $submissions, selectedClassroom: $selectedClassroom, selectedLesson: $selectedLesson, selectedTeacherLesson: $selectedTeacherLesson, selectedDate: $selectedDate, focusedDay: $focusedDay, isLoading: $isLoading, error: $error, message: $message, downloadProgress: $downloadProgress, isDownloading: $isDownloading, isGrading: $isGrading, isSubmitting: $isSubmitting, selectedFile: $selectedFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherHomeworkStateImpl &&
            const DeepCollectionEquality()
                .equals(other._homeworks, _homeworks) &&
            const DeepCollectionEquality()
                .equals(other._filteredHomeworks, _filteredHomeworks) &&
            const DeepCollectionEquality()
                .equals(other._classrooms, _classrooms) &&
            const DeepCollectionEquality().equals(other._lessons, _lessons) &&
            const DeepCollectionEquality()
                .equals(other._teacherLessons, _teacherLessons) &&
            (identical(other.selectedHomework, selectedHomework) ||
                other.selectedHomework == selectedHomework) &&
            const DeepCollectionEquality()
                .equals(other._submissions, _submissions) &&
            (identical(other.selectedClassroom, selectedClassroom) ||
                other.selectedClassroom == selectedClassroom) &&
            (identical(other.selectedLesson, selectedLesson) ||
                other.selectedLesson == selectedLesson) &&
            (identical(other.selectedTeacherLesson, selectedTeacherLesson) ||
                other.selectedTeacherLesson == selectedTeacherLesson) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.focusedDay, focusedDay) ||
                other.focusedDay == focusedDay) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._downloadProgress, _downloadProgress) &&
            (identical(other.isDownloading, isDownloading) ||
                other.isDownloading == isDownloading) &&
            (identical(other.isGrading, isGrading) ||
                other.isGrading == isGrading) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.selectedFile, selectedFile) ||
                other.selectedFile == selectedFile));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_homeworks),
        const DeepCollectionEquality().hash(_filteredHomeworks),
        const DeepCollectionEquality().hash(_classrooms),
        const DeepCollectionEquality().hash(_lessons),
        const DeepCollectionEquality().hash(_teacherLessons),
        selectedHomework,
        const DeepCollectionEquality().hash(_submissions),
        selectedClassroom,
        selectedLesson,
        selectedTeacherLesson,
        selectedDate,
        focusedDay,
        isLoading,
        error,
        message,
        const DeepCollectionEquality().hash(_downloadProgress),
        isDownloading,
        isGrading,
        isSubmitting,
        selectedFile
      ]);

  /// Create a copy of TeacherHomeworkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherHomeworkStateImplCopyWith<_$TeacherHomeworkStateImpl>
      get copyWith =>
          __$$TeacherHomeworkStateImplCopyWithImpl<_$TeacherHomeworkStateImpl>(
              this, _$identity);
}

abstract class _TeacherHomeworkState implements TeacherHomeworkState {
  const factory _TeacherHomeworkState(
      {final List<TeacherHomeworkListItem> homeworks,
      final List<TeacherHomeworkListItem> filteredHomeworks,
      final List<String> classrooms,
      final List<String> lessons,
      final List<Lesson> teacherLessons,
      final TeacherHomeworkListItem? selectedHomework,
      final List<TeacherHomeworkSubmission> submissions,
      final String? selectedClassroom,
      final String? selectedLesson,
      final Lesson? selectedTeacherLesson,
      required final DateTime selectedDate,
      required final DateTime focusedDay,
      final bool isLoading,
      final String? error,
      final String? message,
      final Map<String, double> downloadProgress,
      final bool isDownloading,
      final bool isGrading,
      final bool isSubmitting,
      final File? selectedFile}) = _$TeacherHomeworkStateImpl;

  @override
  List<TeacherHomeworkListItem> get homeworks;
  @override
  List<TeacherHomeworkListItem> get filteredHomeworks;
  @override
  List<String> get classrooms;
  @override
  List<String> get lessons;
  @override
  List<Lesson> get teacherLessons; // 新增教師課程列表
  @override
  TeacherHomeworkListItem? get selectedHomework;
  @override
  List<TeacherHomeworkSubmission> get submissions;
  @override
  String? get selectedClassroom;
  @override
  String? get selectedLesson;
  @override
  Lesson? get selectedTeacherLesson; // 新增選中的課程
  @override
  DateTime get selectedDate;
  @override
  DateTime get focusedDay;
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  String? get message; // 添加成功消息
// 新增下載相關狀態
  @override
  Map<String, double> get downloadProgress;
  @override
  bool get isDownloading; // 新增評分相關狀態
  @override
  bool get isGrading;
  @override
  bool get isSubmitting; // 新增作業提交狀態
  @override
  File? get selectedFile;

  /// Create a copy of TeacherHomeworkState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherHomeworkStateImplCopyWith<_$TeacherHomeworkStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
