import "package:service_masters/common/barrels.dart";

enum PhoneNumberValidationError { empty }

class PhoneNumber extends FormzInput<String, PhoneNumberValidationError> {
  const PhoneNumber.pure() : super.pure("");
  const PhoneNumber.dirty([super.value = ""]) : super.dirty();

  @override
  PhoneNumberValidationError? validator(String value) {
    if (value.isEmpty) return PhoneNumberValidationError.empty;
    return null;
  }
}

class PhoneNumberConverter implements JsonConverter<PhoneNumber, String?> {
  const PhoneNumberConverter();

  @override
  PhoneNumber fromJson(String? json) {
    return PhoneNumber.dirty(json ?? "");
  }

  @override
  String toJson(PhoneNumber object) {
    return object.value;
  }
}
