import "package:formz/formz.dart";

/// Validation errors for the [Password] [FormzInput].
enum PasswordValidationError {
  invalid,
}

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure("");

  const Password.dirty([super.value = ""]) : super.dirty();

  static final _passwordRegExp = RegExp(r"^[A-Za-z\d]{8,}$");

  @override
  PasswordValidationError? validator(String? value) {
    if (value == null || value.isEmpty) {
      return PasswordValidationError.empty;
    }
    if (!_passwordRegExp.hasMatch(value)) {
      return PasswordValidationError.invalid;
    }
    return null;
  }
}
