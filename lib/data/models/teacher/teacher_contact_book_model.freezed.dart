// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_contact_book_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeacherContactBook _$TeacherContactBookFromJson(Map<String, dynamic> json) {
  return _TeacherContactBook.fromJson(json);
}

/// @nodoc
mixin _$TeacherContactBook {
  @JsonKey(name: 'ContactBookId')
  int get contactBookId => throw _privateConstructorUsedError;
  @JsonKey(name: 'StudentId')
  int get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'StudentName')
  String get studentName => throw _privateConstructorUsedError;
  @JsonKey(name: 'TeacherId')
  int get teacherId => throw _privateConstructorUsedError;
  @JsonKey(name: 'TeacherName')
  String get teacherName => throw _privateConstructorUsedError;
  @JsonKey(name: 'LessonId')
  int get lessonId => throw _privateConstructorUsedError;
  @JsonKey(name: 'LessonTitle')
  String get lessonTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'LessonDate')
  DateTime get lessonDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'Title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'Status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'Messages')
  List<TeacherContactBookMessage> get messages =>
      throw _privateConstructorUsedError;

  /// Serializes this TeacherContactBook to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeacherContactBook
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherContactBookCopyWith<TeacherContactBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherContactBookCopyWith<$Res> {
  factory $TeacherContactBookCopyWith(
          TeacherContactBook value, $Res Function(TeacherContactBook) then) =
      _$TeacherContactBookCopyWithImpl<$Res, TeacherContactBook>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ContactBookId') int contactBookId,
      @JsonKey(name: 'StudentId') int studentId,
      @JsonKey(name: 'StudentName') String studentName,
      @JsonKey(name: 'TeacherId') int teacherId,
      @JsonKey(name: 'TeacherName') String teacherName,
      @JsonKey(name: 'LessonId') int lessonId,
      @JsonKey(name: 'LessonTitle') String lessonTitle,
      @JsonKey(name: 'LessonDate') DateTime lessonDate,
      @JsonKey(name: 'Title') String title,
      @JsonKey(name: 'Status') String status,
      @JsonKey(name: 'Messages') List<TeacherContactBookMessage> messages});
}

/// @nodoc
class _$TeacherContactBookCopyWithImpl<$Res, $Val extends TeacherContactBook>
    implements $TeacherContactBookCopyWith<$Res> {
  _$TeacherContactBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherContactBook
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactBookId = null,
    Object? studentId = null,
    Object? studentName = null,
    Object? teacherId = null,
    Object? teacherName = null,
    Object? lessonId = null,
    Object? lessonTitle = null,
    Object? lessonDate = null,
    Object? title = null,
    Object? status = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      contactBookId: null == contactBookId
          ? _value.contactBookId
          : contactBookId // ignore: cast_nullable_to_non_nullable
              as int,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int,
      teacherName: null == teacherName
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as int,
      lessonTitle: null == lessonTitle
          ? _value.lessonTitle
          : lessonTitle // ignore: cast_nullable_to_non_nullable
              as String,
      lessonDate: null == lessonDate
          ? _value.lessonDate
          : lessonDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<TeacherContactBookMessage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherContactBookImplCopyWith<$Res>
    implements $TeacherContactBookCopyWith<$Res> {
  factory _$$TeacherContactBookImplCopyWith(_$TeacherContactBookImpl value,
          $Res Function(_$TeacherContactBookImpl) then) =
      __$$TeacherContactBookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ContactBookId') int contactBookId,
      @JsonKey(name: 'StudentId') int studentId,
      @JsonKey(name: 'StudentName') String studentName,
      @JsonKey(name: 'TeacherId') int teacherId,
      @JsonKey(name: 'TeacherName') String teacherName,
      @JsonKey(name: 'LessonId') int lessonId,
      @JsonKey(name: 'LessonTitle') String lessonTitle,
      @JsonKey(name: 'LessonDate') DateTime lessonDate,
      @JsonKey(name: 'Title') String title,
      @JsonKey(name: 'Status') String status,
      @JsonKey(name: 'Messages') List<TeacherContactBookMessage> messages});
}

