part of "sign_up_bloc.dart";

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.onEmailChanged({
    required String email,
  }) = _EmailChanged;
  const factory SignUpEvent.onPasswordChanged({
    required String password,
  }) = _PasswordChanged;
  const factory SignUpEvent.onConfirmedPasswordChanged({
    required String value,
  }) = _ConfirmedPasswordChanged;
  const factory SignUpEvent.onPasswordVisibilityToggled() =
      _PasswordVisibilityToggled;
  const factory SignUpEvent.onConfirmedPasswordVisibilityToggled() =
      _ConfirmedPasswordVisibilityToggled;
  const factory SignUpEvent.onCredentialsSubmit({
    required String email,
    required String password,
  }) = _CredentialsSubmitted;
  const factory SignUpEvent.signUpWithGoogle() = _SignUpWithGoogle;
}
