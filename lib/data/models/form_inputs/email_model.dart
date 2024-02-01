import "package:service_masters/common/barrels.dart";

enum EmailValidationError {
  invalid("Invalid email"),
  empty("Email is empty");

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
  EmailValidationError? validator(String value) {
    if (!_emailRegExp.hasMatch(value)) {
      logger.e(EmailValidationError.invalid.message);
      return EmailValidationError.invalid;
    } else if (value.isEmpty) {
      logger.e(EmailValidationError.empty.message);

      return EmailValidationError.empty;
    }
    return null;
  }
}

class EmailConverter implements JsonConverter<Email, String?> {
  const EmailConverter();

  @override
  Email fromJson(String? json) {
    return Email.dirty(json ?? "");
  }

  @override
  String toJson(Email object) {
    return object.value;
  }
}
