import "package:service_masters/common/barrels.dart";

part "personal_details_bloc.freezed.dart";
part "personal_details_event.dart";
part "personal_details_state.dart";

class PersonalDetailsBloc
    extends Bloc<PersonalDetailsEvent, PersonalDetailsState> {
  PersonalDetailsBloc()
      : _customerRepositoryImpl = getIt<CustomerRepositoryImpl>(),
        super(const PersonalDetailsState()) {
    on<_LastNameChanged>(_onLastnameChanged);
    on<_FirstNameChanged>(_onFirstnameChanged);
    on<_PhoneNumberChanged>(_onPhoneNumberChanged);
    on<_FormSubmitted>(_onFormSubmitted);
  }
  final CustomerRepositoryImpl _customerRepositoryImpl;
  FutureOr<void> _onLastnameChanged(
    _LastNameChanged event,
    Emitter<PersonalDetailsState> emit,
  ) {
    final lastname = LastName.dirty(event.lastName);
    emit(
      state.copyWith(
        lastName: lastname,
        isValid: Formz.validate([
          state.firstName,
          state.phoneNumber,
          lastname,
        ]),
      ),
    );
  }

  FutureOr<void> _onFirstnameChanged(
    _FirstNameChanged event,
    Emitter<PersonalDetailsState> emit,
  ) {
    final firstname = FirstName.dirty(event.firstName);
    emit(
      state.copyWith(
        firstName: firstname,
        isValid: Formz.validate([
          firstname,
          state.lastName,
          state.phoneNumber,
        ]),
      ),
    );
  }

  FutureOr<void> _onPhoneNumberChanged(
    _PhoneNumberChanged event,
    Emitter<PersonalDetailsState> emit,
  ) {
    final phoneNumber = PhoneNumber.dirty(event.phoneNumber);
    emit(
      state.copyWith(
        phoneNumber: phoneNumber,
        isValid: Formz.validate([
          phoneNumber,
          state.firstName,
          state.lastName,
        ]),
        errorMessage: phoneNumber.displayError?.message ?? "",
      ),
    );
  }

  FutureOr<void> _onFormSubmitted(
    _FormSubmitted event,
    Emitter<PersonalDetailsState> emit,
  ) async {
    if (state.isValid) {
      emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
      try {
        final customer = Customer(
          id: FirebaseAuth.instance.currentUser!.uid,
          firstName: event.firstname,
          lastName: event.lastname,
          phoneNumber: event.phoneNumber,
          email: FirebaseAuth.instance.currentUser!.email,
        );

        await _customerRepositoryImpl.addCustomer(
          customer,
        );
        emit(state.copyWith(status: FormzSubmissionStatus.success));
      } on Exception {
        emit(state.copyWith(status: FormzSubmissionStatus.failure));
      }
    }
  }
}
