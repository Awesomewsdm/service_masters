part of "edit_profile_bloc.dart";

abstract class EditProfileEvent extends Equatable {
  const EditProfileEvent();

  @override
  List<Object> get props => [];
}

class EditProfileInitial extends EditProfileEvent {
  const EditProfileInitial();

  @override
  List<Object> get props => [];
}

class EditProfileFirstnameChanged extends EditProfileEvent {
  const EditProfileFirstnameChanged(this.firstname);

  final String firstname;

  @override
  List<Object> get props => [firstname];
}

class EditProfileLastnameChanged extends EditProfileEvent {
  const EditProfileLastnameChanged(this.lastname);

  final String lastname;

  @override
  List<Object> get props => [lastname];
}

class EditProfileEmailChanged extends EditProfileEvent {
  const EditProfileEmailChanged(this.email);

  final String email;

  @override
  List<Object> get props => [email];
}

class EditProfilePasswordChanged extends EditProfileEvent {
  const EditProfilePasswordChanged(this.password);

  final String password;

  @override
  List<Object> get props => [password];
}

class EditProfileConfirmedPasswordChanged extends EditProfileEvent {
  const EditProfileConfirmedPasswordChanged(this.value);

  final String value;

  @override
  List<Object> get props => [value];
}

class ToggleEditProfilePasswordVisibility extends EditProfileEvent {}

class ToggleEditProfileConfirmPasswordVisibility extends EditProfileEvent {}

class EditProfileSubmitted extends EditProfileEvent {}
