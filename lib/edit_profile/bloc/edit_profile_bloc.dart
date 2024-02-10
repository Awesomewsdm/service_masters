import "package:service_masters/common/barrels.dart";

part "edit_profile_bloc.freezed.dart";
part "edit_profile_event.dart";
part "edit_profile_state.dart";

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  EditProfileBloc()
      : super(
          const EditProfileState(),
        ) {
    on<_FirstNameChanged>(_onFirstnameChanged);
    on<_LastNameChanged>(_onLastnameChanged);
    on<_PhoneNumberChanged>(_onPhoneNumberChanged);
    on<_EmailChanged>(_onEmailChanged);
    on<_FormSubmitted>(_onFormSubmitted);
  }

  final _customerRepository = getIt<CustomerRepositoryImpl>();
  final _authRepository = getIt<AuthenticationRepository>();

  FutureOr<void> _onFirstnameChanged(
    _FirstNameChanged event,
    Emitter<EditProfileState> emit,
  ) {
    final firstname = FirstName.dirty(event.firstName);
    emit(
      state.copyWith(
        firstname: firstname,
        isValid: Formz.validate([
          firstname,
          state.lastname,
          state.phoneNumber,
          state.email,
        ]),
      ),
    );
  }

  FutureOr<void> _onLastnameChanged(
    _LastNameChanged event,
    Emitter<EditProfileState> emit,
  ) {
    final lastname = LastName.dirty(event.lastName);
    emit(
      state.copyWith(
        lastname: lastname,
        isValid: Formz.validate([
          state.firstname,
          lastname,
          state.phoneNumber,
          state.email,
        ]),
      ),
    );
  }

  FutureOr<void> _onPhoneNumberChanged(
    _PhoneNumberChanged event,
    Emitter<EditProfileState> emit,
  ) {
    final phoneNumber = PhoneNumber.dirty(event.phoneNumber);
    emit(
      state.copyWith(
        phoneNumber: phoneNumber,
        isValid: Formz.validate([
          state.firstname,
          state.lastname,
          phoneNumber,
          state.email,
        ]),
      ),
    );
  }

  FutureOr<void> _onEmailChanged(
    _EmailChanged event,
    Emitter<EditProfileState> emit,
  ) {
    final email = Email.dirty(event.email);
    emit(
      state.copyWith(
        email: email,
        isValid: Formz.validate([
          state.firstname,
          state.lastname,
          state.phoneNumber,
          email,
        ]),
      ),
    );
  }

  FutureOr<void> _onFormSubmitted(
    _FormSubmitted event,
    Emitter<EditProfileState> emit,
  ) {
    if (state.isValid) {
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.inProgress,
        ),
      );

      final customer = Customer(
        id: _authRepository.currentCustomer.id,
        firstName: state.firstname.value,
        lastName: state.lastname.value,
        phoneNumber: state.phoneNumber.value,
        email: state.email.value,
      );

      try {
        _customerRepository.updateCustomer(
          customer,
        );
      } catch (e) {
        emit(
          state.copyWith(
            status: FormzSubmissionStatus.failure,
            errorMessage: e.toString(),
          ),
        );
      }
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.success,
        ),
      );
    }
  }
}
