part of "sign_in_bloc.dart";

sealed class SignInEvent extends Equatable {
  const SignInEvent();

  @override
  List<Object> get props => [];
}

class SignInEmailChanged extends SignInEvent {
  const SignInEmailChanged(this.email);

  final String email;

  @override
  List<Object> get props => [email];
}

class SignInPasswordChanged extends SignInEvent {
  const SignInPasswordChanged(this.password);

  final String password;

  @override
  List<Object> get props => [password];
}

class ToggleSignInPasswordVisibility extends SignInEvent {}

class SignInSubmitted extends SignInEvent {}
