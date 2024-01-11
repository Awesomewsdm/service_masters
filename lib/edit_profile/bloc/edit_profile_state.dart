part of "edit_profile_bloc.dart";

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    // required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
    @Default("") String firstname,
    @Default("") String lastname,
    @Default("") String email,
    @Default("") String password,
    @Default("") String confirmedPassword,
    @Default(false) bool isSubmitting,
    @Default(false) bool showErrorMessages,
    @Default(false) bool isPasswordVisible,
    @Default(false) bool isConfirmedPasswordVisible,
  }) = _EditProfileState;
}
