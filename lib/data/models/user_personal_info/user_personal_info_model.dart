import "package:service_masters/common/barrels.dart";

part "user_personal_info_model.g.dart";
part "user_personal_info_model.freezed.dart";

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
