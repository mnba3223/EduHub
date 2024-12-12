// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContactBook _$ContactBookFromJson(Map<String, dynamic> json) {
  return _ContactBook.fromJson(json);
}

/// @nodoc
mixin _$ContactBook {
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
  @JsonKey(name: 'ClassId')
  int get classId => throw _privateConstructorUsedError;
  @JsonKey(name: 'LessonDate')
  DateTime get lessonDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'Title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'Content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'Messages')
  List<ContactBookMessage> get messages => throw _privateConstructorUsedError;

  /// Serializes this ContactBook to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContactBook
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactBookCopyWith<ContactBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactBookCopyWith<$Res> {
  factory $ContactBookCopyWith(
          ContactBook value, $Res Function(ContactBook) then) =
      _$ContactBookCopyWithImpl<$Res, ContactBook>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ContactBookId') int contactBookId,
      @JsonKey(name: 'StudentId') int studentId,
      @JsonKey(name: 'StudentName') String studentName,
      @JsonKey(name: 'TeacherId') int teacherId,
      @JsonKey(name: 'TeacherName') String teacherName,
      @JsonKey(name: 'LessonId') int lessonId,
      @JsonKey(name: 'ClassId') int classId,
      @JsonKey(name: 'LessonDate') DateTime lessonDate,
      @JsonKey(name: 'Title') String title,
      @JsonKey(name: 'Content') String content,
      @JsonKey(name: 'Messages') List<ContactBookMessage> messages});
}

/// @nodoc
class _$ContactBookCopyWithImpl<$Res, $Val extends ContactBook>
    implements $ContactBookCopyWith<$Res> {
  _$ContactBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactBook
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
    Object? classId = null,
    Object? lessonDate = null,
    Object? title = null,
    Object? content = null,
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
      classId: null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int,
      lessonDate: null == lessonDate
          ? _value.lessonDate
          : lessonDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ContactBookMessage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactBookImplCopyWith<$Res>
    implements $ContactBookCopyWith<$Res> {
  factory _$$ContactBookImplCopyWith(
          _$ContactBookImpl value, $Res Function(_$ContactBookImpl) then) =
      __$$ContactBookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ContactBookId') int contactBookId,
      @JsonKey(name: 'StudentId') int studentId,
      @JsonKey(name: 'StudentName') String studentName,
      @JsonKey(name: 'TeacherId') int teacherId,
      @JsonKey(name: 'TeacherName') String teacherName,
      @JsonKey(name: 'LessonId') int lessonId,
      @JsonKey(name: 'ClassId') int classId,
      @JsonKey(name: 'LessonDate') DateTime lessonDate,
      @JsonKey(name: 'Title') String title,
      @JsonKey(name: 'Content') String content,
      @JsonKey(name: 'Messages') List<ContactBookMessage> messages});
}

