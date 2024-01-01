import "package:bank_app/data/models/user/user_db.dart";
import "package:equatable/equatable.dart";

abstract class CustomerDataState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CustomerDataInitial extends CustomerDataState {}

class CustomerDataLoading extends CustomerDataState {
  CustomerDataLoading(this.loadingMessage);
  final String loadingMessage;

  @override
  List<Object?> get props => [loadingMessage];
}

class CustomerDataLoaded extends CustomerDataState {
  CustomerDataLoaded(this.userDB);
  final UserDB userDB;

  @override
  List<Object?> get props => [userDB];
}

class CustomerDataError extends CustomerDataState {
  CustomerDataError(this.error);
  final String error;

  @override
  List<Object?> get props => [error];
}
