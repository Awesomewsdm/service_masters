import "package:freezed_annotation/freezed_annotation.dart";

part "customer_data.g.dart";
part "customer_data.freezed.dart";

@freezed
class CustomerStaticData with _$CustomerStaticData {
  factory CustomerStaticData({
    required String customerID,
    required String customerName,
    required String gender,
    required String title,
  }) = _CustomerStaticData;

  factory CustomerStaticData.fromJson(Map<String, dynamic> json) =>
      _$CustomerStaticDataFromJson(json);
}
