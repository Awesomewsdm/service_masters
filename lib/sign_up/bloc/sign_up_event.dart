part of "sign_up_bloc.dart";

sealed class SignUpEvent extends Equatable {
  const SignUpEvent();

  @override
  List<Object> get props => [];
}

class SignUpFirstnameChanged extends SignUpEvent {
  const SignUpFirstnameChanged(this.firstname);

  final String firstname;

  @override
  List<Object> get props => [firstname];
}

class SignUpLastnameChanged extends SignUpEvent {
  const SignUpLastnameChanged(this.lastname);

  final String lastname;

  @override
  List<Object> get props => [lastname];
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

class SignUpEmailChanged extends SignUpEvent {
  const SignUpEmailChanged(this.value);

  final String value;

  @override
  List<Object> get props => [value];
}

class SignUpWithCredentials extends SignUpEvent {
  const SignUpWithCredentials(
    this.email,
    this.password,
  );

  final String email;
  final String password;

  @override
  List<Object> get props => [
        email,
        password,
      ];
}

class SignUpWithGoogle extends SignUpEvent {}

class SignUpFormSubmitted extends SignUpEvent {
  const SignUpFormSubmitted(
      {required this.email,
      required this.password,
      required this.id,
      this.firstName,
      this.lastName});

  final String email;
  final String password;
  final String id;
  final String? firstName;
  final String? lastName;

  @override
  List<Object> get props => [email, password, id];
}
