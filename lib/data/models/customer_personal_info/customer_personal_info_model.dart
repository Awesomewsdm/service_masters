import "package:service_masters/common/barrels.dart";

part "customer_personal_info_model.g.dart";
part "customer_personal_info_model.freezed.dart";

@freezed
class CustomerPersonalInfo with _$CustomerPersonalInfo {
  factory CustomerPersonalInfo({
    @FirstNameConverter() required FirstName firstName,
    @LastNameConverter() required LastName lastName,
    @PhoneNumberConverter() required PhoneNumber phoneNumber,
    @JsonKey(name: "profile_picture") required String? profilePicture,
    required String? registrationDate,
  }) = _CustomerPersonalInfo;

  factory CustomerPersonalInfo.fromJson(Map<String, dynamic> json) =>
      _$CustomerPersonalInfoFromJson(json);
}