/// @nodoc
class __$$ContactBookImplCopyWithImpl<$Res>
    extends _$ContactBookCopyWithImpl<$Res, _$ContactBookImpl>
    implements _$$ContactBookImplCopyWith<$Res> {
  __$$ContactBookImplCopyWithImpl(
      _$ContactBookImpl _value, $Res Function(_$ContactBookImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactBook
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
    Object? classId = null,
    Object? lessonDate = null,
    Object? title = null,
    Object? content = null,
    Object? messages = null,
  }) {
    return _then(_$ContactBookImpl(
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
      classId: null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int,
      lessonDate: null == lessonDate
          ? _value.lessonDate
          : lessonDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ContactBookMessage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactBookImpl implements _ContactBook {
  const _$ContactBookImpl(
      {@JsonKey(name: 'ContactBookId') required this.contactBookId,
      @JsonKey(name: 'StudentId') required this.studentId,
      @JsonKey(name: 'StudentName') required this.studentName,
      @JsonKey(name: 'TeacherId') required this.teacherId,
      @JsonKey(name: 'TeacherName') required this.teacherName,
      @JsonKey(name: 'LessonId') required this.lessonId,
      @JsonKey(name: 'ClassId') required this.classId,
      @JsonKey(name: 'LessonDate') required this.lessonDate,
      @JsonKey(name: 'Title') required this.title,
      @JsonKey(name: 'Content') required this.content,
      @JsonKey(name: 'Messages')
      required final List<ContactBookMessage> messages})
      : _messages = messages;

  factory _$ContactBookImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactBookImplFromJson(json);

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
  @JsonKey(name: 'ClassId')
  final int classId;
  @override
  @JsonKey(name: 'LessonDate')
  final DateTime lessonDate;
  @override
  @JsonKey(name: 'Title')
  final String title;
  @override
  @JsonKey(name: 'Content')
  final String content;
  final List<ContactBookMessage> _messages;
  @override
  @JsonKey(name: 'Messages')
  List<ContactBookMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ContactBook(contactBookId: $contactBookId, studentId: $studentId, studentName: $studentName, teacherId: $teacherId, teacherName: $teacherName, lessonId: $lessonId, classId: $classId, lessonDate: $lessonDate, title: $title, content: $content, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactBookImpl &&
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
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.lessonDate, lessonDate) ||
                other.lessonDate == lessonDate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
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
      classId,
      lessonDate,
      title,
      content,
      const DeepCollectionEquality().hash(_messages));

  /// Create a copy of ContactBook
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactBookImplCopyWith<_$ContactBookImpl> get copyWith =>
      __$$ContactBookImplCopyWithImpl<_$ContactBookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactBookImplToJson(
      this,
    );
  }
}

abstract class _ContactBook implements ContactBook {
  const factory _ContactBook(
      {@JsonKey(name: 'ContactBookId') required final int contactBookId,
      @JsonKey(name: 'StudentId') required final int studentId,
      @JsonKey(name: 'StudentName') required final String studentName,
      @JsonKey(name: 'TeacherId') required final int teacherId,
      @JsonKey(name: 'TeacherName') required final String teacherName,
      @JsonKey(name: 'LessonId') required final int lessonId,
      @JsonKey(name: 'ClassId') required final int classId,
      @JsonKey(name: 'LessonDate') required final DateTime lessonDate,
      @JsonKey(name: 'Title') required final String title,
      @JsonKey(name: 'Content') required final String content,
      @JsonKey(name: 'Messages')
      required final List<ContactBookMessage> messages}) = _$ContactBookImpl;

  factory _ContactBook.fromJson(Map<String, dynamic> json) =
      _$ContactBookImpl.fromJson;

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
  @JsonKey(name: 'ClassId')
  int get classId;
  @override
  @JsonKey(name: 'LessonDate')
  DateTime get lessonDate;
  @override
  @JsonKey(name: 'Title')
  String get title;
  @override
  @JsonKey(name: 'Content')
  String get content;
  @override
  @JsonKey(name: 'Messages')
  List<ContactBookMessage> get messages;

  /// Create a copy of ContactBook
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactBookImplCopyWith<_$ContactBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContactBookMessage _$ContactBookMessageFromJson(Map<String, dynamic> json) {
  return _ContactBookMessage.fromJson(json);
}

/// @nodoc
mixin _$ContactBookMessage {
  @JsonKey(name: 'message_id')
  int get messageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_text')
  String get messageText => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_type')
  String get messageType => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_file')
  List<String> get uploadFiles => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get messageSender => throw _privateConstructorUsedError;

  /// Serializes this ContactBookMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContactBookMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactBookMessageCopyWith<ContactBookMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactBookMessageCopyWith<$Res> {
  factory $ContactBookMessageCopyWith(
          ContactBookMessage value, $Res Function(ContactBookMessage) then) =
      _$ContactBookMessageCopyWithImpl<$Res, ContactBookMessage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message_id') int messageId,
      @JsonKey(name: 'message_text') String messageText,
      @JsonKey(name: 'message_type') String messageType,
      @JsonKey(name: 'upload_file') List<String> uploadFiles,
      @JsonKey(name: 'name') String messageSender});
}

/// @nodoc
class _$ContactBookMessageCopyWithImpl<$Res, $Val extends ContactBookMessage>
    implements $ContactBookMessageCopyWith<$Res> {
  _$ContactBookMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactBookMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? messageText = null,
    Object? messageType = null,
    Object? uploadFiles = null,
    Object? messageSender = null,
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
      uploadFiles: null == uploadFiles
          ? _value.uploadFiles
          : uploadFiles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      messageSender: null == messageSender
          ? _value.messageSender
          : messageSender // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactBookMessageImplCopyWith<$Res>
    implements $ContactBookMessageCopyWith<$Res> {
  factory _$$ContactBookMessageImplCopyWith(_$ContactBookMessageImpl value,
          $Res Function(_$ContactBookMessageImpl) then) =
      __$$ContactBookMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message_id') int messageId,
      @JsonKey(name: 'message_text') String messageText,
      @JsonKey(name: 'message_type') String messageType,
      @JsonKey(name: 'upload_file') List<String> uploadFiles,
      @JsonKey(name: 'name') String messageSender});
}

