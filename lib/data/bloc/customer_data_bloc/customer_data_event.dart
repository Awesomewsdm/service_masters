import "package:bank_app/common/constants/exports.dart";
import "package:bank_app/data/models/user/user_db.dart";

abstract class CustomerDataEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class SaveCustomerDataEvent extends CustomerDataEvent {
  SaveCustomerDataEvent(this.userDB);
  final UserDB userDB;

  @override
  List<Object?> get props => [userDB];
}

class LoadCustomerDataEvent extends CustomerDataEvent {}

class DeleteCustomerDataEvent extends CustomerDataEvent {}

class StoreUserInfoEvent extends CustomerDataEvent {
  StoreUserInfoEvent(this.firstName, this.otherNames);
  final String firstName;
  final String otherNames;

  @override
  List<Object?> get props => [firstName, otherNames];
}
