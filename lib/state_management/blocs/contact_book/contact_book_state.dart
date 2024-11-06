// contact_book_state.dart
part of 'contact_book_bloc.dart';

sealed class ContactBookState extends Equatable {
  const ContactBookState();

  @override
  List<Object> get props => [];
}

class ContactBookInitial extends ContactBookState {}

class ContactBookLoading extends ContactBookState {}

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
  final ContactBookDetail detail;
  final DateTime selectedDate;

  const ContactBookDetailLoaded({
    required this.detail,
    required this.selectedDate,
  });

  @override
  List<Object> get props => [detail, selectedDate];
}

class ContactBookError extends ContactBookState {
  final String message;

  const ContactBookError(this.message);

  @override
  List<Object> get props => [message];
}
