import 'package:edutec_hub/state_management/cubit/download/downloadFileCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:edutec_hub/state_management/cubit/download/download_state.dart';
import 'package:open_filex/open_filex.dart';

class DownloadButton extends StatelessWidget {
  final List<String> urls;
  final List<String> fileNames;
  final String? customPath;

  const DownloadButton({
    Key? key,
    required this.urls,
    required this.fileNames,
    this.customPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DownloadCubit, DownloadState>(
      listenWhen: (previous, current) =>
          (current.successMessage != null &&
              previous.successMessage != current.successMessage) ||
          (current.error != null && previous.error != current.error),
      listener: (context, state) {
        if (state.error != null) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(state.error!),
                backgroundColor: Colors.red,
                duration: const Duration(seconds: 3),
              ),
            );
        }

        if (state.successMessage != null) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(state.successMessage!),
                backgroundColor: Colors.green,
                duration: const Duration(seconds: 3),
              ),
            );
        }
      },
      builder: (context, state) {
        if (state.isDownloading) {
          double totalProgress = 0;
          int fileCount = 0;

          for (final fileName in fileNames) {
            if (state.downloadProgress.containsKey(fileName)) {
              totalProgress += state.downloadProgress[fileName] ?? 0;
              fileCount++;
            }
          }

          final progress = fileCount > 0 ? totalProgress / fileCount : 0;

          return Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 24.w,
                  height: 24.w,
                  child: CircularProgressIndicator(
                    value: double.tryParse(progress.toString()),
                    strokeWidth: 2,
                    backgroundColor: Colors.grey[300],
                  ),
                ),
                if (progress > 0) ...[
                  SizedBox(width: 8.w),
                  Text(
                    '${(progress * 100).toInt()}%',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ],
            ),
          );
        }

        return IconButton(
          icon: const Icon(Icons.download),
          onPressed: () => context.read<DownloadCubit>().downloadMultipleFiles(
                urls: urls,
                fileNames: fileNames,
                customPath: customPath,
              ),
        );
      },
    );
  }
}
