import "package:home_service_app/common/barrels.dart";

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this.provider)
      : super(const AuthStateUninitialized(isLoading: true)) {
    on<AuthEventShouldRegister>(_onShouldRegister);
    on<AuthEventForgotPassword>(_onForgotPassword);
    // on<AuthEventSendEmailVerification>(_onSendEmailVerification);
    on<AuthEventRegister>(_onRegister);
    on<AuthEventInitialize>(_onInitialize);
    on<AuthEventLogIn>(_onLogIn);
    on<AuthEventLogOut>(_onLogOut);
  }
  final AuthProvider provider;

  void _onShouldRegister(
    AuthEventShouldRegister event,
    Emitter<AuthState> emit,
  ) {
    emit(const AuthStateRegistering(exception: null, isLoading: false));
  }

  Future<void> _onForgotPassword(
    AuthEventForgotPassword event,
    Emitter<AuthState> emit,
  ) async {
    emit(
      const AuthStateForgotPassword(
        exception: null,
        hasSentEmail: false,
        isLoading: false,
      ),
    );
    final email = event.email;

    if (email == null) {
      return;
    }

    emit(
      const AuthStateForgotPassword(
        exception: null,
        hasSentEmail: false,
        isLoading: true,
      ),
    );

    bool didSendEmail;
    Exception? exception;

    try {
      await provider.sendPasswordReset(toEmail: email);
      didSendEmail = true;
      exception = null;
    } on Exception catch (e) {
      didSendEmail = false;
      exception = e;
    }

    emit(
      AuthStateForgotPassword(
        exception: exception,
        hasSentEmail: didSendEmail,
        isLoading: false,
      ),
    );
  }

  // Future<void> _onSendEmailVerification(
  //   AuthEventSendEmailVerification event,
  //   Emitter<AuthState> emit,
  // ) async {
  //   await provider.sendEmailVerification();
  //   emit(state);
  // }

  Future<void> _onRegister(
    AuthEventRegister event,
    Emitter<AuthState> emit,
  ) async {
    final email = event.email;
    final password = event.password;

    try {
      await provider.createUser(email: email, password: password);
      await provider.sendEmailVerification();
      // emit(const AuthStateNeedsVerification(isLoading: false));
    } on Exception catch (e) {
      emit(AuthStateRegistering(exception: e, isLoading: false));
    }
  }

  Future<void> _onInitialize(
    AuthEventInitialize event,
    Emitter<AuthState> emit,
  ) async {
    await provider.initialize();
    final user = provider.currentUser;

    if (user == null) {
      emit(const AuthStateLoggedOut(exception: null, isLoading: false));
    } else {
      emit(AuthStateLoggedIn(user: user, isLoading: false));
    }
  }

  Future<void> _onLogIn(AuthEventLogIn event, Emitter<AuthState> emit) async {
    emit(
      const AuthStateLoggedOut(
        exception: null,
        isLoading: true,
        loadingText: "Please wait while I log you in",
      ),
    );

    final email = event.email;
    final password = event.password;

    try {
      final user = await provider.logIn(email: email, password: password);

      if (!user.isEmailVerified) {
        emit(const AuthStateLoggedOut(exception: null, isLoading: false));
      } else {
        emit(const AuthStateLoggedOut(exception: null, isLoading: false));
        emit(AuthStateLoggedIn(user: user, isLoading: false));
      }
    } on Exception catch (e) {
      emit(AuthStateLoggedOut(exception: e, isLoading: false));
    }
  }

  Future<void> _onLogOut(AuthEventLogOut event, Emitter<AuthState> emit) async {
    try {
      await provider.logOut();
      emit(const AuthStateLoggedOut(exception: null, isLoading: false));
    } on Exception catch (e) {
      emit(AuthStateLoggedOut(exception: e, isLoading: false));
    }
  }
}
