part of 'contact_book_bloc.dart';

sealed class ContactBookEvent extends Equatable {
  const ContactBookEvent();

  @override
  List<Object> get props => [];
}

class LoadContactBooks extends ContactBookEvent {
  final DateTime date;

  const LoadContactBooks({
    required this.date,
  });

  @override
  List<Object> get props => [date];
}

class UpdateSelectedDate extends ContactBookEvent {
  final DateTime date;

  const UpdateSelectedDate({
    required this.date,
  });

  @override
  List<Object> get props => [date];
}

class LoadDailyContactBook extends ContactBookEvent {
  final int contactBookId;

  const LoadDailyContactBook({
    required this.contactBookId,
  });

  @override
  List<Object> get props => [contactBookId];
}

class SignContactBook extends ContactBookEvent {
  final DateTime date;
  final String? comment;

  const SignContactBook({
    required this.date,
    this.comment,
  });

  @override
  List<Object> get props => [date, comment ?? ''];
}

class ReplyContactBook extends ContactBookEvent {
  final DateTime date;
  final String message;

  ReplyContactBook({
    required this.date,
    required this.message,
  });

  @override
  List<Object> get props => [date, message];
}

class AddContactBookMessage extends ContactBookEvent {
  final int contactBookId;
  final String messageText;
  final List<File>? uploadFiles;

  const AddContactBookMessage({
    required this.contactBookId,
    required this.messageText,
    this.uploadFiles,
  });
}
