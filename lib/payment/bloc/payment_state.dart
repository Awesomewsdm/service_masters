part of "payment_bloc.dart";

abstract class PaymentState extends Equatable {
  const PaymentState();

  @override
  List<Object> get props => [];
}

class PaymentInitial extends PaymentState {
  const PaymentInitial();
}


// abstract class PaymentState with _$PaymentState {
//   const factory PaymentState({
//     @Default(false) isPasswordVisible,
//     @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
//     @Default(false) bool isValid,
//     @Default(Email.pure()) Email email,
//     @Default(Password.pure()) Password password,
//     String? errorMessage,
//     String? emailErrorMessage,
//     String? passwordErrorMessage,
//   }) = _SignInState;
// }