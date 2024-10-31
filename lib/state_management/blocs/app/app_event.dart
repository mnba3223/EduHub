// app_event.dart
import 'package:edutec_hub/config/firebase/firebase_massage_service.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AppEvent extends Equatable {
  const AppEvent();

  @override
  List<Object> get props => [];
}

class AppInitialized extends AppEvent {}

class NotificationReceived extends AppEvent {
  final RemoteMessage message;

  const NotificationReceived(this.message);

  @override
  List<Object> get props => [message];
}

class NotificationTapped extends AppEvent {
  final RemoteMessage message;

  const NotificationTapped(this.message);

  @override
  List<Object> get props => [message];
}

// app_state.dart
class AppState extends Equatable {
  final bool isInitialized;
  final RemoteMessage? lastReceivedNotification;
  final RemoteMessage? lastTappedNotification;

  const AppState({
    this.isInitialized = false,
    this.lastReceivedNotification,
    this.lastTappedNotification,
  });

  AppState copyWith({
    bool? isInitialized,
    RemoteMessage? lastReceivedNotification,
    RemoteMessage? lastTappedNotification,
  }) {
    return AppState(
      isInitialized: isInitialized ?? this.isInitialized,
      lastReceivedNotification:
          lastReceivedNotification ?? this.lastReceivedNotification,
      lastTappedNotification:
          lastTappedNotification ?? this.lastTappedNotification,
    );
  }

  @override
  List<Object?> get props => [
        isInitialized,
        lastReceivedNotification,
        lastTappedNotification,
      ];
}
