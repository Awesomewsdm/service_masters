import "package:formz/formz.dart";
import "package:service_masters/common/barrels.dart";

enum EmailValidationError {
  invalid("Invalid email"),
  missingAtSign("Email is missing an @ sign");

  const EmailValidationError(this.message);
  final String message;
}

class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure() : super.pure("");

  const Email.dirty([super.value = ""]) : super.dirty();

  static final RegExp _emailRegExp = RegExp(
    r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""",
  );

  @override
  EmailValidationError? validator(String? value) {
    if (!_emailRegExp.hasMatch(value!)) {
      logger.e(EmailValidationError.invalid.message);
      return EmailValidationError.invalid;
    } else if (!value.contains("@")) {
      logger.e(EmailValidationError.missingAtSign.message);

      return EmailValidationError.missingAtSign;
    }
    return null;
  }
}
