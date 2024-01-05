part of "user_name_bloc.dart";

class UserFormState extends Equatable {
  const UserFormState({
    this.status = FormzSubmissionStatus.initial,
    this.firstname = const FirstName.pure(),
    this.lastname = const LastName.pure(),
    this.isValid = false,
  });
  final FormzSubmissionStatus status;

  final FirstName firstname;
  final LastName lastname;

  final bool isValid;

  UserFormState copyWith({
    FormzSubmissionStatus? status,
    FirstName? firstname,
    LastName? lastname,
    bool? isValid,
  }) {
    return UserFormState(
      status: status ?? this.status,
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      isValid: isValid ?? this.isValid,
    );
  }

  @override
  List<Object?> get props => [
        status,
        firstname,
        lastname,
        isValid,
      ];
}
