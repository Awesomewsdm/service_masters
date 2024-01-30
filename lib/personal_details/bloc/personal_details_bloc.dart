
import "package:service_masters/common/barrels.dart";

part "personal_details_bloc.freezed.dart";
part "personal_details_event.dart";
part "personal_details_state.dart";

class PersonalDetailsBloc
    extends Bloc<PersonalDetailsEvent, PersonalDetailsState> {
  PersonalDetailsBloc() : super(const _Initial()) {
    on<PersonalDetailsEvent>(_onPersonalDetailsEvent);


  }

FutureOr<void> _onPersonalDetailsEvent(
  PersonalDetailsEvent event,
  Emitter<PersonalDetailsState> emit,
) {
  event.when(
    started: () {},
    lastNameChanged: (String lastName) {
      final lastname = LastName.dirty(lastName);
      emit(state.copyWith(
        lastName: lastname,
        isValid: Formz.validate([
          state.firstName,
          lastname,
          state.email,
          state.password,
          state.confirmedPassword,
        ]),
      ),);
    },
    firstNameChanged: (String firstName) {
      final firstname = FirstName.dirty(firstName);
      emit(state.copyWith(
        firstName: firstname,
        isValid: Formz.validate([
          firstname,
          state.lastName,
          state.email,
          state.password,
          state.confirmedPassword,
        ]),
      ),);
    },
    phoneNumberChanged: (String phoneNumber) {
      final phone = PhoneNumber.dirty(phoneNumber);
      emit(state.copyWith(
        phoneNumber: phone,
        isValid: Formz.validate([
          state.firstName,
          state.lastName,
          state.email,
          state.password,
          state.confirmedPassword,
          phone,
        ]), 
      ),);
    },
  );
}

  }

  
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
