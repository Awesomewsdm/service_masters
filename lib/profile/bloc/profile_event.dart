part of "profile_bloc.dart";

abstract class ProfileEvent extends Equatable {
  const ProfileEvent();

  @override
  List<Object> get props => [];
}

class ProfileInitialize extends ProfileEvent {
  const ProfileInitialize();
}

class ProfileStatusChanged extends ProfileEvent {
  const ProfileStatusChanged(this.isLoggedIn);
  final bool isLoggedIn;
}

class ProfileSignOut extends ProfileEvent {
  const ProfileSignOut();
}

class ProfileUpdate extends ProfileEvent {
  const ProfileUpdate({
    required this.name,
    required this.email,
    required this.password,
  });
  final String name;
  final String email;
  final String password;
}

class ProfileDelete extends ProfileEvent {
  const ProfileDelete();
}
