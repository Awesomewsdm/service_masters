// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'service_provider.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceProvider _$ServiceProviderFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ServiceProvider',
      json,
      ($checkedConvert) {
        final val = ServiceProvider(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          serviceType: $checkedConvert('service_type', (v) => v as String),
          imageUrl: $checkedConvert('image_url', (v) => v as String),
          isBookedmarked: $checkedConvert('is_bookedmarked', (v) => v as bool),
        );
        return val;
      },
      fieldKeyMap: const {
        'serviceType': 'service_type',
        'imageUrl': 'image_url',
        'isBookedmarked': 'is_bookedmarked'
      },
    );

Map<String, dynamic> _$ServiceProviderToJson(Customer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'isBookedmarked': instance.email,
      'serviceType': instance.serviceType,
    };
