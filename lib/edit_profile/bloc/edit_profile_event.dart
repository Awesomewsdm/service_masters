part of "edit_profile_bloc.dart";

@freezed
class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.profileImageChanged(String profileImage) =
      _ProfileImageChanged;
  const factory EditProfileEvent.profileImageRemoved() = _ProfileImageRemoved;

  const factory EditProfileEvent.firstNameChanged(String firstName) =
      _FirstNameChanged;

  const factory EditProfileEvent.lastNameChanged(String lastName) =
      _LastNameChanged;
  const factory EditProfileEvent.phoneNumberChanged(String phoneNumber) =
      _PhoneNumberChanged;
  const factory EditProfileEvent.emailChangedChanged(String email) =
      _EmailChanged;
  const factory EditProfileEvent.formSubmitted({
    required String firstname,
    required String lastname,
    required String phoneNumber,
  }) = _FormSubmitted;
}
