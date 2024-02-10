part of "personal_details_bloc.dart";

@freezed
class PersonalDetailsEvent with _$PersonalDetailsEvent {
  const factory PersonalDetailsEvent.lastNameChanged(String lastName) =
      _LastNameChanged;
  const factory PersonalDetailsEvent.firstNameChanged(String firstName) =
      _FirstNameChanged;
  const factory PersonalDetailsEvent.phoneNumberChanged(String phoneNumber) =
      _PhoneNumberChanged;
  const factory PersonalDetailsEvent.formSubmitted({
    required String firstname,
    required String lastname,
    required String phoneNumber,
  }) = _FormSubmitted;
}
