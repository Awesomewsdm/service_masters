// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'complaint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Complaint _$ComplaintFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Complaint',
      json,
      ($checkedConvert) {
        final val = Complaint(
          id: $checkedConvert('id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at'},
    );


Map<String, dynamic> _$ComplaintToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.name,
      'description': instance.email,
      'created_at': instance.photo,
    };
