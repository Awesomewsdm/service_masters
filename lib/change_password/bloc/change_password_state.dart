part of "change_password_bloc.dart";

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState({
    required String oldPassword,
    required String newPassword,
    required String confirmPassword,
    required bool isSubmitting,
    required bool isSuccess,
    required bool isFailure,
    required String errorMessage,
  }) = _ChangePasswordState;

  factory ChangePasswordState.initial() => const ChangePasswordState(
        oldPassword: "",
        newPassword: "",
        confirmPassword: "",
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        errorMessage: "",
      );
}
