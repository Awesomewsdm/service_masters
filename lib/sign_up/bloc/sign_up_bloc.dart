import "package:authentication_repository/authentication_repository.dart";
import "package:formz/formz.dart";
import "package:home_service_app/common/barrels.dart";
import "package:home_service_app/data/models/form/confirm_password_model.dart";
import "package:home_service_app/data/models/form/email_model.dart";
import "package:home_service_app/data/models/form/first_name_model.dart";
import "package:home_service_app/data/models/form/last_name_model.dart";
import "package:home_service_app/data/models/form/password_model.dart";
part "sign_up_event.dart";
part "sign_up_state.dart";

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc()
      : super(
          const SignUpState(),
        ) {
    on<SignUpFirstnameChanged>(_onFirstnameChanged);
    on<SignUpLastnameChanged>(_onLastnameChanged);
    on<SignUpEmailChanged>(_emailChanged);
    on<SignUpPasswordChanged>(_passwordChanged);
    on<ConfirmedPasswordChanged>(_confirmedPasswordChanged);
    on<TogglePasswordVisibility>(_togglePasswordVisibility);
    on<ToggleConfirmPasswordVisibility>(_toggleConfirmPasswordVisibility);
    on<SignUpFormSubmitted>(_signUpFormSubmitted);
  }
  final AuthenticationRepository _authenticationRepository =
      AuthenticationRepository();

  void _onFirstnameChanged(
    SignUpFirstnameChanged event,
    Emitter<SignUpState> emit,
  ) {
    final firstname = FirstName.dirty(event.firstname);
    emit(
      state.copyWith(
        firstName: firstname,
        isValid: Formz.validate([
          firstname,
          state.lastName,
          state.email,
          state.password,
          state.confirmedPassword,
        ]),
      ),
    );
  }

  void _onLastnameChanged(
    SignUpLastnameChanged event,
    Emitter<SignUpState> emit,
  ) {
    final lastname = LastName.dirty(event.lastname);
    emit(
      state.copyWith(
        lastName: lastname,
        isValid: Formz.validate([
          state.firstName,
          lastname,
          state.email,
          state.password,
          state.confirmedPassword,
        ]),
      ),
    );
  }

  void _emailChanged(
    SignUpEmailChanged event,
    Emitter<SignUpState> emit,
  ) {
    final emailChanged = Email.dirty(event.value);
    emit(
      state.copyWith(
        email: emailChanged,
        isValid: Formz.validate([
          emailChanged,
          state.password,
          state.confirmedPassword,
        ]),
      ),
    );
  }

  void _passwordChanged(
    SignUpPasswordChanged event,
    Emitter<SignUpState> emit,
  ) {
    final password = Password.dirty(event.password);
    final confirmedPassword = ConfirmedPassword.dirty(
      password: password.value,
      value: state.confirmedPassword.value,
    );

    emit(
      state.copyWith(
        password: password,
        confirmedPassword: confirmedPassword,
        isValid: Formz.validate([
          state.email,
          password,
          confirmedPassword,
        ]),
      ),
    );
  }

  void _confirmedPasswordChanged(
    ConfirmedPasswordChanged event,
    Emitter<SignUpState> emit,
  ) {
    final confirmedPassword = ConfirmedPassword.dirty(
      password: state.password.value,
      value: event.value,
    );
    emit(
      state.copyWith(
        confirmedPassword: confirmedPassword,
        isValid: Formz.validate([
          state.email,
          state.password,
          confirmedPassword,
        ]),
      ),
    );
  }

  void _togglePasswordVisibility(
    TogglePasswordVisibility event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(isPasswordVisible: !state.isPasswordVisible));
  }

  void _toggleConfirmPasswordVisibility(
    ToggleConfirmPasswordVisibility event,
    Emitter<SignUpState> emit,
  ) {
    emit(
      state.copyWith(
        isConfirmPasswordVisible: !state.isConfirmPasswordVisible,
      ),
    );
  }

  Future<void> _signUpFormSubmitted(
    SignUpFormSubmitted event,
    Emitter<SignUpState> emit,
  ) async {
    if (!state.isValid) return;
    emit(
      state.copyWith(status: FormzSubmissionStatus.inProgress),
    );
    try {
      await _authenticationRepository.signUp(
        email: state.email.value,
        password: state.password.value,
      );
      emit(
        state.copyWith(status: FormzSubmissionStatus.success),
      );
    } on SignUpWithEmailAndPasswordFailure catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.message,
          status: FormzSubmissionStatus.failure,
        ),
      );
    } catch (_) {
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
        ),
      );
    }
  }
}
