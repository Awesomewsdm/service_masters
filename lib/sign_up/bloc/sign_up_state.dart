import "package:service_masters/common/barrels.dart";

part "sign_up_state.freezed.dart";

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState({
    @EmailConverter() @Default(Email.pure()) Email email,
    @PasswordConverter() @Default(Password.pure()) Password password,
    @ConfirmedPasswordConverter()
    @Default(ConfirmedPassword.pure())
    ConfirmedPassword confirmedPassword,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(false) bool isValid,
    @Default(false) bool isPasswordVisible,
    @Default(false) bool isConfirmPasswordVisible,
    String? errorMessage,
    String? emailErrorMessage,
    String? passwordErrorMessage,
  }) = _SignUpState;

  factory SignUpState.fromJson(Map<String, dynamic> json) =>
      _$SignUpStateFromJson(json);
}
