import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_slider.freezed.dart';
part 'image_slider.g.dart';

@freezed
class ImageSlider with _$ImageSlider {
  const factory ImageSlider({
    required int id,
    @JsonKey(name: 'image_path') required String imagePath,
    @JsonKey(name: 'display_order') required int displayOrder,
  }) = _ImageSlider;

  factory ImageSlider.fromJson(Map<String, dynamic> json) =>
      _$ImageSliderFromJson(json);
}
