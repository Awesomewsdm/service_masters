import "package:freezed_annotation/freezed_annotation.dart";
import "package:service_masters/common/barrels.dart";

part "sign_up_state.freezed.dart";

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default(FirstName.pure()) FirstName firstName,
    @Default(LastName.pure()) LastName lastName,
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    @Default(ConfirmedPassword.pure()) ConfirmedPassword confirmedPassword,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(false) bool isValid,
    @Default(false) bool isPasswordVisible,
    @Default(false) bool isConfirmPasswordVisible,
    String? errorMessage,
    String? emailErrorMessage,
    String? passwordErrorMessage,
  }) = _SignUpState;
}
