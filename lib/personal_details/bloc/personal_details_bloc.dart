import "package:service_masters/common/barrels.dart";

part "personal_details_bloc.freezed.dart";
part "personal_details_event.dart";
part "personal_details_state.dart";

class PersonalDetailsBloc
    extends Bloc<PersonalDetailsEvent, PersonalDetailsState> {
  PersonalDetailsBloc() : super(const _Initial()) {
    // on<PersonalDetailsEvent>();
  }

  // FutureOr<void> _onPersonalDetailsEvent(
  //   PersonalDetailsEvent event,
  //   Emitter<PersonalDetailsState> emit,
  // ) {
  //   event.when(
  //     started: () {},
  //     lastNameChanged: (String lastName) {
  //       emit(_Lastname(lastName));
  //     },
  //     firstNameChanged: (String firstName) {
  //       emit(_Firstname(firstName));
  //     },
  //     phoneNumberChanged: (String phoneNumber) {

  //     },
  //   );
  // }

  // void _onLastnameChanged(
  //   SignUpLastnameChanged event,
  //   Emitter<SignUpState> emit,
  // ) {
  //   final lastname = LastName.dirty(event.lastname);
  //   emit(
  //     state.copyWith(
  //       lastName: lastname,
  //       isValid: Formz.validate([
  //         state.firstName,
  //         lastname,
  //         state.email,
  //         state.password,
  //         state.confirmedPassword,
  //       ]),
  //     ),
  //   );
  // }
}
