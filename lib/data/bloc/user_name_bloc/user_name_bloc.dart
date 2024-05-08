import "package:service_masters/common/barrels.dart";
part "user_name_event.dart";
part "user_name_state.dart";

class UserNameBloc extends Bloc<UserNameEvent, UserFormState> {
  UserNameBloc() : super(const UserFormState()) {
    on<LastNameChanged>(_onLastNameChanged);
    on<FirstNameChanged>(_onFirstNamesChanged);
  }

  void _onFirstNamesChanged(
    FirstNameChanged event,
    Emitter<UserFormState> emit,
  ) {
    final firstName = FirstName.dirty(event.firstName);

    emit(
      state.copyWith(
        firstname: firstName,
        isValid: Formz.validate([firstName]),
      ),
    );
  }

  void _onLastNameChanged(
    LastNameChanged event,
    Emitter<UserFormState> emit,
  ) {
    final lastName = LastName.dirty(event.lastName);
    emit(
      state.copyWith(
        lastname: lastName,
        isValid: Formz.validate([lastName]),
      ),
    );
  }
}
