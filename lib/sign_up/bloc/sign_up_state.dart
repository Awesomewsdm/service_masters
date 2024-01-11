import "package:freezed_annotation/freezed_annotation.dart";
import "package:service_masters/common/barrels.dart";

part "sign_in_state.freezed.dart";
part "sign_in_state.g.dart";

enum ConfirmPasswordValidationError { invalid }

class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default(FirstName.pure()) FirstName firstName,
    @Default(LastName.pure()) LastName lastName,
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    @Default(ConfirmedPassword.pure()) ConfirmedPassword confirmedPassword,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(false) bool isValid,
    String? errorMessage,
    String? emailErrorMessage,
    String? passwordErrorMessage,
    @Default(false) bool isPasswordVisible,
    @Default(false) bool isConfirmPasswordVisible,
  }) = _SignUpState;
}
