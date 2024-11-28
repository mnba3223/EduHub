// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_contact_book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherContactBookImpl _$$TeacherContactBookImplFromJson(
        Map<String, dynamic> json) =>
    _$TeacherContactBookImpl(
      contactBookId: (json['ContactBookId'] as num).toInt(),
      studentId: (json['StudentId'] as num).toInt(),
      studentName: json['StudentName'] as String,
      teacherId: (json['TeacherId'] as num).toInt(),
      teacherName: json['TeacherName'] as String,
      lessonId: (json['LessonId'] as num).toInt(),
      lessonTitle: json['LessonTitle'] as String,
      lessonDate: DateTime.parse(json['LessonDate'] as String),
      title: json['Title'] as String,
      status: json['Status'] as String,
      messages: (json['Messages'] as List<dynamic>)
          .map((e) =>
              TeacherContactBookMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TeacherContactBookImplToJson(
        _$TeacherContactBookImpl instance) =>
    <String, dynamic>{
      'ContactBookId': instance.contactBookId,
      'StudentId': instance.studentId,
      'StudentName': instance.studentName,
      'TeacherId': instance.teacherId,
      'TeacherName': instance.teacherName,
      'LessonId': instance.lessonId,
      'LessonTitle': instance.lessonTitle,
      'LessonDate': instance.lessonDate.toIso8601String(),
      'Title': instance.title,
      'Status': instance.status,
      'Messages': instance.messages,
    };

_$TeacherContactBookMessageImpl _$$TeacherContactBookMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$TeacherContactBookMessageImpl(
      messageId: (json['message_id'] as num).toInt(),
      messageText: json['message_text'] as String,
      messageType: json['message_type'] as String,
      uploadFile: json['upload_file'] as String?,
    );

Map<String, dynamic> _$$TeacherContactBookMessageImplToJson(
        _$TeacherContactBookMessageImpl instance) =>
    <String, dynamic>{
      'message_id': instance.messageId,
      'message_text': instance.messageText,
      'message_type': instance.messageType,
      'upload_file': instance.uploadFile,
    };
