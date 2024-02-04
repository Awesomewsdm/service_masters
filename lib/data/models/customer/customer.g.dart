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
          firstName: $checkedConvert('first_name', (v) => v as String?),
          lastName: $checkedConvert('last_name', (v) => v as String?),
          profilePicture:
              $checkedConvert('profile_picture', (v) => v as String?),
          phoneNumber: $checkedConvert('phone_number', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'profilePicture': 'profile_picture',
        'phoneNumber': 'phone_number'
      },
    );
