part of "sign_in_bloc.dart";

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.onEmailChanged({
    required String email,
  }) = _EmailChanged;
  const factory SignInEvent.onPasswordChanged({
    required String password,
  }) = _PasswordChanged;
 const factory SignInEvent.onPasswordVisibilityToggled() = _PasswordVisibilityToggled
  const factory SignInEvent.onCredentialsSubmit({
    required void Function(Customer customer) onSuccess,
    required void Function(String message) onError,
  }) = _CredentialsSubmitted;
  const factory SignInEvent.signInWithGoogle() = _SignInWithGoogle;
}
