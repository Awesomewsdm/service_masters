import "package:service_masters/common/barrels.dart";

enum LastNameValidationError {
  empty("Last name is empty");

  const LastNameValidationError(this.message);
  final String message;
}

class LastName extends FormzInput<String, LastNameValidationError> {
  const LastName.pure() : super.pure("");
  const LastName.dirty([super.value = ""]) : super.dirty();

  @override
  LastNameValidationError? validator(String value) {
    if (value.isEmpty) return LastNameValidationError.empty;
    return null;
  }
}

class LastNameConverter implements JsonConverter<LastName, String?> {
  const LastNameConverter();

  @override
  LastName fromJson(String? json) {
    return LastName.dirty(json ?? "");
  }

  @override
  String toJson(LastName object) {
    return object.value;
  }
}
