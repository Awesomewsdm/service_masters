import "dart:convert";
import "package:bank_app/common/constants/exports.dart";

import "package:fast_immutable_collections/fast_immutable_collections.dart";

class TransactionRepository {
  TransactionRepository();

  Future<IList<CustomerTransactionData>> loadTransactionData(
    String filter,
  ) async {
    final jsonStr = await rootBundle.loadString(pathToJson);
    final jsonData = json.decode(jsonStr) as Map<String, dynamic>;
    final rawDataList = jsonData["customerTransactionData"] as List<dynamic>;

    final transactionDataList = IList(
      rawDataList.where((transaction) {
        final transactionData = transaction as Map<String, dynamic>;
        final transactionDirection = transactionData["transactionDirection"];
        if (filter == tAll) {
          return true;
        } else if (filter == tDebit) {
          return transactionDirection == tDebit;
        } else if (filter == tCredit) {
          return transactionDirection == tCredit;
        }
        return false;
      }).map((e) {
        return CustomerTransactionData.fromJson(e as Map<String, dynamic>);
      }),
    );

    return transactionDataList;
  }

  String computeTotalAccountBalance(
    IList<CustomerTransactionData> transactions,
  ) {
    var totalBalance = 0;

    for (final transaction in transactions) {
      if (transaction.transactionDirection == "Credit") {
        totalBalance += transaction.transactionAmount;
      } else if (transaction.transactionDirection == "Debit") {
        totalBalance -= transaction.transactionAmount;
      }
    }
    return totalBalance.toStringAsFixed(2);
  }
}
