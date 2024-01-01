import "package:bank_app/common/constants/exports.dart";
import "package:fast_immutable_collections/fast_immutable_collections.dart";

abstract class TransactionsState extends Equatable {
  @override
  List<Object?> get props => [];
}

class TransactionsInitial extends TransactionsState {}

class TransactionsLoading extends TransactionsState {}

class TransactionsLoaded extends TransactionsState {
  TransactionsLoaded(this.transactions);
  final IList<CustomerTransactionData> transactions;

  @override
  List<Object?> get props => [transactions];
}

class TransactionsError extends TransactionsState {
  TransactionsError(this.error);
  final String error;

  @override
  List<Object?> get props => [error];
}

class TransactionsAlreadyLoaded extends TransactionsState {}
