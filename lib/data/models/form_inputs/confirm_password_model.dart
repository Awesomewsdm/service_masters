import "package:service_masters/common/barrels.dart";

enum ConfirmedPasswordValidationError { invalid }

class ConfirmedPassword
    extends FormzInput<String, ConfirmedPasswordValidationError> {
  const ConfirmedPassword.pure({this.password = ""}) : super.pure("");

  const ConfirmedPassword.dirty({required this.password, String value = ""})
      : super.dirty(value);

  final String password;

  @override
  ConfirmedPasswordValidationError? validator(String? value) {
    return password == value ? null : ConfirmedPasswordValidationError.invalid;
  }
}

class ConfirmedPasswordConverter
    implements JsonConverter<ConfirmedPassword, String?> {
  const ConfirmedPasswordConverter();

  @override
  ConfirmedPassword fromJson(String? json) {
    return ConfirmedPassword.dirty(password: json ?? "");
  }

  @override
  String toJson(ConfirmedPassword object) {
    return object.value;
  }
}
