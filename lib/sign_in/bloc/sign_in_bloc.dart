import "package:service_masters/common/barrels.dart";

part "sign_in_event.dart";

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(const SignInState()) {
    on<SignInEmailChanged>(_onEmailChanged);
    on<SignInPasswordChanged>(_onPasswordChanged);
    on<SignInFormSubmitted>(_onSubmitted);
    on<ToggleSignInPasswordVisibility>(_togglePasswordVisibility);
    on<SignInWithCredentials>(_logInWithCredentials);
    on<SignInWithGoogle>(_signInWithGoogle);
  }
  final AuthenticationRepository _authenticationRepository =
      AuthenticationRepository();

  Future<void> _logInWithCredentials(
    SignInWithCredentials event,
    Emitter<SignInState> emit,
  ) async {
    if (!state.isValid) return;
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _authenticationRepository.logInWithEmailAndPassword(
        email: state.email.value,
        password: state.password.value,
      );
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } on LogInWithEmailAndPasswordFailure catch (e) {
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

  FutureOr<void> _signInWithGoogle(
    SignInWithGoogle event,
    Emitter<SignInState> emit,
  ) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _authenticationRepository.logInWithGoogle();
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } on LogInWithGoogleFailure catch (e) {
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

  FutureOr<void> _onEmailChanged(
    SignInEmailChanged event,
    Emitter<SignInState> emit,
  ) {
    final email = Email.dirty(event.email);
    emit(
      state.copyWith(
        email: email,
        isValid: Formz.validate([email, state.password]),
        emailErrorMessage: email.displayError?.message ?? "",
      ),
    );
  }

  void _onPasswordChanged(
    SignInPasswordChanged event,
    Emitter<SignInState> emit,
  ) {
    final password = Password.dirty(event.password);
    emit(
      state.copyWith(
        password: password,
        isValid: Formz.validate([password, state.email]),
        passwordErrorMessage: password.displayError?.message ?? "",
      ),
    );
  }

  void _togglePasswordVisibility(
    ToggleSignInPasswordVisibility event,
    Emitter<SignInState> emit,
  ) {
    emit(state.copyWith(isPasswordVisible: !state.isPasswordVisible));
  }

  FutureOr<void> _onSubmitted(
    SignInFormSubmitted event,
    Emitter<SignInState> emit,
  ) async {
    if (state.isValid) {
      emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
      try {
        await _authenticationRepository.logInWithEmailAndPassword(
          email: event.email,
          password: event.password,
        );
        emit(state.copyWith(status: FormzSubmissionStatus.success));
      } catch (_) {
        emit(state.copyWith(status: FormzSubmissionStatus.failure));
      }
    }
  }
}
