import 'package:edutec_hub/data/models/image_slider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'slider_state.freezed.dart';

@freezed
class SliderState with _$SliderState {
  const factory SliderState({
    @Default([]) List<ImageSlider> sliders,
    @Default(false) bool isLoading,
    String? error,
  }) = _SliderState;
}
