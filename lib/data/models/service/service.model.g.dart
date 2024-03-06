// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'service.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceImpl _$$ServiceImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ServiceImpl',
      json,
      ($checkedConvert) {
        final val = _$ServiceImpl(
          id: $checkedConvert('id', (v) => v as String),
          serviceName: $checkedConvert('service_name', (v) => v as String),
          imageUrl: $checkedConvert('image_url', (v) => v as String),
          isFavorite: $checkedConvert('is_favorite', (v) => v as bool),
          description: $checkedConvert('description', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'serviceName': 'service_name',
        'imageUrl': 'image_url',
        'isFavorite': 'is_favorite'
      },
    );

Map<String, dynamic> _$$ServiceImplToJson(_$ServiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'service_name': instance.serviceName,
      'image_url': instance.imageUrl,
      'is_favorite': instance.isFavorite,
      'description': instance.description,
    };
