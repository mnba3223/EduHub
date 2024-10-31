import 'package:edutec_hub/config/firebase/firebase_massage_service.dart';
import 'package:edutec_hub/state_management/blocs/app/app_event.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final FirebaseMessagingService _messagingService = FirebaseMessagingService();

  AppBloc() : super(const AppState()) {
    on<AppInitialized>(_onAppInitialized);
    on<NotificationReceived>(_onNotificationReceived);
    on<NotificationTapped>(_onNotificationTapped);
  }

  Future<void> _onAppInitialized(
    AppInitialized event,
    Emitter<AppState> emit,
  ) async {
    try {
      // 初始化 Firebase Messaging Service
      await _messagingService.initialize();

      // 獲取 FCM Token
      String? token = await _messagingService.getToken();
      if (token != null) {
        // TODO: 將 token 發送到後端
        print('FCM Token: $token');
      }

      // 處理前台消息
      FirebaseMessaging.onMessage.listen((message) {
        add(NotificationReceived(message));
      });

      // 處理通知點擊
      FirebaseMessaging.onMessageOpenedApp.listen((message) {
        add(NotificationTapped(message));
      });

      emit(state.copyWith(isInitialized: true));
    } catch (e) {
      print('Firebase 初始化錯誤: $e');
      // 您可以選擇是否要在這裡更新狀態來表示初始化失敗
    }
  }

  void _onNotificationReceived(
    NotificationReceived event,
    Emitter<AppState> emit,
  ) {
    emit(state.copyWith(
      lastReceivedNotification: event.message,
    ));

    // 可以在這裡處理收到通知時的其他邏輯
    _handleNotification(event.message);
  }

  void _onNotificationTapped(
    NotificationTapped event,
    Emitter<AppState> emit,
  ) {
    emit(state.copyWith(
      lastTappedNotification: event.message,
    ));

    // 處理通知點擊後的導航邏輯
    _handleNotificationTap(event.message);
  }

  void _handleNotification(RemoteMessage message) {
    // 處理通知的具體邏輯
    final notification = message.notification;
    final data = message.data;

    print('收到通知：');
    print('標題: ${notification?.title}');
    print('內容: ${notification?.body}');
    print('數據: $data');
  }

  void _handleNotificationTap(RemoteMessage message) {
    // 處理通知點擊後的導航邏輯
    final data = message.data;

    // 例如，根據通知類型進行不同的導航
    switch (data['type']) {
      case 'chat':
        // 導航到聊天頁面
        // router.go('/chat/${data['chatId']}');
        break;
      case 'order':
        // 導航到訂單頁面
        // router.go('/order/${data['orderId']}');
        break;
      default:
        // 默認導航
        break;
    }
  }

  // 提供一個方法來訂閱特定主題
  Future<void> subscribeToTopic(String topic) async {
    await _messagingService.subscribeToTopic(topic);
  }

  // 提供一個方法來取消訂閱特定主題
  Future<void> unsubscribeFromTopic(String topic) async {
    await _messagingService.unsubscribeFromTopic(topic);
  }
}
