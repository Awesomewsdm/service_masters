import "package:service_masters/common/barrels.dart";

abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UsersLoaded extends UserState {
  const UsersLoaded(this.users);
  final List<UsersModel> users;

  @override
  List<Object> get props => [users];
}

class UserUpdated extends UserState {
  const UserUpdated(this.user);
  final UsersModel user;

  @override
  List<Object> get props => [user];
}

class UserError extends UserState {
  const UserError({required this.message});
  final String message;

  @override
  List<Object> get props => [message];
}
