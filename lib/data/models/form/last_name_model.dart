import "package:formz/formz.dart";

enum LastNameValidationError { empty }

class Lastname extends FormzInput<String, LastNameValidationError> {
  const Lastname.pure() : super.pure("");
  const Lastname.dirty([super.value = ""]) : super.dirty();

  @override
  LastNameValidationError? validator(String value) {
    if (value.isEmpty) return LastNameValidationError.empty;
    return null;
  }
}
