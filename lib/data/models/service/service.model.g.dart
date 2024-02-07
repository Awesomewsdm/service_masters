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
          id: $checkedConvert('id', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          imageUrl: $checkedConvert('image_url', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'imageUrl': 'image_url'},
    );

Map<String, dynamic> _$$ServiceImplToJson(_$ServiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_url': instance.imageUrl,
    };
