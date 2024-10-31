part of 'message_board_cubit.dart';

sealed class MessageBoardState extends Equatable {
  const MessageBoardState();

  @override
  List<Object> get props => [];
}

final class MessageBoardInitial extends MessageBoardState {
  const MessageBoardInitial();
}

final class MessageBoardLoading extends MessageBoardState {
  const MessageBoardLoading();
}

final class MessageBoardLoaded extends MessageBoardState {
  final List<Message> messages;

  const MessageBoardLoaded({required this.messages});

  @override
  List<Object> get props => [messages];
}

final class MessageBoardError extends MessageBoardState {
  final String error;

  const MessageBoardError({required this.error});

  @override
  List<Object> get props => [error];
}
