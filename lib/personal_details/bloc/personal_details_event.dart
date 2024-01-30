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
  const factory PersonalDetailsEvent.formSubmitted(
    String firstname,
    String lastname,
    String phoneNumber,
  ) = _FormSubmitted;

  /*  bool get isStarted => this is _Started;
  bool get isLastNameChanged => this is _LastNameChanged;
  bool get isFirstNameChanged => this is _FirstNameChanged;
  bool get isPhoneNumberChanged => this is _PhoneNumberChanged;
  bool get isFormSubmitted => this is _FormSubmitted; */
}