/// @nodoc
class __$$TeacherContactBookImplCopyWithImpl<$Res>
    extends _$TeacherContactBookCopyWithImpl<$Res, _$TeacherContactBookImpl>
    implements _$$TeacherContactBookImplCopyWith<$Res> {
  __$$TeacherContactBookImplCopyWithImpl(_$TeacherContactBookImpl _value,
      $Res Function(_$TeacherContactBookImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherContactBook
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactBookId = null,
    Object? studentId = null,
    Object? studentName = null,
    Object? teacherId = null,
    Object? teacherName = null,
    Object? lessonId = null,
    Object? lessonTitle = null,
    Object? lessonDate = null,
    Object? title = null,
    Object? status = null,
    Object? messages = null,
  }) {
    return _then(_$TeacherContactBookImpl(
      contactBookId: null == contactBookId
          ? _value.contactBookId
          : contactBookId // ignore: cast_nullable_to_non_nullable
              as int,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int,
      teacherName: null == teacherName
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as int,
      lessonTitle: null == lessonTitle
          ? _value.lessonTitle
          : lessonTitle // ignore: cast_nullable_to_non_nullable
              as String,
      lessonDate: null == lessonDate
          ? _value.lessonDate
          : lessonDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<TeacherContactBookMessage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherContactBookImpl implements _TeacherContactBook {
  const _$TeacherContactBookImpl(
      {@JsonKey(name: 'ContactBookId') required this.contactBookId,
      @JsonKey(name: 'StudentId') required this.studentId,
      @JsonKey(name: 'StudentName') required this.studentName,
      @JsonKey(name: 'TeacherId') required this.teacherId,
      @JsonKey(name: 'TeacherName') required this.teacherName,
      @JsonKey(name: 'LessonId') required this.lessonId,
      @JsonKey(name: 'LessonTitle') required this.lessonTitle,
      @JsonKey(name: 'LessonDate') required this.lessonDate,
      @JsonKey(name: 'Title') required this.title,
      @JsonKey(name: 'Status') required this.status,
      @JsonKey(name: 'Messages')
      required final List<TeacherContactBookMessage> messages})
      : _messages = messages;

  factory _$TeacherContactBookImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherContactBookImplFromJson(json);

  @override
  @JsonKey(name: 'ContactBookId')
  final int contactBookId;
  @override
  @JsonKey(name: 'StudentId')
  final int studentId;
  @override
  @JsonKey(name: 'StudentName')
  final String studentName;
  @override
  @JsonKey(name: 'TeacherId')
  final int teacherId;
  @override
  @JsonKey(name: 'TeacherName')
  final String teacherName;
  @override
  @JsonKey(name: 'LessonId')
  final int lessonId;
  @override
  @JsonKey(name: 'LessonTitle')
  final String lessonTitle;
  @override
  @JsonKey(name: 'LessonDate')
  final DateTime lessonDate;
  @override
  @JsonKey(name: 'Title')
  final String title;
  @override
  @JsonKey(name: 'Status')
  final String status;
  final List<TeacherContactBookMessage> _messages;
  @override
  @JsonKey(name: 'Messages')
  List<TeacherContactBookMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'TeacherContactBook(contactBookId: $contactBookId, studentId: $studentId, studentName: $studentName, teacherId: $teacherId, teacherName: $teacherName, lessonId: $lessonId, lessonTitle: $lessonTitle, lessonDate: $lessonDate, title: $title, status: $status, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherContactBookImpl &&
            (identical(other.contactBookId, contactBookId) ||
                other.contactBookId == contactBookId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId) &&
            (identical(other.teacherName, teacherName) ||
                other.teacherName == teacherName) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.lessonTitle, lessonTitle) ||
                other.lessonTitle == lessonTitle) &&
            (identical(other.lessonDate, lessonDate) ||
                other.lessonDate == lessonDate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      contactBookId,
      studentId,
      studentName,
      teacherId,
      teacherName,
      lessonId,
      lessonTitle,
      lessonDate,
      title,
      status,
      const DeepCollectionEquality().hash(_messages));

  /// Create a copy of TeacherContactBook
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherContactBookImplCopyWith<_$TeacherContactBookImpl> get copyWith =>
      __$$TeacherContactBookImplCopyWithImpl<_$TeacherContactBookImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherContactBookImplToJson(
      this,
    );
  }
}

abstract class _TeacherContactBook implements TeacherContactBook {
  const factory _TeacherContactBook(
          {@JsonKey(name: 'ContactBookId') required final int contactBookId,
          @JsonKey(name: 'StudentId') required final int studentId,
          @JsonKey(name: 'StudentName') required final String studentName,
          @JsonKey(name: 'TeacherId') required final int teacherId,
          @JsonKey(name: 'TeacherName') required final String teacherName,
          @JsonKey(name: 'LessonId') required final int lessonId,
          @JsonKey(name: 'LessonTitle') required final String lessonTitle,
          @JsonKey(name: 'LessonDate') required final DateTime lessonDate,
          @JsonKey(name: 'Title') required final String title,
          @JsonKey(name: 'Status') required final String status,
          @JsonKey(name: 'Messages')
          required final List<TeacherContactBookMessage> messages}) =
      _$TeacherContactBookImpl;

  factory _TeacherContactBook.fromJson(Map<String, dynamic> json) =
      _$TeacherContactBookImpl.fromJson;

  @override
  @JsonKey(name: 'ContactBookId')
  int get contactBookId;
  @override
  @JsonKey(name: 'StudentId')
  int get studentId;
  @override
  @JsonKey(name: 'StudentName')
  String get studentName;
  @override
  @JsonKey(name: 'TeacherId')
  int get teacherId;
  @override
  @JsonKey(name: 'TeacherName')
  String get teacherName;
  @override
  @JsonKey(name: 'LessonId')
  int get lessonId;
  @override
  @JsonKey(name: 'LessonTitle')
  String get lessonTitle;
  @override
  @JsonKey(name: 'LessonDate')
  DateTime get lessonDate;
  @override
  @JsonKey(name: 'Title')
  String get title;
  @override
  @JsonKey(name: 'Status')
  String get status;
  @override
  @JsonKey(name: 'Messages')
  List<TeacherContactBookMessage> get messages;

  /// Create a copy of TeacherContactBook
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherContactBookImplCopyWith<_$TeacherContactBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TeacherContactBookMessage _$TeacherContactBookMessageFromJson(
    Map<String, dynamic> json) {
  return _TeacherContactBookMessage.fromJson(json);
}

/// @nodoc
mixin _$TeacherContactBookMessage {
  @JsonKey(name: 'message_id')
  int get messageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_text')
  String get messageText => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_type')
  String get messageType => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_file')
  String? get uploadFile => throw _privateConstructorUsedError;

  /// Serializes this TeacherContactBookMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeacherContactBookMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherContactBookMessageCopyWith<TeacherContactBookMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherContactBookMessageCopyWith<$Res> {
  factory $TeacherContactBookMessageCopyWith(TeacherContactBookMessage value,
          $Res Function(TeacherContactBookMessage) then) =
      _$TeacherContactBookMessageCopyWithImpl<$Res, TeacherContactBookMessage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message_id') int messageId,
      @JsonKey(name: 'message_text') String messageText,
      @JsonKey(name: 'message_type') String messageType,
      @JsonKey(name: 'upload_file') String? uploadFile});
}

