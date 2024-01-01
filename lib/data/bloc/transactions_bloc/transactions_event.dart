// events.dart
import "package:equatable/equatable.dart";

abstract class TransactionsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadTransactionsEvent extends TransactionsEvent {
  LoadTransactionsEvent(this.filter);
  final String filter;

  @override
  List<Object?> get props => [filter];
}

class ClearTransactions extends TransactionsEvent {}
