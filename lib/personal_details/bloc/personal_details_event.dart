part of "personal_details_bloc.dart";

@freezed
class PersonalDetailsEvent with _$PersonalDetailsEvent {
  const factory PersonalDetailsEvent.started() = _Started;
  const factory PersonalDetailsEvent.lastNameChanged(String lastName) =
      _LastNameChanged;
  const factory PersonalDetailsEvent.firstNameChanged(String firstName) =
      _FirstNameChanged;
  const factory PersonalDetailsEvent.phoneNumberChanged(String phoneNumber) =
      _PhoneNumberChanged;
}
