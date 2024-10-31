import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class FirebaseMessagingService {
  static final FirebaseMessagingService _instance =
      FirebaseMessagingService._internal();
  factory FirebaseMessagingService() => _instance;
  FirebaseMessagingService._internal();

  final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _localNotifications =
      FlutterLocalNotificationsPlugin();

  // 存儲當前的 FCM Token
  String? currentToken;

  // 初始化設置
  Future<void> initialize() async {
    await _initializeLocalNotifications();
    await _requestPermissions();
    await _setupFirebaseMessaging();
  }

  // 初始化本地通知
  Future<void> _initializeLocalNotifications() async {
    const androidSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const iosSettings = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    await _localNotifications.initialize(
      const InitializationSettings(
        android: androidSettings,
        iOS: iosSettings,
      ),
      onDidReceiveNotificationResponse: _handleNotificationTap,
    );

    // 創建通知頻道
    await _createNotificationChannel();
  }

  Future<void> _createNotificationChannel() async {
    const androidChannel = AndroidNotificationChannel(
      'high_importance_channel',
      'High Importance Notifications',
      importance: Importance.high,
      enableVibration: true,
    );

    await _localNotifications
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(androidChannel);
  }

  // 請求通知權限
  Future<void> _requestPermissions() async {
    NotificationSettings settings = await _messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
      provisional: false,
    );
    print('User granted permission: ${settings.authorizationStatus}');
  }

  // 設置 Firebase Messaging
  Future<void> _setupFirebaseMessaging() async {
    // 獲取 FCM Token
    currentToken = await _messaging.getToken();
    print('FCM Token: $currentToken');

    // 監聽 token 刷新
    _messaging.onTokenRefresh.listen((newToken) {
      currentToken = newToken;
      print('FCM Token 已更新: $newToken');
      // TODO: 將新 token 發送到後端
    });

    // 前台消息處理
    FirebaseMessaging.onMessage.listen(_handleForegroundMessage);

    // 背景消息點擊處理
    FirebaseMessaging.onMessageOpenedApp.listen(_handleBackgroundMessage);
  }

  // 處理前台消息
  Future<void> _handleForegroundMessage(RemoteMessage message) async {
    print('收到前台消息: ${message.notification?.body}');
    await _showLocalNotification(message);
  }

  // 處理背景消息
  void _handleBackgroundMessage(RemoteMessage message) {
    print('App 從背景打開，通知內容: ${message.notification?.body}');
    // TODO: 實現導航邏輯
  }

  // 處理通知點擊
  void _handleNotificationTap(NotificationResponse details) {
    print('通知被點擊：${details.payload}');
    // TODO: 實現導航邏輯
  }

  // 顯示本地通知
  Future<void> _showLocalNotification(RemoteMessage message) async {
    final androidDetails = AndroidNotificationDetails(
      'high_importance_channel',
      'High Importance Notifications',
      importance: Importance.high,
      priority: Priority.high,
    );

    final iosDetails = const DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    await _localNotifications.show(
      message.hashCode,
      message.notification?.title,
      message.notification?.body,
      NotificationDetails(android: androidDetails, iOS: iosDetails),
      payload: message.data.toString(),
    );
  }

  // 獲取當前的 FCM Token
  Future<String?> getToken() async {
    return currentToken;
  }

  // 訂閱主題
  Future<void> subscribeToTopic(String topic) async {
    await _messaging.subscribeToTopic(topic);
  }

  // 取消訂閱主題
  Future<void> unsubscribeFromTopic(String topic) async {
    await _messaging.unsubscribeFromTopic(topic);
  }
}
