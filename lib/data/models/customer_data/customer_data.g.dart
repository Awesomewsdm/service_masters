// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerStaticDataImpl _$$CustomerStaticDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerStaticDataImpl(
      customerID: json['customerID'] as String,
      customerName: json['customerName'] as String,
      gender: json['gender'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$CustomerStaticDataImplToJson(
        _$CustomerStaticDataImpl instance) =>
    <String, dynamic>{
      'customerID': instance.customerID,
      'customerName': instance.customerName,
      'gender': instance.gender,
      'title': instance.title,
    };
