// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      senderName: json['senderName'] as String,
      senderId: json['senderId'] as String,
      type: $enumDecode(_$MessageTypeEnumMap, json['type']),
      status: $enumDecode(_$MessageStatusEnumMap, json['status']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      replies: (json['replies'] as List<dynamic>?)
              ?.map((e) => MessageReply.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'senderName': instance.senderName,
      'senderId': instance.senderId,
      'type': _$MessageTypeEnumMap[instance.type]!,
      'status': _$MessageStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'replies': instance.replies,
    };

const _$MessageTypeEnumMap = {
  MessageType.teacher: 'teacher',
  MessageType.parent: 'parent',
};

const _$MessageStatusEnumMap = {
  MessageStatus.open: 'open',
  MessageStatus.closed: 'closed',
};

_$MessageReplyImpl _$$MessageReplyImplFromJson(Map<String, dynamic> json) =>
    _$MessageReplyImpl(
      id: json['id'] as String,
      content: json['content'] as String,
      senderName: json['senderName'] as String,
      senderId: json['senderId'] as String,
      senderType: $enumDecode(_$MessageTypeEnumMap, json['senderType']),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$MessageReplyImplToJson(_$MessageReplyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'senderName': instance.senderName,
      'senderId': instance.senderId,
      'senderType': _$MessageTypeEnumMap[instance.senderType]!,
      'createdAt': instance.createdAt.toIso8601String(),
    };
