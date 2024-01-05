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
    on<SignUpEmailChanged>(_emailChanged);
    on<SignUpPasswordChanged>(_passwordChanged);
    on<ConfirmedPasswordChanged>(_confirmedPasswordChanged);
    on<TogglePasswordVisibility>(_togglePasswordVisibility);
    on<ToggleConfirmPasswordVisibility>(_toggleConfirmPasswordVisibility);
    on<SignUpFormSubmitted>(_signUpFormSubmitted);
  }

  void _onFirstnameChanged(
    SignUpFirstnameChanged event,
    Emitter<SignUpState> emit,
  ) {
    final firstname = Firstname.dirty(event.firstname);
    emit(
      state.copyWith(
        firstname: firstname,
        isValid: Formz.validate([
          firstname,
          state.lastname,
          state.emailChanged,
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
        lastname: lastname,
        isValid: Formz.validate([
          state.firstname,
          lastname,
          state.emailChanged,
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
        emailChanged: emailChanged,
        isValid: Formz.validate([
          emailChanged,
          state.password,
          state.confirmedPassword,
        ]),
      ),
    );
  }

  void _passwordChanged(
      SignUpPasswordChanged event, Emitter<SignUpState> emit) {
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
          state.emailChanged,
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
          state.emailChanged,
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
      emit(
        state.copyWith(status: FormzSubmissionStatus.success),
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
