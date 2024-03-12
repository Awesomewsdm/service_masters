part of "edit_profile_bloc.dart";

@freezed
abstract class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    @Default(FirstName.pure()) FirstName firstname,
    @Default(LastName.pure()) LastName lastname,
    @Default(Email.pure()) Email email,
    @Default(PhoneNumber.pure()) PhoneNumber phoneNumber,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(false) bool isValid,
    String? errorMessage,
  }) = _EditProfileState;
}
