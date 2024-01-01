// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerTransactionDataImpl _$$CustomerTransactionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerTransactionDataImpl(
      customerID: json['customerID'] as String,
      transactionDate: json['transactionDate'] as String,
      transactionAmount: json['transactionAmount'] as int,
      transactionDirection: json['transactionDirection'] as String,
      transactionNarration: json['transactionNarration'] as String,
    );

Map<String, dynamic> _$$CustomerTransactionDataImplToJson(
        _$CustomerTransactionDataImpl instance) =>
    <String, dynamic>{
      'customerID': instance.customerID,
      'transactionDate': instance.transactionDate,
      'transactionAmount': instance.transactionAmount,
      'transactionDirection': instance.transactionDirection,
      'transactionNarration': instance.transactionNarration,
    };
