import "package:service_masters/common/barrels.dart";

/// Validation errors for the [Phone Number] [FormzInput].

enum PhoneNumberValidationError {
  invalid("Invalid phone number"),
  empty("Phone number is empty"),
  length("Phone number should be at least 10 characters long");

  const PhoneNumberValidationError(this.message);
  final String message;
}

class PhoneNumber extends FormzInput<String, PhoneNumberValidationError> {
  const PhoneNumber.pure() : super.pure("");
  const PhoneNumber.dirty([super.value = ""]) : super.dirty();

  @override
  PhoneNumberValidationError? validator(String value) {
    if (value.isEmpty) {
      return PhoneNumberValidationError.empty;
    } else if (value.length < 10) {
      return PhoneNumberValidationError.length;
    } else if (!RegExp(r"^(?:[0-9] ?){10,}$").hasMatch(value)) {
      return PhoneNumberValidationError.invalid;
    } else {
      return null;
    }
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
