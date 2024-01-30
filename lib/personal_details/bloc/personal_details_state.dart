part of "personal_details_bloc.dart";

@freezed
class PersonalDetailsState with _$PersonalDetailsState {
  const factory PersonalDetailsState({
    @Default(FirstName.pure()) FirstName firstName,
    @Default(LastName.pure()) LastName lastName,
    @Default(PhoneNumber.pure()) PhoneNumber phoneNumber,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(false) bool isValid,
    String? errorMessage,
  }) = _PersonalDetailsState;
}
