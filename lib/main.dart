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

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  // 初始化 Firebase
  await Firebase.initializeApp();

  // 初始化 Firebase
  await FirebaseConfig.initialize();
  if (Platform.isAndroid) {
    // 檢查並請求所需權限
    final deviceInfo = await DeviceInfoPlugin().androidInfo;
    if (deviceInfo.version.sdkInt >= 30) {
      await Permission.manageExternalStorage.request();
    } else {
      await Permission.storage.request();
    }
  }
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
