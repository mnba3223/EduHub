import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'app.dart';
import 'utils/csv_asset_loader.dart';
import 'blocs/app_bloc.dart';

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
      child: BlocProvider(
        create: (context) => AppBloc(),
        child: const MyApp(),
      ),
    ),
  );
}
