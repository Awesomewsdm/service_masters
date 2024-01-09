part of "profile_bloc.dart";

abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

class ProfileInitial extends ProfileState {}

class ProfileLoading extends ProfileState {}

class ProfileSuccess extends ProfileState {
  const ProfileSuccess({
    this.message = "Profile updated successfully. Please login again.",
  });
  final String message;
}

class ProfileFailure extends ProfileState {
  const ProfileFailure({required this.error});
  final String error;
}
