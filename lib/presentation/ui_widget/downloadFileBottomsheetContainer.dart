// import 'package:eschool/cubits/downloadFileCubit.dart';

import 'package:edutec_hub/state_management/cubit/downloadFileCubit.dart';
import 'package:edutec_hub/data/models/student/studentMaterial.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/bottomsheetTopTitleAndCloseButton.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/customRoundedButton.dart';
import 'package:edutec_hub/utils/labelKeys.dart';
import 'package:edutec_hub/utils/uiUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DownloadFileBottomsheetContainer extends StatefulWidget {
  final StudyMaterial studyMaterial;

  const DownloadFileBottomsheetContainer({
    super.key,
    required this.studyMaterial,
  });

  @override
  State<DownloadFileBottomsheetContainer> createState() =>
      _DownloadFileBottomsheetContainerState();
}

class _DownloadFileBottomsheetContainerState
    extends State<DownloadFileBottomsheetContainer> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      context.read<DownloadFileCubit>().downloadFile(
            studyMaterial: widget.studyMaterial,
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, dynamic result) {
        if (context.read<DownloadFileCubit>().state is DownloadFileInProgress) {
          context.read<DownloadFileCubit>().cancelDownloadProcess();
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * (0.075),
          vertical: MediaQuery.of(context).size.height * (0.04),
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(UiUtils.bottomSheetTopRadius),
            topRight: Radius.circular(UiUtils.bottomSheetTopRadius),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BottomsheetTopTitleAndCloseButton(
              onTapCloseButton: () {
                if (context.read<DownloadFileCubit>().state
                    is DownloadFileInProgress) {
                  context.read<DownloadFileCubit>().cancelDownloadProcess();
                }
                Navigator.of(context).pop();
              },
              titleKey: fileDownloadingKey,
            ),

            //
            Text(
              widget.studyMaterial.fileName,
              style: TextStyle(
                fontSize: 18.0,
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * (0.0125),
            ),
            BlocConsumer<DownloadFileCubit, DownloadFileState>(
              listener: (context, state) {
                if (state is DownloadFileSuccess) {
                  Navigator.of(context).pop(
                    {"error": false, "filePath": state.downloadedFileUrl},
                  );
                } else if (state is DownloadFileFailure) {
                  Navigator.of(context).pop({
                    "error": true,
                    "message": state.isMessageKey
                        ? UiUtils.getTranslatedLabel(
                            context, state.errorMessage)
                        : state.errorMessage
                  });
                }
              },
              builder: (context, state) {
                if (state is DownloadFileInProgress) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 6,
                        child: LayoutBuilder(
                          builder: (context, boxConstraints) {
                            return Stack(
                              children: [
                                UiUtils.buildProgressContainer(
                                  width: boxConstraints.maxWidth,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSurface
                                      .withOpacity(0.5),
                                ),
                                UiUtils.buildProgressContainer(
                                  width: boxConstraints.maxWidth *
                                      state.uploadedPercentage *
                                      0.01,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${state.uploadedPercentage.toStringAsFixed(2)} %",
                      )
                    ],
                  );
                }
                return const SizedBox();
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * (0.025),
            ),
            CustomRoundedButton(
              onTap: () {
                context.read<DownloadFileCubit>().cancelDownloadProcess();
                Navigator.of(context).pop();
              },
              height: 40,
              textSize: 16.0,
              widthPercentage: 0.35,
              titleColor: Theme.of(context).scaffoldBackgroundColor,
              backgroundColor: Theme.of(context).colorScheme.primary,
              buttonTitle: UiUtils.getTranslatedLabel(context, cancelKey),
              showBorder: false,
            )
          ],
        ),
      ),
    );
  }
}
