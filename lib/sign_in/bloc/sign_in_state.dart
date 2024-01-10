part of "sign_in_bloc.dart";

final class SignInState extends Equatable {
  const SignInState({
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.isPasswordVisible = false,
    this.status = FormzSubmissionStatus.initial,
    this.isValid = false,
    this.passwordErrorMessage,
    this.errorMessage,
    this.emailErrorMessage,
  });

  final Email email;
  final Password password;
  final bool isPasswordVisible;
  final FormzSubmissionStatus status;
  final bool isValid;
  final String? errorMessage;
  final String? emailErrorMessage;
  final String? passwordErrorMessage;

  @override
  List<Object?> get props => [
        email,
        password,
        email,
        isPasswordVisible,
        status,
        isValid,
        errorMessage,
        emailErrorMessage,
        passwordErrorMessage,
      ];

  SignInState copyWith({
    Email? email,
    Password? password,
    bool? isPasswordVisible,
    FormzSubmissionStatus? status,
    bool? isValid,
    String? errorMessage,
    String? emailErrorMessage,
    String? passwordErrorMessage,
  }) {
    return SignInState(
      email: email ?? this.email,
      password: password ?? this.password,
      isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
      status: status ?? this.status,
      isValid: isValid ?? this.isValid,
      errorMessage: errorMessage ?? this.errorMessage,
      emailErrorMessage: emailErrorMessage ?? this.emailErrorMessage,
      passwordErrorMessage: passwordErrorMessage ?? this.passwordErrorMessage,
    );
  }
}
