import "package:formz/formz.dart";

/// Validation errors for the [Password] [FormzInput].
enum PasswordValidationError {
  invalid("Invalid password"),
  empty("Password is empty"),
  noUpperCase("Password does not contain an uppercase letter"),
  noLowerCase("Password does not contain a lowercase letter"),
  noNumber("Password does not contain a number"),
  noSpecialCharacter("Password does not contain a special character"),
  isNotLongEnough("Password should be at least 8 characters long");

  /// Generic invalid error.
  const PasswordValidationError(this.message);
  final String message;
}

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure("");

  const Password.dirty([super.value = ""]) : super.dirty();

  static final _passwordRegExp = RegExp(r"^[A-Za-z\d]{8,}$");

  @override
  PasswordValidationError? validator(String? value) {
    if (value!.isEmpty) {
      return PasswordValidationError.empty;
    } else if (!_passwordRegExp.hasMatch(value)) {
      return PasswordValidationError.invalid;
    } else if (!value.contains(RegExp("[A-Z]"))) {
      return PasswordValidationError.noUpperCase;
    } else if (!value.contains(RegExp("[a-z]"))) {
      return PasswordValidationError.noLowerCase;
    } else if (!value.contains(RegExp("[0-9]"))) {
      return PasswordValidationError.noNumber;
    } else if (!value.contains(
      RegExp(
        r'[!@#$%^&*(),.?":{}|<>]',
      ),
    )) {
      return PasswordValidationError.noSpecialCharacter;
    } else if (value.length < 8) {
      return PasswordValidationError.isNotLongEnough;
    }
    return null;
  }
}
