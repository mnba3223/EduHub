import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/presentation/ui_widget/button/custom_button.dart';
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

class AttachmentDownloadButton extends StatelessWidget {
  final String url;
  final String fileName;
  final String? customPath;

  const AttachmentDownloadButton({
    Key? key,
    required this.url,
    required this.fileName,
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
          log(state.error!);
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text("${"download_failed_content".tr()}"),
                backgroundColor: Colors.red,
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
        final progress = state.downloadProgress[fileName] ?? 0;
        final isDownloading = state.isDownloading && progress > 0;

        return InkWell(
          onTap: () => context.read<DownloadCubit>().downloadMultipleFiles(
            urls: [url],
            fileNames: [fileName],
            customPath: customPath,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (isDownloading) ...[
                SizedBox(
                  width: 16.sp,
                  height: 16.sp,
                  child: CircularProgressIndicator(
                    value: progress,
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                ),
                SizedBox(width: 4.w),
                Text(
                  '${(progress * 100).toInt()}%',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.blue,
                  ),
                ),
              ] else ...[
                Icon(Icons.attachment, size: 16.sp, color: Colors.blue),
                SizedBox(width: 4.w),
                Text(
                  'attachment'.tr(),
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.blue,
                  ),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}

// class ExamFileDownloadButton extends StatelessWidget {
//   final String fileUrl;

//   const ExamFileDownloadButton({
//     Key? key,
//     required this.fileUrl,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final fileName = fileUrl.split('/').last;

//     return BlocConsumer<DownloadCubit, DownloadState>(
//       listenWhen: (previous, current) =>
//           (current.successMessage != null &&
//               previous.successMessage != current.successMessage) ||
//           (current.error != null && previous.error != current.error),
//       listener: (context, state) {
//         if (state.error != null) {
//           ScaffoldMessenger.of(context)
//             ..hideCurrentSnackBar()
//             ..showSnackBar(
//               SnackBar(
//                 content: Text(state.error!),
//                 backgroundColor: Colors.red,
//                 duration: const Duration(seconds: 3),
//               ),
//             );
//         }

//         if (state.successMessage != null) {
//           ScaffoldMessenger.of(context)
//             ..hideCurrentSnackBar()
//             ..showSnackBar(
//               SnackBar(
//                 content: Text(state.successMessage!),
//                 backgroundColor: Colors.green,
//                 duration: const Duration(seconds: 3),
//               ),
//             );
//         }
//       },
//       builder: (context, state) {
//         final progress = state.downloadProgress[fileName] ?? 0;
//         final isDownloading = state.isDownloading && progress > 0;

//         if (isDownloading) {
//           return Container(
//             padding: EdgeInsets.symmetric(vertical: 8.h),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SizedBox(
//                   width: 20.w,
//                   height: 20.w,
//                   child: CircularProgressIndicator(
//                     value: progress,
//                     strokeWidth: 2,
//                     valueColor: AlwaysStoppedAnimation<Color>(
//                       Theme.of(context).primaryColor,
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 8.w),
//                 Text(
//                   'downloading'.tr() + ' ${(progress * 100).toInt()}%',
//                   style: TextStyle(
//                     fontSize: 14.sp,
//                     color: Theme.of(context).primaryColor,
//                   ),
//                 ),
//               ],
//             ),
//           );
//         }

//         return CustomButton(
//           onPressed: () {
//             context.read<DownloadCubit>().downloadMultipleFiles(
//               urls: [fileUrl],
//               fileNames: [fileName],
//             );
//           },
//           text: 'download_attachment'.tr(),
//         );
//       },
//     );
//   }
// }
class ExamFileDownloadButton extends StatelessWidget {
  final String fileUrl;

  const ExamFileDownloadButton({
    Key? key,
    required this.fileUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fileName = fileUrl.split('/').last;

    return BlocConsumer<DownloadCubit, DownloadState>(
      listenWhen: (previous, current) {
        log('Previous state: ${previous.successMessage}, ${previous.error}');
        log('Current state: ${current.successMessage}, ${current.error}');
        return current.successMessage != previous.successMessage ||
            current.error != previous.error;
      },
      listener: (context, state) {
        log('Listener triggered with state: ${state.successMessage}, ${state.error}');
        if (state.successMessage != null || state.error != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.successMessage ?? state.error ?? ''),
              backgroundColor:
                  state.successMessage != null ? Colors.green : Colors.red,
            ),
          );
        }
      },
      builder: (context, state) {
        final progress = state.downloadProgress[fileName] ?? 0;
        final isDownloading = state.isDownloading && progress > 0;

        if (isDownloading) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 20.w,
                  height: 20.w,
                  child: CircularProgressIndicator(
                    value: progress,
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
                Text(
                  'downloading'.tr() + ' ${(progress * 100).toInt()}%',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          );
        }

        return CustomButton(
          onPressed: () {
            log('Download button pressed for file: $fileName');
            context.read<DownloadCubit>().downloadMultipleFiles(
              urls: [fileUrl],
              fileNames: [fileName],
            );
          },
          text: 'download_attachment'.tr(),
        );
      },
    );
  }
}
