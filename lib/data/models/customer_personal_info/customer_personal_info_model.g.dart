// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'customer_personal_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerPersonalInfoImpl _$$CustomerPersonalInfoImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CustomerPersonalInfoImpl',
      json,
      ($checkedConvert) {
        final val = _$CustomerPersonalInfoImpl(
          firstName: $checkedConvert('first_name',
              (v) => const FirstNameConverter().fromJson(v as String?)),
          lastName: $checkedConvert('last_name',
              (v) => const LastNameConverter().fromJson(v as String?)),
          phoneNumber: $checkedConvert('phone_number',
              (v) => const PhoneNumberConverter().fromJson(v as String?)),
          profilePicture:
              $checkedConvert('profile_picture', (v) => v as String?),
          registrationDate:
              $checkedConvert('registration_date', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'phoneNumber': 'phone_number',
        'profilePicture': 'profile_picture',
        'registrationDate': 'registration_date'
      },
    );
