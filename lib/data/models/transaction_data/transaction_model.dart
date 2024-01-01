// import "package:bank_app/enums/transaction_type.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "transaction_model.freezed.dart";

@freezed
class TransactionDataModel with _$TransactionDataModel {
  const factory TransactionDataModel({
    required String transactionAmount,
    required String transactionDate,
    required String transactionDirection,
    required String transactionNarration,
  }) = _TransactionDataModel;

  factory TransactionDataModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataModelFromJson(json);
}
