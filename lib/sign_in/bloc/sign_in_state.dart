import "package:service_masters/common/barrels.dart";

part "sign_in_state.freezed.dart";

@freezed
abstract class SignInState with _$SignInState {
  const factory SignInState({
    @Default(false) bool isPasswordVisible,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(false) bool isValid,
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    String? errorMessage,
    String? emailErrorMessage,
    String? passwordErrorMessage,
  }) = _SignInState;
}
