part of "app_bloc.dart";

enum AppStatus {
  authenticated,
  unauthenticated,
}

final class AppState extends Equatable {
  const AppState._({
    required this.status,
    this.customer = Customer.empty,
  });

  const AppState.authenticated(Customer user)
      : this._(status: AppStatus.authenticated, customer: user);

  const AppState.unauthenticated() : this._(status: AppStatus.unauthenticated);

  final AppStatus status;
  final Customer customer;

  @override
  List<Object> get props => [status, customer];
}
