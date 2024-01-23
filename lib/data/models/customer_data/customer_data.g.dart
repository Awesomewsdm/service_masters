// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'customer_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerStaticDataImpl _$$CustomerStaticDataImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CustomerStaticDataImpl',
      json,
      ($checkedConvert) {
        final val = _$CustomerStaticDataImpl(
          customerID: $checkedConvert('customer_i_d', (v) => v as String),
          customerName: $checkedConvert('customer_name', (v) => v as String),
          gender: $checkedConvert('gender', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'customerID': 'customer_i_d',
        'customerName': 'customer_name'
      },
    );
