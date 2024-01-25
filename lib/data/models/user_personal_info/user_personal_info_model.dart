import "package:service_masters/common/barrels.dart";

part "customer_personal_data.g.dart";
part "customer_personal_info.freezed.dart";

@freezed
class UserPersonalInfo with _$UserPersonalInfo {
  factory UserPersonalInfo({
    @FirstNameConverter() required FirstName firstName,
    @LastNameConverter() required LastName lastName,
    @PhoneNumberConverter() required PhoneNumber phoneNumber,
    @JsonKey(name: "profile_picture") required String? profilePicture,
    required String? registrationDate,
  }) = _UserPersonalInfo;

  factory UserPersonalInfo.fromJson(Map<String, dynamic> json) =>
      _$UserPersonalInfoFromJson(json);
}
