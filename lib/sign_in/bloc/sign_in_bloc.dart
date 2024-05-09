import "package:service_masters/common/barrels.dart";

part "sign_in_bloc.freezed.dart";
part "sign_in_event.dart";
part "sign_in_state.dart";

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(const SignInState()) {
    on<_EmailChanged>(_onEmailChanged, transformer: restartable());
    on<_PasswordChanged>(_onPasswordChanged, transformer: restartable());
    on<_CredentialsSubmitted>(_onSignInFormSubmitted, transformer: droppable());
    on<_PasswordVisibilityToggled>(_togglePasswordVisibility);
    on<_SignInWithGoogle>(_signInWithGoogle, transformer: restartable());
  }

  final AuthenticationRepository _authenticationRepository =
      AuthenticationRepository();

  FutureOr<void> _signInWithGoogle(
    _SignInWithGoogle event,
    Emitter<SignInState> emit,
  ) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _authenticationRepository.logInWithGoogle();
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

  FutureOr<void> _onEmailChanged(
    _EmailChanged event,
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
    _TogglePasswordVisibility event,
    Emitter<SignInState> emit,
  ) {
    emit(state.copyWith(isPasswordVisible: !state.isPasswordVisible));
  }

  FutureOr<void> _onSignInFormSubmitted(
    _CredentialsSubmitted event,
    Emitter<SignInState> emit,
  ) async {
    if (state.isValid) {
      emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
      try {
        final resp = await _authenticationRepository.logInWithEmailAndPassword(
          email: state.email.value,
          password: state.password.value,
        );
        resp.when(
          (customer) => ,
          (message) => ,
        );
        emit(state.copyWith(status: FormzSubmissionStatus.success));
      } on SignInWithEmailAndPasswordFailure catch (e) {
        emit(
          state.copyWith(
            status: FormzSubmissionStatus.failure,
            errorMessage: e.message,
          ),
        );
      }
    }
  }
}
