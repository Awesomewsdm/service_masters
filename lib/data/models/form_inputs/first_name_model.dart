// ignore: unnecessary_import
import "package:formz/formz.dart";
import "package:service_masters/common/barrels.dart";

enum FirstNameValidationError {
  empty("First name is empty");

  const FirstNameValidationError(this.message);
  final String message;
}

class FirstName extends FormzInput<String, FirstNameValidationError> {
  const FirstName.pure() : super.pure("");
  const FirstName.dirty([super.value = ""]) : super.dirty();

  @override
  FirstNameValidationError? validator(String value) {
    if (value.isEmpty) return FirstNameValidationError.empty;
    return null;
  }
}

class FirstNameConverter implements JsonConverter<FirstName, String?> {
  const FirstNameConverter();

  @override
  FirstName fromJson(String? json) {
    return FirstName.dirty(json ?? "");
  }

  @override
  String toJson(FirstName object) {
    return object.value;
  }
}
