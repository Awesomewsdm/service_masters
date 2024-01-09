import "package:formz/formz.dart";

enum EmailValidationError {
  invalid,
  missingAtSign,
}

class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure() : super.pure("");

  const Email.dirty([super.value = ""]) : super.dirty();

  static final RegExp _emailRegExp = RegExp(
    r"^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9]+(?:\.[a-zA-Z0-9-]+)*$",
  );

  @override
  EmailValidationError? validator(String value) {
    if (!_emailRegExp.hasMatch(value)) {
      return EmailValidationError.invalid;
    }

    if (!value.contains("@")) {
      return EmailValidationError.missingAtSign;
    }
    return null;
  }
}
