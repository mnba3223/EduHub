import 'dart:convert';
import 'dart:ui';
import 'package:flutter/services.dart' show rootBundle;
import 'package:easy_localization/easy_localization.dart';

class CsvAssetLoader extends AssetLoader {
  const CsvAssetLoader();

  @override
  Future<Map<String, dynamic>> load(String path, Locale locale) async {
    final csvString = await rootBundle.loadString('$path/translations.csv');
    final csvLines = const LineSplitter().convert(csvString);

    final headers = csvLines[0].split(',');
    final localeCode =
        '${locale.languageCode}_${locale.countryCode ?? locale.languageCode.toUpperCase()}';
    final columnIndex = headers.indexOf(localeCode);

    if (columnIndex == -1) {
      throw Exception('Locale $localeCode not found in CSV file');
    }

    final Map<String, dynamic> translations = {};
    for (var i = 1; i < csvLines.length; i++) {
      final columns = csvLines[i].split(',');
      if (columns.length > columnIndex) {
        translations[columns[0]] = columns[columnIndex];
      }
    }

    return translations;
  }
}
