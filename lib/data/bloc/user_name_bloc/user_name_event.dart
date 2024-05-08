part of "user_name_bloc.dart";

sealed class UserNameEvent extends Equatable {
  @override
  List<Object> get props => [];
}

final class FirstNameChanged extends UserNameEvent {
  FirstNameChanged(this.firstName);
  final String firstName;

  @override
  List<Object> get props => [firstName];
}

final class LastNameChanged extends UserNameEvent {
  LastNameChanged(this.lastName);
  final String lastName;

  @override
  List<Object> get props => [lastName];
}

final class FormSubmitted extends UserNameEvent {
  FormSubmitted();
}
