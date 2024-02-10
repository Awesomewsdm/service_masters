// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'service.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Service _$ServiceFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Service',
      json,
      ($checkedConvert) {
        final val = Service(
          id: $checkedConvert('id', (v) => v as String),
          serviceName: $checkedConvert('service_name', (v) => v as String),
          imageUrl: $checkedConvert('image_url', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'serviceName': 'service_name',
        'imageUrl': 'image_url'
      },
    );

Map<String, dynamic> _$ServiceToJson(Service instance) => <String, dynamic>{
      'id': instance.id,
      'service_name': instance.serviceName,
      'image_url': instance.imageUrl,
      'description': instance.description,
    };
