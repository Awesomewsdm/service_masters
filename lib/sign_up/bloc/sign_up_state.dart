import "package:service_masters/common/barrels.dart";
import "package:service_masters/enums/google_auth_status.dart";

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
    @Default(GoogleAuthSubmissionStatus.initial)
    GoogleAuthSubmissionStatus googleAuthStatus,
    @Default(false) bool isValid,
    @Default(false) bool isPasswordVisible,
    @Default(false) bool isConfirmPasswordVisible,
    String? errorMessage,
    String? emailErrorMessage,
    String? passwordErrorMessage,
  }) = _SignUpState;
}
