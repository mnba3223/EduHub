import 'package:bloc/bloc.dart';
import 'package:edutec_hub/data/models/message_board/message.dart';
import 'package:equatable/equatable.dart';

part 'message_board_state.dart';

class MessageBoardCubit extends Cubit<MessageBoardState> {
  MessageBoardCubit() : super(const MessageBoardInitial());

  Future<void> loadMessages() async {
    emit(const MessageBoardLoading());
    try {
      // 模擬API調用延遲
      await Future.delayed(const Duration(seconds: 1));
      emit(MessageBoardLoaded(messages: mockMessages));
    } catch (e) {
      emit(MessageBoardError(error: e.toString()));
    }
  }

  Future<void> addMessage({
    required String title,
    required String content,
    required String senderName,
    required int senderId,
    required MessageType type,
  }) async {
    if (state is MessageBoardLoaded) {
      final currentState = state as MessageBoardLoaded;
      final newMessage = Message(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        title: title,
        content: content,
        senderName: senderName,
        senderId: senderId.toString(),
        type: type,
        status: MessageStatus.open,
        createdAt: DateTime.now(),
      );

      final updatedMessages = [newMessage, ...currentState.messages];
      emit(MessageBoardLoaded(messages: updatedMessages));
    }
  }

  Future<void> addReply({
    required String messageId,
    required String content,
    required String senderName,
    required int senderId,
    required MessageType senderType,
  }) async {
    if (state is MessageBoardLoaded) {
      final currentState = state as MessageBoardLoaded;
      final updatedMessages = currentState.messages.map((message) {
        if (message.id == messageId) {
          final newReply = MessageReply(
            id: DateTime.now().millisecondsSinceEpoch.toString(),
            content: content,
            senderName: senderName,
            senderId: senderId.toString(),
            senderType: senderType,
            createdAt: DateTime.now(),
          );
          return message.copyWith(
            replies: [...message.replies, newReply],
          );
        }
        return message;
      }).toList();

      emit(MessageBoardLoaded(messages: updatedMessages));
    }
  }
}
