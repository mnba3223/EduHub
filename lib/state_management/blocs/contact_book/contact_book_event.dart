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
  final DateTime date;

  const LoadDailyContactBook({
    required this.date,
  });

  @override
  List<Object> get props => [date];
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
