// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactBookImpl _$$ContactBookImplFromJson(Map<String, dynamic> json) =>
    _$ContactBookImpl(
      contactBookId: (json['ContactBookId'] as num).toInt(),
      studentId: (json['StudentId'] as num).toInt(),
      studentName: json['StudentName'] as String,
      teacherId: (json['TeacherId'] as num).toInt(),
      teacherName: json['TeacherName'] as String,
      lessonId: (json['LessonId'] as num).toInt(),
      classId: (json['ClassId'] as num).toInt(),
      lessonDate: DateTime.parse(json['LessonDate'] as String),
      title: json['Title'] as String,
      content: json['Content'] as String,
      messages: (json['Messages'] as List<dynamic>)
          .map((e) => ContactBookMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ContactBookImplToJson(_$ContactBookImpl instance) =>
    <String, dynamic>{
      'ContactBookId': instance.contactBookId,
      'StudentId': instance.studentId,
      'StudentName': instance.studentName,
      'TeacherId': instance.teacherId,
      'TeacherName': instance.teacherName,
      'LessonId': instance.lessonId,
      'ClassId': instance.classId,
      'LessonDate': instance.lessonDate.toIso8601String(),
      'Title': instance.title,
      'Content': instance.content,
      'Messages': instance.messages,
    };

_$ContactBookMessageImpl _$$ContactBookMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$ContactBookMessageImpl(
      messageId: (json['message_id'] as num).toInt(),
      messageText: json['message_text'] as String,
      messageType: json['message_type'] as String,
      uploadFiles: (json['upload_file'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ContactBookMessageImplToJson(
        _$ContactBookMessageImpl instance) =>
    <String, dynamic>{
      'message_id': instance.messageId,
      'message_text': instance.messageText,
      'message_type': instance.messageType,
      'upload_file': instance.uploadFiles,
    };
