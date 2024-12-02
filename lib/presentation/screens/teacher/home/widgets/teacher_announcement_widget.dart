import 'package:easy_localization/easy_localization.dart';
import 'package:edutec_hub/presentation/ui_widget/custom_widget/slider.dart';
import 'package:edutec_hub/state_management/cubit/silder/silder_cubit.dart';
import 'package:edutec_hub/state_management/cubit/silder/slider_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeacherAnnouncementWidget extends StatelessWidget {
  const TeacherAnnouncementWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SliderCubit, SliderState>(
      buildWhen: (previous, current) =>
          previous.isLoading != current.isLoading ||
          previous.sliders != current.sliders ||
          previous.error != current.error,
      builder: (context, state) {
        if (state.isLoading) {
          return const SizedBox(
            height: 200,
            child: Center(child: CircularProgressIndicator()),
          );
        }

        if (state.error != null) {
          return SizedBox(
            height: 200,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(state.error!),
                  ElevatedButton(
                    onPressed: () =>
                        context.read<SliderCubit>().refreshSliders(),
                    child: const Text('retry').tr(),
                  ),
                ],
              ),
            ),
          );
        }

        return state.sliders.isEmpty
            ? const SizedBox()
            : SlidersContainer(
                sliders: state.sliders,
              );
      },
    );
  }
}
