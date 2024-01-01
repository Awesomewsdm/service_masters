part of "sign_up_bloc.dart";

sealed class SignUpEvent extends Equatable {
  const SignUpEvent();

  @override
  List<Object> get props => [];
}

class SignUpUsernameChanged extends SignUpEvent {
  const SignUpUsernameChanged(this.username);

  final String username;

  @override
  List<Object> get props => [username];
}

class SignUpPasswordChanged extends SignUpEvent {
  const SignUpPasswordChanged(this.password);

  final String password;

  @override
  List<Object> get props => [password];
}

class ConfirmedPasswordChanged extends SignUpEvent {
  const ConfirmedPasswordChanged(this.value);

  final String value;

  @override
  List<Object> get props => [value];
}

class TogglePasswordVisibility extends SignUpEvent {}

class ToggleConfirmPasswordVisibility extends SignUpEvent {}

class SignUpSubmitted extends SignUpEvent {}

class EmailChanged extends SignUpEvent {
  const EmailChanged(this.value);

  final String value;

  @override
  List<Object> get props => [value];
}

class PasswordChanged extends SignUpEvent {
  const PasswordChanged(this.value);

  final String value;

  @override
  List<Object> get props => [value];
}

class SignUpFormSubmitted extends SignUpEvent {}
