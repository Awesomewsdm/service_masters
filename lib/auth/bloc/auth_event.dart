import "package:home_service_app/common/barrels.dart";

@immutable
abstract class AuthEvent {
  const AuthEvent();
}

class AuthEventInitialize extends AuthEvent {
  const AuthEventInitialize();
}

class AuthEventStatusChanged extends AuthEvent {
  const AuthEventStatusChanged(this.isLoggedIn);
  final bool isLoggedIn;
}

// class AuthEventSendEmailVerification extends AuthEvent {
//   const AuthEventSendEmailVerification();
// }

class AuthEventLogIn extends AuthEvent {
  const AuthEventLogIn(this.email, this.password);
  final String email;
  final String password;
}

class AuthEventRegister extends AuthEvent {
  const AuthEventRegister({required this.email, required this.password});
  final String email;
  final String password;
}

class AuthEventShouldRegister extends AuthEvent {
  const AuthEventShouldRegister();
}

class AuthEventForgotPassword extends AuthEvent {
  const AuthEventForgotPassword({this.email});
  final String? email;
}

class AuthEventLogOut extends AuthEvent {
  const AuthEventLogOut();
}
