// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_slider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageSliderImpl _$$ImageSliderImplFromJson(Map<String, dynamic> json) =>
    _$ImageSliderImpl(
      id: (json['id'] as num).toInt(),
      imageData: json['image_data'] as String,
      displayOrder: (json['display_order'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$ImageSliderImplToJson(_$ImageSliderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_data': instance.imageData,
      'display_order': instance.displayOrder,
      'created_at': instance.createdAt?.toIso8601String(),
    };
