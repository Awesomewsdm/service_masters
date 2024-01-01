import "package:freezed_annotation/freezed_annotation.dart";

part "transaction_data.freezed.dart";
part "transaction_data.g.dart";

@freezed
class CustomerTransactionData with _$CustomerTransactionData {
  factory CustomerTransactionData({
    required String customerID,
    required String transactionDate,
    required int transactionAmount,
    required String transactionDirection,
    required String transactionNarration,
  }) = _CustomerTransactionData;

  factory CustomerTransactionData.fromJson(Map<String, dynamic> json) =>
      _$CustomerTransactionDataFromJson(json);
}
