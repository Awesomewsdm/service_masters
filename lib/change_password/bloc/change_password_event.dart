part of "change_password_bloc.dart";

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.oldPasswordChanged(String oldPassword) =
      _OldPasswordChanged;
  const factory ChangePasswordEvent.newPasswordChanged(String newPassword) =
      _NewPasswordChanged;
  const factory ChangePasswordEvent.confirmPasswordChanged(
    String confirmPassword,
  ) = _ConfirmPasswordChanged;
  const factory ChangePasswordEvent.formSubmitted({
    required String oldPassword,
    required String newPassword,
    required String confirmPassword,
    @Default(false) bool isValid,
  }) = _FormSubmitted;
}
