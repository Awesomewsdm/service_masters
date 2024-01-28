// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'in_app_review.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InAppReviewImpl _$$InAppReviewImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$InAppReviewImpl',
      json,
      ($checkedConvert) {
        final val = _$InAppReviewImpl(
          id: $checkedConvert('id', (v) => v as String),
          userId: $checkedConvert('user_id', (v) => v as String),
          userName: $checkedConvert('user_name', (v) => v as String),
          userImageUrl: $checkedConvert('user_image_url', (v) => v as String),
          rating: $checkedConvert('rating', (v) => (v as num).toDouble()),
          review: $checkedConvert('review', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'userId': 'user_id',
        'userName': 'user_name',
        'userImageUrl': 'user_image_url'
      },
    );
