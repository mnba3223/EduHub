// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_slider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageSliderImpl _$$ImageSliderImplFromJson(Map<String, dynamic> json) =>
    _$ImageSliderImpl(
      id: (json['id'] as num).toInt(),
      imagePath: json['image_path'] as String,
      displayOrder: (json['display_order'] as num).toInt(),
    );

Map<String, dynamic> _$$ImageSliderImplToJson(_$ImageSliderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_path': instance.imagePath,
      'display_order': instance.displayOrder,
    };
