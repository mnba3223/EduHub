// download_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_state.freezed.dart';

@freezed
class DownloadState with _$DownloadState {
  const factory DownloadState({
    @Default({}) Map<String, double> downloadProgress,
    @Default(false) bool isDownloading,
    String? error,
    String? successMessage,
    String? downloadedFilePath,
  }) = _DownloadState;
}
