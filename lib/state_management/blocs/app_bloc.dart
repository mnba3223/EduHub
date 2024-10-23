import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

// Events
abstract class AppEvent extends Equatable {
  const AppEvent();

  @override
  List<Object> get props => [];
}

class AppInitialized extends AppEvent {}

// States
class AppState extends Equatable {
  final bool isInitialized;

  const AppState({this.isInitialized = false});

  AppState copyWith({bool? isInitialized}) {
    return AppState(
      isInitialized: isInitialized ?? this.isInitialized,
    );
  }

  @override
  List<Object> get props => [isInitialized];
}

// BLoC
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState()) {
    on<AppInitialized>(_onAppInitialized);
  }

  void _onAppInitialized(AppInitialized event, Emitter<AppState> emit) {
    // Perform any initialization logic here
    emit(state.copyWith(isInitialized: true));
  }
}
