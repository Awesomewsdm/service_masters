import "package:freezed_annotation/freezed_annotation.dart";
import "package:service_masters/common/barrels.dart";

part "sign_in_state.freezed.dart";
part "sign_in_state.g.dart";

@freezed
abstract class SignInState with _$SignInState {
  const factory SignInState({
    required Email email,
    required Password password,
    required bool isPasswordVisible,
    required FormzSubmissionStatus status,
    required bool isValid,
    String? errorMessage,
    String? emailErrorMessage,
    String? passwordErrorMessage,
  }) = _SignInState;

  factory SignInState.fromJson(Map<String, Object?> json) =>
      _$SignInStateFromJson(json);
}
