// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Customer',
      json,
      ($checkedConvert) {
        final val = Customer(
          id: $checkedConvert('id', (v) => v as String),
          email: $checkedConvert('email', (v) => v as String?),
          firstName: $checkedConvert('firstName', (v) => v as String?),
          lastName: $checkedConvert('lastName', (v) => v as String?),
          profilePicture:
              $checkedConvert('profilePicture', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'profilePicture': instance.profilePicture,
    };
