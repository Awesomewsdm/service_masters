import "package:service_masters/common/barrels.dart";

part "customer_personal_info.g.dart";
part "customer_personal_info.freezed.dart";

@freezed
class CustomerPersonalInfo with _$customerPersonalInfo {
  factory CustomerPersonalInfo({
    @FirstNameConverter() required FirstName firstName,
    @LastNameConverter() required LastName lastName,
    @PhoneNumberConverter() required PhoneNumber phoneNumber,
    // @LocationConverter() required Location location,
    @JsonKey(name: "profile_picture") required String? profilePicture,
    required String? registrationDate,
  }) = _CustomerPersonalInfo;

  factory CustomerPersonalInfo.fromJson(Map<String, dynamic> json) =>
      _$CustomerPersonalInfoFromJson(json);
}
