import 'package:edutec_hub/config/firebase/firebase_config.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
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
