import "package:service_masters/common/barrels.dart";

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class FetchUsers extends UserEvent {}

class UpdateUser extends UserEvent {
  const UpdateUser(this.user);
  final UsersModel user;

  @override
  List<Object> get props => [user];
}
