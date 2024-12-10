import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:edutec_hub/data/models/contact_book/contact_book.dart';
import 'package:edutec_hub/data/models/contact_book/contact_book_detail.dart';
import 'package:edutec_hub/data/network/core/exceptions.dart';
import 'package:edutec_hub/data/repositories/contact_book_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:table_calendar/table_calendar.dart';

part 'contact_book_event.dart';
part 'contact_book_state.dart';

class ContactBookBloc extends Bloc<ContactBookEvent, ContactBookState> {
  final ContactBookRepository repository;

  ContactBookBloc({required this.repository}) : super(ContactBookInitial()) {
    on<LoadContactBooks>(_onLoadContactBooks);
    on<LoadDailyContactBook>(_onLoadDailyContactBook);
    on<UpdateSelectedDate>(_onUpdateSelectedDate);
    on<ReplyContactBook>(_onReplyContactBook);
    on<AddContactBookMessage>(_onAddContactBookMessage);
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
    if (state is ContactBookListLoaded) {
      final currentState = state as ContactBookListLoaded;
      final contactBook = currentState.contactBooks.firstWhere(
        (book) => book.contactBookId == event.contactBookId,
      );
      emit(ContactBookDetailLoaded(
        detail: contactBook,
        selectedDate: contactBook.lessonDate,
      ));
    }
  }

  void _onUpdateSelectedDate(
    UpdateSelectedDate event,
    Emitter<ContactBookState> emit,
  ) {
    if (state is ContactBookListLoaded) {
      final currentState = state as ContactBookListLoaded;
      // 移除检查，允许选择任何日期
      emit(ContactBookListLoaded(
        contactBooks: currentState.contactBooks,
        selectedDate: event.date,
      ));
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
      // 重新获取最新数据
      add(LoadContactBooks(date: event.date));
    } on ApiException catch (e) {
      emit(ContactBookError(e.message));
    } catch (e) {
      emit(ContactBookError(e.toString()));
    }
  }

  Future<void> _onAddContactBookMessage(
    AddContactBookMessage event,
    Emitter<ContactBookState> emit,
  ) async {
    try {
      // 保存当前状态
      final previousState = state;
      emit(SendingMessage());

      await repository.addMessage(
        contactBookId: event.contactBookId,
        messageText: event.messageText,
        uploadFiles: event.uploadFiles,
      );

      // 直接发送消息成功状态
      emit(MessageSent());

      // 重新加载联络簿列表
      final contactBooks =
          await repository.getContactBooks(date: DateTime.now());
      emit(ContactBookListLoaded(
        contactBooks: contactBooks,
        selectedDate: DateTime.now(),
      ));
    } on ApiException catch (e) {
      emit(ContactBookError(e.message));
      // 错误后恢复到之前的状态
      // 保存当前状态

      try {
        final contactBooks =
            await repository.getContactBooks(date: DateTime.now());
        emit(ContactBookListLoaded(
          contactBooks: contactBooks,
          selectedDate: DateTime.now(),
        ));
      } catch (_) {
        emit(ContactBookError(e.toString()));
        // 错误后恢复到之前的状态
        // 保存当前状态
        final previousState = state;
        if (state is ContactBookError &&
            previousState is ContactBookListLoaded) {
          emit(previousState);
        }
      }
    }
  }
}
