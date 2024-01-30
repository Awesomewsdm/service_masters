part of "personal_details_bloc.dart";

@freezed
class PersonalDetailsState with _$PersonalDetailsState {
  const factory PersonalDetailsState.initial() = _Initial;
  const factory PersonalDetailsState.firsname(String firstname) = _Firstname;
  const factory PersonalDetailsState.lastname(String lastname) = _Lastname;

  const factory PersonalDetailsState.phoneNumber(String phoneNumber) =
      _PhoneNumber;

  PersonalDetailsState copyWith({
    String? firstname,
    String? lastname,
    String? phoneNumber,
  }) {
    return PersonalDetailsState(
      firstname: firstname ?? this,
      lastname: lastname ?? this.lastname,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }
}