/// @nodoc
class __$$ContactBookMessageImplCopyWithImpl<$Res>
    extends _$ContactBookMessageCopyWithImpl<$Res, _$ContactBookMessageImpl>
    implements _$$ContactBookMessageImplCopyWith<$Res> {
  __$$ContactBookMessageImplCopyWithImpl(_$ContactBookMessageImpl _value,
      $Res Function(_$ContactBookMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactBookMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? messageText = null,
    Object? messageType = null,
    Object? uploadFiles = null,
    Object? messageSender = null,
  }) {
    return _then(_$ContactBookMessageImpl(
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
      uploadFiles: null == uploadFiles
          ? _value._uploadFiles
          : uploadFiles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      messageSender: null == messageSender
          ? _value.messageSender
          : messageSender // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactBookMessageImpl implements _ContactBookMessage {
  const _$ContactBookMessageImpl(
      {@JsonKey(name: 'message_id') required this.messageId,
      @JsonKey(name: 'message_text') required this.messageText,
      @JsonKey(name: 'message_type') required this.messageType,
      @JsonKey(name: 'upload_file') required final List<String> uploadFiles,
      @JsonKey(name: 'name') required this.messageSender})
      : _uploadFiles = uploadFiles;

  factory _$ContactBookMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactBookMessageImplFromJson(json);

  @override
  @JsonKey(name: 'message_id')
  final int messageId;
  @override
  @JsonKey(name: 'message_text')
  final String messageText;
  @override
  @JsonKey(name: 'message_type')
  final String messageType;
  final List<String> _uploadFiles;
  @override
  @JsonKey(name: 'upload_file')
  List<String> get uploadFiles {
    if (_uploadFiles is EqualUnmodifiableListView) return _uploadFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uploadFiles);
  }

  @override
  @JsonKey(name: 'name')
  final String messageSender;

  @override
  String toString() {
    return 'ContactBookMessage(messageId: $messageId, messageText: $messageText, messageType: $messageType, uploadFiles: $uploadFiles, messageSender: $messageSender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactBookMessageImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.messageText, messageText) ||
                other.messageText == messageText) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            const DeepCollectionEquality()
                .equals(other._uploadFiles, _uploadFiles) &&
            (identical(other.messageSender, messageSender) ||
                other.messageSender == messageSender));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      messageId,
      messageText,
      messageType,
      const DeepCollectionEquality().hash(_uploadFiles),
      messageSender);

  /// Create a copy of ContactBookMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactBookMessageImplCopyWith<_$ContactBookMessageImpl> get copyWith =>
      __$$ContactBookMessageImplCopyWithImpl<_$ContactBookMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactBookMessageImplToJson(
      this,
    );
  }
}

abstract class _ContactBookMessage implements ContactBookMessage {
  const factory _ContactBookMessage(
          {@JsonKey(name: 'message_id') required final int messageId,
          @JsonKey(name: 'message_text') required final String messageText,
          @JsonKey(name: 'message_type') required final String messageType,
          @JsonKey(name: 'upload_file') required final List<String> uploadFiles,
          @JsonKey(name: 'name') required final String messageSender}) =
      _$ContactBookMessageImpl;

  factory _ContactBookMessage.fromJson(Map<String, dynamic> json) =
      _$ContactBookMessageImpl.fromJson;

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
  List<String> get uploadFiles;
  @override
  @JsonKey(name: 'name')
  String get messageSender;

  /// Create a copy of ContactBookMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactBookMessageImplCopyWith<_$ContactBookMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
