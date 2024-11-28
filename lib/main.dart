import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:edutec_hub/config/firebase/firebase_config.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:permission_handler/permission_handler.dart';
import 'app.dart';
import 'utils/csv_asset_loader.dart';
import 'state_management/blocs/app/app_bloc.dart';

import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class AppInitializer {
  static Future<void> initialize() async {
    try {
      // 1. 基礎初始化
      WidgetsFlutterBinding.ensureInitialized();
      await EasyLocalization.ensureInitialized();

      // 2. Firebase 初始化
      await Firebase.initializeApp();
      await FirebaseConfig.initialize();

      // 3. 權限請求 - 使用順序請求而不是並行請求
      if (Platform.isAndroid) {
        await _requestPermissionsSequentially();
      }
    } catch (e) {
      debugPrint('Initialization error: $e');
      rethrow;
    }
  }

  static Future<void> _requestPermissionsSequentially() async {
    try {
      final deviceInfo = await DeviceInfoPlugin().androidInfo;
      final sdkInt = deviceInfo.version.sdkInt;

      // 存儲權限
      if (sdkInt >= 33) {
        // Android 13 及以上：分別請求媒體權限
        await _requestPermissionSafely(Permission.photos);
        await _requestPermissionSafely(Permission.videos);
        await _requestPermissionSafely(Permission.audio);
      } else if (sdkInt >= 30) {
        // Android 11 及以上
        await _requestPermissionSafely(Permission.storage);
        final status = await Permission.manageExternalStorage.status;
        if (status.isDenied) {
          await _requestPermissionSafely(Permission.manageExternalStorage);
        }
      } else {
        // Android 10 及以下
        await _requestPermissionSafely(Permission.storage);
      }

      // 最後請求通知權限
      await _requestPermissionSafely(Permission.notification);
    } catch (e) {
      debugPrint('Permission request error: $e');
      // 繼續執行，不中斷應用啟動
    }
  }

  static Future<void> _requestPermissionSafely(Permission permission) async {
    try {
      final status = await permission.status;
      if (status.isDenied) {
        await permission.request();
        // 給UI一個短暫的延遲以確保對話框正確關閉
        await Future.delayed(const Duration(milliseconds: 100));
      }
    } catch (e) {
      debugPrint('Error requesting ${permission.toString()}: $e');
    }
  }
}

void main() async {
  // try {
  //   // 確保 Flutter 綁定初始化
  //   WidgetsFlutterBinding.ensureInitialized();

  //   // 初始化本地化
  //   await EasyLocalization.ensureInitialized();

  //   // 初始化 Firebase
  //   await Firebase.initializeApp();
  //   await FirebaseConfig.initialize();

  //   // 處理權限
  //   if (Platform.isAndroid) {
  //     await _requestAndroidPermissions();
  //   }
  // } catch (e, stackTrace) {
  //   debugPrint('Initialization error: $e');
  //   debugPrint('Stack trace: $stackTrace');
  //   // 可以在這裡添加錯誤報告機制
  //   rethrow; // 重新拋出錯誤，讓上層知道初始化失敗
  // }
  // 初始化應用
  await AppInitializer.initialize();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('zh', 'TW'),
        Locale('zh', 'CN'),
        Locale('ja', 'JP')
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('zh', 'TW'),
      startLocale: const Locale('zh', 'TW'),
      assetLoader: const CsvAssetLoader(),
      child: BlocProvider(
        create: (context) => AppBloc(),
        child: const MyApp(),
      ),
    ),
  );
}
