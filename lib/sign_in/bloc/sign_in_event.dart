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

class SignInFormSubmitted extends SignInEvent {
  const SignInFormSubmitted({
    required this.email,
    required this.password,
  });
  final String email;
  final String password;
  @override
  List<Object> get props => [email, password];
}

class SignInFormSubmitting extends SignInEvent {}

class SignInFormSubmission extends SignInEvent {}

class SignInInWithCredentialsPressed extends SignInEvent {}

class SignInInWithGooglePressed extends SignInEvent {}

class SignInWithGoogle extends SignInEvent {}

class SignInWithCredentials extends SignInEvent {
  const SignInWithCredentials(this.email, this.password);

  final String email;
  final String password;

  @override
  List<Object> get props => [email, password];
}
