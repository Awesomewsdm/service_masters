part of "sign_in_bloc.dart";

@freezed
abstract class SignInState with _$SignInState {
  const factory SignInState({
    @Default(false) bool isPasswordVisible,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(false) bool isValid,
    @EmailConverter() @Default(Email.pure()) Email email,
    @PasswordConverter() @Default(Password.pure()) Password password,
    String? errorMessage,
    String? emailErrorMessage,
    String? passwordErrorMessage,
  }) = _SignInState;
}
