part of "verify_user_cubit.dart";

final class VerifyUserState extends Equatable {
  const VerifyUserState({
    this.isCodeSent = false,
    this.isLoading = false,
    this.user,
    this.phoneNumber = const PhoneNumber.pure(),
    this.email = const Email.pure(),
    this.status = FormzSubmissionStatus.initial,
    this.isValid = false,
    this.errorMessage,
  });

  final firebase_auth.User? user;
  final Email email;
  final PhoneNumber phoneNumber;
  final FormzSubmissionStatus status;
  final bool isValid;
  final String? errorMessage;
  final bool isLoading;
  final bool isCodeSent;

  @override
  List<Object?> get props =>
      [email, status, isValid, errorMessage, isCodeSent, isLoading];

  VerifyUserState copyWith({
    Email? email,
    FormzSubmissionStatus? status,
    bool? isValid,
    String? errorMessage,
    bool? isLoading,
    bool? isCodeSent,
  }) {
    return VerifyUserState(
      email: email ?? this.email,
      status: status ?? this.status,
      isValid: isValid ?? this.isValid,
      isLoading: isLoading ?? this.isLoading,
      isCodeSent: isCodeSent ?? this.isCodeSent,
    );
  }
}