/// @nodoc
class _$TeacherContactBookMessageCopyWithImpl<$Res,
        $Val extends TeacherContactBookMessage>
    implements $TeacherContactBookMessageCopyWith<$Res> {
  _$TeacherContactBookMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherContactBookMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? messageText = null,
    Object? messageType = null,
    Object? uploadFile = freezed,
  }) {
    return _then(_value.copyWith(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int,
      messageText: null == messageText
          ? _value.messageText
          : messageText // ignore: cast_nullable_to_non_nullable
              as String,
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
      uploadFile: freezed == uploadFile
          ? _value.uploadFile
          : uploadFile // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherContactBookMessageImplCopyWith<$Res>
    implements $TeacherContactBookMessageCopyWith<$Res> {
  factory _$$TeacherContactBookMessageImplCopyWith(
          _$TeacherContactBookMessageImpl value,
          $Res Function(_$TeacherContactBookMessageImpl) then) =
      __$$TeacherContactBookMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message_id') int messageId,
      @JsonKey(name: 'message_text') String messageText,
      @JsonKey(name: 'message_type') String messageType,
      @JsonKey(name: 'upload_file') String? uploadFile});
}

/// @nodoc
class __$$TeacherContactBookMessageImplCopyWithImpl<$Res>
    extends _$TeacherContactBookMessageCopyWithImpl<$Res,
        _$TeacherContactBookMessageImpl>
    implements _$$TeacherContactBookMessageImplCopyWith<$Res> {
  __$$TeacherContactBookMessageImplCopyWithImpl(
      _$TeacherContactBookMessageImpl _value,
      $Res Function(_$TeacherContactBookMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherContactBookMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? messageText = null,
    Object? messageType = null,
    Object? uploadFile = freezed,
  }) {
    return _then(_$TeacherContactBookMessageImpl(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int,
      messageText: null == messageText
          ? _value.messageText
          : messageText // ignore: cast_nullable_to_non_nullable
              as String,
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
      uploadFile: freezed == uploadFile
          ? _value.uploadFile
          : uploadFile // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherContactBookMessageImpl implements _TeacherContactBookMessage {
  const _$TeacherContactBookMessageImpl(
      {@JsonKey(name: 'message_id') required this.messageId,
      @JsonKey(name: 'message_text') required this.messageText,
      @JsonKey(name: 'message_type') required this.messageType,
      @JsonKey(name: 'upload_file') this.uploadFile});

  factory _$TeacherContactBookMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherContactBookMessageImplFromJson(json);

  @override
  @JsonKey(name: 'message_id')
  final int messageId;
  @override
  @JsonKey(name: 'message_text')
  final String messageText;
  @override
  @JsonKey(name: 'message_type')
  final String messageType;
  @override
  @JsonKey(name: 'upload_file')
  final String? uploadFile;

  @override
  String toString() {
    return 'TeacherContactBookMessage(messageId: $messageId, messageText: $messageText, messageType: $messageType, uploadFile: $uploadFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherContactBookMessageImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.messageText, messageText) ||
                other.messageText == messageText) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            (identical(other.uploadFile, uploadFile) ||
                other.uploadFile == uploadFile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, messageId, messageText, messageType, uploadFile);

  /// Create a copy of TeacherContactBookMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherContactBookMessageImplCopyWith<_$TeacherContactBookMessageImpl>
      get copyWith => __$$TeacherContactBookMessageImplCopyWithImpl<
          _$TeacherContactBookMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherContactBookMessageImplToJson(
      this,
    );
  }
}

abstract class _TeacherContactBookMessage implements TeacherContactBookMessage {
  const factory _TeacherContactBookMessage(
          {@JsonKey(name: 'message_id') required final int messageId,
          @JsonKey(name: 'message_text') required final String messageText,
          @JsonKey(name: 'message_type') required final String messageType,
          @JsonKey(name: 'upload_file') final String? uploadFile}) =
      _$TeacherContactBookMessageImpl;

  factory _TeacherContactBookMessage.fromJson(Map<String, dynamic> json) =
      _$TeacherContactBookMessageImpl.fromJson;

  @override
  @JsonKey(name: 'message_id')
  int get messageId;
  @override
  @JsonKey(name: 'message_text')
  String get messageText;
  @override
  @JsonKey(name: 'message_type')
  String get messageType;
  @override
  @JsonKey(name: 'upload_file')
  String? get uploadFile;

  /// Create a copy of TeacherContactBookMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherContactBookMessageImplCopyWith<_$TeacherContactBookMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TeacherContactBookState {
  List<TeacherContactBook> get contactBooks =>
      throw _privateConstructorUsedError;
  List<TeacherContactBook> get filteredContactBooks =>
      throw _privateConstructorUsedError;
  List<LessonStudent> get lessonStudents => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  int? get selectedLessonId => throw _privateConstructorUsedError;

  /// Create a copy of TeacherContactBookState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherContactBookStateCopyWith<TeacherContactBookState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherContactBookStateCopyWith<$Res> {
  factory $TeacherContactBookStateCopyWith(TeacherContactBookState value,
          $Res Function(TeacherContactBookState) then) =
      _$TeacherContactBookStateCopyWithImpl<$Res, TeacherContactBookState>;
  @useResult
  $Res call(
      {List<TeacherContactBook> contactBooks,
      List<TeacherContactBook> filteredContactBooks,
      List<LessonStudent> lessonStudents,
      bool isLoading,
      String? error,
      int? selectedLessonId});
}

/// @nodoc
class _$TeacherContactBookStateCopyWithImpl<$Res,
        $Val extends TeacherContactBookState>
    implements $TeacherContactBookStateCopyWith<$Res> {
  _$TeacherContactBookStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherContactBookState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactBooks = null,
    Object? filteredContactBooks = null,
    Object? lessonStudents = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? selectedLessonId = freezed,
  }) {
    return _then(_value.copyWith(
      contactBooks: null == contactBooks
          ? _value.contactBooks
          : contactBooks // ignore: cast_nullable_to_non_nullable
              as List<TeacherContactBook>,
      filteredContactBooks: null == filteredContactBooks
          ? _value.filteredContactBooks
          : filteredContactBooks // ignore: cast_nullable_to_non_nullable
              as List<TeacherContactBook>,
      lessonStudents: null == lessonStudents
          ? _value.lessonStudents
          : lessonStudents // ignore: cast_nullable_to_non_nullable
              as List<LessonStudent>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedLessonId: freezed == selectedLessonId
          ? _value.selectedLessonId
          : selectedLessonId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherContactBookStateImplCopyWith<$Res>
    implements $TeacherContactBookStateCopyWith<$Res> {
  factory _$$TeacherContactBookStateImplCopyWith(
          _$TeacherContactBookStateImpl value,
          $Res Function(_$TeacherContactBookStateImpl) then) =
      __$$TeacherContactBookStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TeacherContactBook> contactBooks,
      List<TeacherContactBook> filteredContactBooks,
      List<LessonStudent> lessonStudents,
      bool isLoading,
      String? error,
      int? selectedLessonId});
}

/// @nodoc
class __$$TeacherContactBookStateImplCopyWithImpl<$Res>
    extends _$TeacherContactBookStateCopyWithImpl<$Res,
        _$TeacherContactBookStateImpl>
    implements _$$TeacherContactBookStateImplCopyWith<$Res> {
  __$$TeacherContactBookStateImplCopyWithImpl(
      _$TeacherContactBookStateImpl _value,
      $Res Function(_$TeacherContactBookStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherContactBookState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactBooks = null,
    Object? filteredContactBooks = null,
    Object? lessonStudents = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? selectedLessonId = freezed,
  }) {
    return _then(_$TeacherContactBookStateImpl(
      contactBooks: null == contactBooks
          ? _value._contactBooks
          : contactBooks // ignore: cast_nullable_to_non_nullable
              as List<TeacherContactBook>,
      filteredContactBooks: null == filteredContactBooks
          ? _value._filteredContactBooks
          : filteredContactBooks // ignore: cast_nullable_to_non_nullable
              as List<TeacherContactBook>,
      lessonStudents: null == lessonStudents
          ? _value._lessonStudents
          : lessonStudents // ignore: cast_nullable_to_non_nullable
              as List<LessonStudent>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedLessonId: freezed == selectedLessonId
          ? _value.selectedLessonId
          : selectedLessonId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$TeacherContactBookStateImpl implements _TeacherContactBookState {
  const _$TeacherContactBookStateImpl(
      {final List<TeacherContactBook> contactBooks = const [],
      final List<TeacherContactBook> filteredContactBooks = const [],
      final List<LessonStudent> lessonStudents = const [],
      this.isLoading = false,
      this.error,
      this.selectedLessonId})
      : _contactBooks = contactBooks,
        _filteredContactBooks = filteredContactBooks,
        _lessonStudents = lessonStudents;

  final List<TeacherContactBook> _contactBooks;
  @override
  @JsonKey()
  List<TeacherContactBook> get contactBooks {
    if (_contactBooks is EqualUnmodifiableListView) return _contactBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contactBooks);
  }

  final List<TeacherContactBook> _filteredContactBooks;
  @override
  @JsonKey()
  List<TeacherContactBook> get filteredContactBooks {
    if (_filteredContactBooks is EqualUnmodifiableListView)
      return _filteredContactBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredContactBooks);
  }

  final List<LessonStudent> _lessonStudents;
  @override
  @JsonKey()
  List<LessonStudent> get lessonStudents {
    if (_lessonStudents is EqualUnmodifiableListView) return _lessonStudents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessonStudents);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  @override
  final int? selectedLessonId;

  @override
  String toString() {
    return 'TeacherContactBookState(contactBooks: $contactBooks, filteredContactBooks: $filteredContactBooks, lessonStudents: $lessonStudents, isLoading: $isLoading, error: $error, selectedLessonId: $selectedLessonId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherContactBookStateImpl &&
            const DeepCollectionEquality()
                .equals(other._contactBooks, _contactBooks) &&
            const DeepCollectionEquality()
                .equals(other._filteredContactBooks, _filteredContactBooks) &&
            const DeepCollectionEquality()
                .equals(other._lessonStudents, _lessonStudents) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.selectedLessonId, selectedLessonId) ||
                other.selectedLessonId == selectedLessonId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_contactBooks),
      const DeepCollectionEquality().hash(_filteredContactBooks),
      const DeepCollectionEquality().hash(_lessonStudents),
      isLoading,
      error,
      selectedLessonId);

  /// Create a copy of TeacherContactBookState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherContactBookStateImplCopyWith<_$TeacherContactBookStateImpl>
      get copyWith => __$$TeacherContactBookStateImplCopyWithImpl<
          _$TeacherContactBookStateImpl>(this, _$identity);
}

abstract class _TeacherContactBookState implements TeacherContactBookState {
  const factory _TeacherContactBookState(
      {final List<TeacherContactBook> contactBooks,
      final List<TeacherContactBook> filteredContactBooks,
      final List<LessonStudent> lessonStudents,
      final bool isLoading,
      final String? error,
      final int? selectedLessonId}) = _$TeacherContactBookStateImpl;

  @override
  List<TeacherContactBook> get contactBooks;
  @override
  List<TeacherContactBook> get filteredContactBooks;
  @override
  List<LessonStudent> get lessonStudents;
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  int? get selectedLessonId;

  /// Create a copy of TeacherContactBookState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherContactBookStateImplCopyWith<_$TeacherContactBookStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
