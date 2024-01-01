import "package:formz/formz.dart";
import "package:home_service_app/common/barrels.dart";
import "package:home_service_app/data/models/form/first_name_model.dart";
import "package:home_service_app/data/models/form/last_name_model.dart";

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
    final lastName = Lastname.dirty(event.lastName);
    emit(
      state.copyWith(
        lastname: lastName,
        isValid: Formz.validate([lastName]),
      ),
    );
  }
}
