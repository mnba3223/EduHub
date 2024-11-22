// download_cubit.dart
import 'dart:developer';
import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:edutec_hub/state_management/cubit/download/download_state.dart';
import 'package:external_path/external_path.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DownloadCubit extends Cubit<DownloadState> {
  final Dio _dio;
  final CancelToken _cancelToken = CancelToken();
  final FlutterLocalNotificationsPlugin _notifications =
      FlutterLocalNotificationsPlugin();

  DownloadCubit({Dio? dio})
      : _dio = dio ?? Dio(),
        super(const DownloadState()) {
    _initNotifications();
  }
  // 初始化通知設置
  Future<void> _initNotifications() async {
    const androidChannel = AndroidNotificationChannel(
      'download_channel',
      '下載通知',
      description: '顯示檔案下載進度',
      importance: Importance.low,
      enableVibration: false,
      playSound: false,
      showBadge: false,
    );

    // 創建通知頻道
    await FlutterLocalNotificationsPlugin()
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(androidChannel);

    // 初始化通知設置
    await _notifications.initialize(
      const InitializationSettings(
        android: AndroidInitializationSettings('@mipmap/ic_launcher'),
        iOS: DarwinInitializationSettings(),
      ),
      onDidReceiveNotificationResponse: (NotificationResponse details) async {
        if (details.payload != null) {
          await OpenFilex.open(details.payload!);
        }
      },
    );
  }

  Future<void> _showDownloadNotification({
    required int id,
    required String title,
    required int progress,
    bool isComplete = false,
    String? filePath,
  }) async {
    try {
      // 創建通知動作
      final List<AndroidNotificationAction>? actions =
          isComplete && filePath != null
              ? [
                  const AndroidNotificationAction(
                    'open',
                    '打開檔案',
                    showsUserInterface: true,
                    cancelNotification: true,
                  ),
                ]
              : null;

      final androidDetails = AndroidNotificationDetails(
        'download_channel',
        '下載通知',
        channelDescription: '顯示檔案下載進度',
        importance: Importance.low,
        priority: Priority.low,
        showProgress: !isComplete,
        maxProgress: 100,
        progress: progress,
        onlyAlertOnce: true,
        enableVibration: false,
        playSound: false,
        actions: actions,
      );

      // 如果下載完成，添加 payload
      final String? payload = isComplete ? filePath : null;

      await _notifications.show(
        id,
        title,
        isComplete ? '下載完成，點擊打開' : '下載中... $progress%',
        NotificationDetails(android: androidDetails),
        payload: payload,
      );
    } catch (e) {
      log('Show notification error: $e');
    }
  }

  // 請求並檢查權限
  Future<bool> _requestPermissions() async {
    if (Platform.isAndroid) {
      // 檢查 Android 版本
      if (await DeviceInfoPlugin()
              .androidInfo
              .then((info) => info.version.sdkInt) >=
          30) {
        // Android 11 (API 30) 及以上需要管理所有文件權限
        if (!await Permission.manageExternalStorage.isGranted) {
          final status = await Permission.manageExternalStorage.request();
          return status.isGranted;
        }
        return true;
      } else {
        // Android 10 及以下使用普通存儲權限
        final status = await Permission.storage.request();
        return status.isGranted;
      }
    }
    return true; // iOS 不需要權限
  }

  Future<String?> _getDownloadPath() async {
    try {
      // 確保有權限
      final hasPermission = await _requestPermissions();
      if (!hasPermission) {
        throw Exception('需要存儲權限才能下載文件');
      }

      if (Platform.isAndroid) {
        // 嘗試使用應用程序專用目錄
        final appDir = await getExternalStorageDirectory();
        if (appDir != null) {
          final downloadDir = Directory('${appDir.path}/Downloads');
          if (!await downloadDir.exists()) {
            await downloadDir.create(recursive: true);
          }
          log('Created download directory: ${downloadDir.path}');
          return downloadDir.path;
        }
        throw Exception('無法獲取存儲目錄');
      } else {
        // iOS 使用應用文檔目錄
        final directory = await getApplicationDocumentsDirectory();
        return directory.path;
      }
    } catch (e) {
      log('Error getting download path: $e');
      return null;
    }
  }

  Future<void> downloadFile({
    required String url,
    required String fileName,
    String? customPath,
  }) async {
    try {
      emit(state.copyWith(
        isDownloading: true,
        error: null,
        successMessage: null,
      ));

      final basePath = customPath ?? await _getDownloadPath();
      final filePath = '$basePath/$fileName';

      // 确保下载目录存在
      final directory = Directory(basePath!);
      if (!await directory.exists()) {
        await directory.create(recursive: true);
      }

      await _dio.download(
        url,
        filePath,
        cancelToken: _cancelToken,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            final progress = received / total;
            final newProgress =
                Map<String, double>.from(state.downloadProgress);
            newProgress[fileName] = progress;
            emit(state.copyWith(downloadProgress: newProgress));
          }
        },
      );

      emit(state.copyWith(
        isDownloading: false,
        downloadProgress: {},
        successMessage: '文件已下載到: $filePath',
        downloadedFilePath: filePath,
      ));
    } catch (e) {
      if (_cancelToken.isCancelled) {
        emit(state.copyWith(
          isDownloading: false,
          downloadProgress: {},
          error: '下載已取消',
        ));
      } else {
        emit(state.copyWith(
          isDownloading: false,
          downloadProgress: {},
          error: '下載失敗: ${e.toString()}',
        ));
      }
    }
  }

  Future<void> downloadMultipleFiles({
    required List<String> urls,
    required List<String> fileNames,
    String? customPath,
  }) async {
    try {
      emit(state.copyWith(
        isDownloading: true,
        error: null,
        successMessage: null,
      ));

      // 初始化通知點擊處理
      _notifications.initialize(
        const InitializationSettings(
          android: AndroidInitializationSettings('@mipmap/ic_launcher'),
          iOS: DarwinInitializationSettings(),
        ),
        onDidReceiveNotificationResponse: (NotificationResponse details) async {
          // 處理通知點擊
          if (details.payload != null) {
            await OpenFilex.open(details.payload!);
          }
        },
      );

      final basePath = await _getDownloadPath();
      if (basePath == null) {
        throw Exception('無法獲取下載路徑');
      }

      final downloadPath =
          customPath != null ? '$basePath/$customPath' : basePath;
      log('Download path: $downloadPath');

      final directory = Directory(downloadPath);
      if (!await directory.exists()) {
        await directory.create(recursive: true);
      }

      List<String> downloadedFiles = [];

      for (int i = 0; i < urls.length; i++) {
        final fileName = fileNames[i];
        final filePath = '$downloadPath/$fileName';
        log('Downloading file to: $filePath');

        final notificationId =
            DateTime.now().millisecondsSinceEpoch ~/ 1000 + i;

        await _showDownloadNotification(
          id: notificationId,
          title: '下載檔案: $fileName',
          progress: 0,
        );

        await _dio.download(
          urls[i],
          filePath,
          onReceiveProgress: (received, total) {
            if (total != -1) {
              final progress = received / total;
              final progressPercent = (progress * 100).toInt();

              final newProgress =
                  Map<String, double>.from(state.downloadProgress);
              newProgress[fileName] = progress;
              emit(state.copyWith(
                downloadProgress: newProgress,
                error: null,
                successMessage: null,
              ));

              _showDownloadNotification(
                id: notificationId,
                title: '下載檔案: $fileName',
                progress: progressPercent,
              );
            }
          },
        );

        final file = File(filePath);
        if (await file.exists()) {
          downloadedFiles.add(filePath);
          log('File downloaded successfully: $filePath');

          await _showDownloadNotification(
            id: notificationId,
            title: '檔案已下載: $fileName',
            progress: 100,
            isComplete: true,
            filePath: filePath, // 添加文件路徑
          );
        }
      }

      if (downloadedFiles.isEmpty) {
        throw Exception('沒有文件下載成功');
      }

      final displayPath = downloadPath.replaceAll('/storage/emulated/0', '');

      emit(state.copyWith(
        isDownloading: false,
        downloadProgress: {},
        error: null,
        successMessage: '文件已下載到：$displayPath',
        downloadedFilePath: downloadPath,
      ));
    } catch (e) {
      log('Download error: $e');
      emit(state.copyWith(
        isDownloading: false,
        downloadProgress: {},
        successMessage: null,
        error: '下載失敗: ${e.toString()}',
      ));
    }
  }

  void cancelDownload() {
    _cancelToken.cancel();
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
