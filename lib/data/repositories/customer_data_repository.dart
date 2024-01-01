import "dart:convert";
import "package:bank_app/common/constants/exports.dart";
import "package:bank_app/data/bloc/bloc_observer/app_bloc_observer.dart";
import "package:multiple_result/multiple_result.dart";

class CustomerStaticDataRepository {
  Future<Result<CustomerStaticData, void>> loadCustomerStaticData() async {
    try {
      logger.e(
        "Loading customer static data",
      );
      final jsonStr = await rootBundle.loadString(pathToJson);
      final jsonData = json.decode(jsonStr) as Map<String, dynamic>;
      final rawData = jsonData["customerStaticData"] as List<dynamic>;
      final customerData =
          CustomerStaticData.fromJson(rawData.first as Map<String, dynamic>);

      return Result.success(customerData);
    } catch (e, stackTrace) {
      logger.e(
        "Error loading customer static data: $e",
        error: e,
        stackTrace: stackTrace,
      );
      return const Result.error(null);
    }
  }
}
