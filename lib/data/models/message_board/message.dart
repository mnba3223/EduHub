import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  const factory Message({
    required String id,
    required String title,
    required String content,
    required String senderName,
    required String senderId,
    required MessageType type,
    required MessageStatus status,
    required DateTime createdAt,
    @Default([]) List<MessageReply> replies,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

@freezed
class MessageReply with _$MessageReply {
  const factory MessageReply({
    required String id,
    required String content,
    required String senderName,
    required String senderId,
    required MessageType senderType,
    required DateTime createdAt,
  }) = _MessageReply;

  factory MessageReply.fromJson(Map<String, dynamic> json) =>
      _$MessageReplyFromJson(json);
}

enum MessageType {
  @JsonValue('teacher')
  teacher,
  @JsonValue('parent')
  parent,
}

enum MessageStatus {
  @JsonValue('open')
  open,
  @JsonValue('closed')
  closed,
}

// 模擬數據
final List<Message> mockMessages = [
  Message(
    id: '1',
    title: '關於下週段考注意事項',
    content: '請提醒學生準備下週二的數學段考，範圍包含第三、四章。',
    senderName: '王老師',
    senderId: 'teacher1',
    type: MessageType.teacher,
    status: MessageStatus.open,
    createdAt: DateTime.now().subtract(const Duration(days: 2)),
    replies: [
      MessageReply(
        id: '1',
        content: '收到，會讓孩子好好準備。',
        senderName: '陳媽媽',
        senderId: 'parent1',
        senderType: MessageType.parent,
        createdAt: DateTime.now().subtract(const Duration(days: 1)),
      ),
    ],
  ),
  Message(
    id: '2',
    title: '請假通知',
    content: '小明因為感冒，明天請假一天。',
    senderName: '陳媽媽',
    senderId: 'parent1',
    type: MessageType.parent,
    status: MessageStatus.closed,
    createdAt: DateTime.now().subtract(const Duration(days: 5)),
    replies: [
      MessageReply(
        id: '2',
        content: '好的，請小明多休息。',
        senderName: '李老師',
        senderId: 'teacher2',
        senderType: MessageType.teacher,
        createdAt: DateTime.now().subtract(const Duration(days: 5)),
      ),
    ],
  ),
];
