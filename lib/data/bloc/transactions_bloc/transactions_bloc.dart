import "dart:async";

import "package:bank_app/data/bloc/transactions_bloc/transactions_event.dart";
import "package:bank_app/data/bloc/transactions_bloc/transactions_state.dart";
import "package:bank_app/data/repositories/customer_transaction_repository.dart";
import "package:bloc_concurrency/bloc_concurrency.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class TransactionsBloc extends Bloc<TransactionsEvent, TransactionsState> {
  TransactionsBloc() : super(TransactionsInitial()) {
    on<LoadTransactionsEvent>(
      _onLoadTransactions,
      transformer: sequential(),
    );
  }
  final TransactionRepository transactionRepository = TransactionRepository();

  FutureOr<void> _onLoadTransactions(
    LoadTransactionsEvent event,
    Emitter<TransactionsState> emit,
  ) async {
    emit(TransactionsLoading());
    try {
      final transactions =
          await transactionRepository.loadTransactionData(event.filter);
      emit(
        TransactionsLoaded(transactions),
      );
    } catch (e) {
      emit(
        TransactionsError("Error loading transactions: $e"),
      );
    }
  }
}
