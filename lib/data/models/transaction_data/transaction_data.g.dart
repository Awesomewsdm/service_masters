// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'transaction_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerTransactionDataImpl _$$CustomerTransactionDataImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CustomerTransactionDataImpl',
      json,
      ($checkedConvert) {
        final val = _$CustomerTransactionDataImpl(
          customerID: $checkedConvert('customer_i_d', (v) => v as String),
          transactionDate:
              $checkedConvert('transaction_date', (v) => v as String),
          transactionAmount:
              $checkedConvert('transaction_amount', (v) => v as int),
          transactionDirection:
              $checkedConvert('transaction_direction', (v) => v as String),
          transactionNarration:
              $checkedConvert('transaction_narration', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'customerID': 'customer_i_d',
        'transactionDate': 'transaction_date',
        'transactionAmount': 'transaction_amount',
        'transactionDirection': 'transaction_direction',
        'transactionNarration': 'transaction_narration'
      },
    );
