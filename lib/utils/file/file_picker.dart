import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class FilePickerUtil {
  // 檔案大小限制（MB）
  static const int maxFileSizeMB = 50;

  static Future<File?> pickFile({
    FileType type = FileType.custom,
    List<String>? allowedExtensions,
    String? dialogTitle,
  }) async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: type,
        allowedExtensions: allowedExtensions,
        dialogTitle: dialogTitle,
        allowMultiple: false,
      );

      if (result != null) {
        final file = File(result.files.single.path!);

        // 檢查檔案大小
        final sizeInMB = file.lengthSync() / (1024 * 1024);
        if (sizeInMB > maxFileSizeMB) {
          throw Exception(
              'file_too_large'.tr(args: [maxFileSizeMB.toString()]));
        }

        return file;
      }
      return null;
    } catch (e) {
      debugPrint('Error picking file: $e');
      rethrow;
    }
  }

  static String getFileName(File? file) {
    if (file == null) return 'no_file_selected'.tr();
    return file.path.split('/').last;
  }

  static String getFileSize(File file) {
    final bytes = file.lengthSync();
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
  }
}
