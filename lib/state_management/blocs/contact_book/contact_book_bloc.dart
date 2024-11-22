import 'package:bloc/bloc.dart';
import 'package:edutec_hub/data/models/contact_book/contact_book.dart';
import 'package:edutec_hub/data/models/contact_book/contact_book_detail.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';
import 'package:edutec_hub/data/repositories/contact_book_repository.dart';
import 'package:equatable/equatable.dart';

part 'contact_book_event.dart';
part 'contact_book_state.dart';

class ContactBookBloc extends Bloc<ContactBookEvent, ContactBookState> {
  final ContactBookRepository repository;

  ContactBookBloc({required this.repository}) : super(ContactBookInitial()) {
    on<LoadContactBooks>(_onLoadContactBooks);
    on<LoadDailyContactBook>(_onLoadDailyContactBook);
    on<UpdateSelectedDate>(_onUpdateSelectedDate);
    on<SignContactBook>(_onSignContactBook);
    on<ReplyContactBook>(_onReplyContactBook);
  }

  Future<void> _onLoadContactBooks(
    LoadContactBooks event,
    Emitter<ContactBookState> emit,
  ) async {
    emit(ContactBookLoading());
    try {
      final contactBooks = await repository.getContactBooks(date: event.date);
      emit(ContactBookListLoaded(
        contactBooks: contactBooks,
        selectedDate: event.date,
      ));
    } on ApiException catch (e) {
      emit(ContactBookError(e.message));
    } catch (e) {
      emit(ContactBookError(e.toString()));
    }
  }

  Future<void> _onLoadDailyContactBook(
    LoadDailyContactBook event,
    Emitter<ContactBookState> emit,
  ) async {
    emit(ContactBookLoading());
    try {
      final detail = await repository.getDailyContactBook(date: event.date);
      emit(ContactBookDetailLoaded(
        detail: detail,
        selectedDate: event.date,
      ));
    } on ApiException catch (e) {
      emit(ContactBookError(e.message));
    } catch (e) {
      emit(ContactBookError(e.toString()));
    }
  }

  Future<void> _onUpdateSelectedDate(
    UpdateSelectedDate event,
    Emitter<ContactBookState> emit,
  ) async {
    if (state is ContactBookListLoaded) {
      add(LoadContactBooks(date: event.date));
    } else if (state is ContactBookDetailLoaded) {
      add(LoadDailyContactBook(date: event.date));
    }
  }

  Future<void> _onSignContactBook(
    SignContactBook event,
    Emitter<ContactBookState> emit,
  ) async {
    try {
      await repository.signContactBook(
        date: event.date,
        comment: event.comment,
      );

      // 重新載入日聯絡簿資料
      add(LoadDailyContactBook(date: event.date));
    } on ApiException catch (e) {
      emit(ContactBookError(e.message));
    } catch (e) {
      emit(ContactBookError(e.toString()));
    }
  }

  Future<void> _onReplyContactBook(
    ReplyContactBook event,
    Emitter<ContactBookState> emit,
  ) async {
    try {
      await repository.replyContactBook(
        date: event.date,
        message: event.message,
      );

      // 重新載入聯絡簿詳細資料
      add(LoadDailyContactBook(date: event.date));
    } on ApiException catch (e) {
      emit(ContactBookError(e.message));
    } catch (e) {
      emit(ContactBookError(e.toString()));
    }
  }
}