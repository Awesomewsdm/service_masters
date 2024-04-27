import "package:service_masters/common/barrels.dart";

part "sign_up_event.dart";

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
    on<SignUpWithGoogle>(_signUpWithGoogle);
  }
  final _authenticationRepository = getIt<AuthenticationRepository>();

  FutureOr<void> _emailChanged(
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
        emailErrorMessage: emailChanged.displayError?.message ?? "",
      ),
    );
  }

  FutureOr<void> _passwordChanged(
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
        passwordErrorMessage: password.displayError?.message ?? "",
      ),
    );
  }

  FutureOr<void> _confirmedPasswordChanged(
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
      /// Add a timeout of 10 seconds
      await _authenticationRepository
          .signUp(
            email: event.email,
            password: event.password,
          )
          .timeout(const Duration(seconds: 30));

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
    } on TimeoutException catch (e) {
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

  Future<void> _signUpWithGoogle(
    SignUpWithGoogle event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _authenticationRepository.logInWithGoogle().timeout(
            const Duration(seconds: 20),
          );
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } on SignInWithGoogleFailure catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.message,
          status: FormzSubmissionStatus.failure,
        ),
      );
    } catch (_) {
      emit(state.copyWith(status: FormzSubmissionStatus.failure));
    }
  }
}
