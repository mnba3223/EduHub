import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_slider.freezed.dart';
part 'image_slider.g.dart';

@freezed
class ImageSlider with _$ImageSlider {
  const factory ImageSlider({
    required int id,
    @JsonKey(name: 'image_data') required String imageData,
    @JsonKey(name: 'display_order') int? displayOrder,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _ImageSlider;

  factory ImageSlider.fromJson(Map<String, dynamic> json) =>
      _$ImageSliderFromJson(json);
}
