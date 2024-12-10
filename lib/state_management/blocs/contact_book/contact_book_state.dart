// contact_book_state.dart
part of 'contact_book_bloc.dart';

// sealed class ContactBookState extends Equatable {
//   const ContactBookState();

//   @override
//   List<Object> get props => [];
// }

// class ContactBookInitial extends ContactBookState {}

// class ContactBookLoading extends ContactBookState {}

// class ContactBookListLoaded extends ContactBookState {
//   final List<ContactBook> contactBooks;
//   final DateTime selectedDate;

//   const ContactBookListLoaded({
//     required this.contactBooks,
//     required this.selectedDate,
//   });

//   @override
//   List<Object> get props => [contactBooks, selectedDate];
// }

// class ContactBookDetailLoaded extends ContactBookState {
//   final ContactBookDetail detail;
//   final DateTime selectedDate;

//   const ContactBookDetailLoaded({
//     required this.detail,
//     required this.selectedDate,
//   });

//   @override
//   List<Object> get props => [detail, selectedDate];
// }

// class ContactBookError extends ContactBookState {
//   final String message;

//   const ContactBookError(this.message);

//   @override
//   List<Object> get props => [message];
// }

sealed class ContactBookState extends Equatable {
  const ContactBookState();

  @override
  List<Object> get props => [];
}

class ContactBookInitial extends ContactBookState {}

class ContactBookLoading extends ContactBookState {}

class SendingMessage extends ContactBookState {}

class MessageSent extends ContactBookState {}

class ContactBookListLoaded extends ContactBookState {
  final List<ContactBook> contactBooks;
  final DateTime selectedDate;

  const ContactBookListLoaded({
    required this.contactBooks,
    required this.selectedDate,
  });

  @override
  List<Object> get props => [contactBooks, selectedDate];
}

class ContactBookDetailLoaded extends ContactBookState {
  final ContactBook detail; // 更改為使用新的 ContactBook 模型
  final DateTime selectedDate;
  final bool isSignatureRequired; // 添加簽名狀態標記

  const ContactBookDetailLoaded({
    required this.detail,
    required this.selectedDate,
    this.isSignatureRequired = false,
  });

  @override
  List<Object> get props => [detail, selectedDate, isSignatureRequired];
}

class ContactBookError extends ContactBookState {
  final String message;

  const ContactBookError(this.message);

  @override
  List<Object> get props => [message];
}

// Extension 用於幫助UI顯示
extension ContactBookDetailExtensions on ContactBookDetailLoaded {
  bool get hasMessages => detail.messages.isNotEmpty;
  List<ContactBookMessage> get sortedMessages => List.from(detail.messages)
    ..sort((a, b) => b.messageId.compareTo(a.messageId));
  bool get hasAttachments =>
      detail.messages.any((message) => message.uploadFiles.isNotEmpty);
}
