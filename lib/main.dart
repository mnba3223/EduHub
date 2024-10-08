import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';
import 'app.dart';
import 'utils/csv_asset_loader.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('zh', 'TW'),
        Locale('ja', 'JP')
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('zh', 'TW'),
      assetLoader: const CsvAssetLoader(),
      child: const ProviderScope(
        child: MyApp(),
      ),
    ),
  );
}
