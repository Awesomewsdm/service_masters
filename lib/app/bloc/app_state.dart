part of "app_bloc.dart";

enum AppStatus {
  authenticated,
  unauthenticated,
}

final class AppState extends Equatable {
  const AppState._({
    required this.status,
    this.user = Customer.empty,
  });

  const AppState.authenticated(Customer user)
      : this._(status: AppStatus.authenticated, user: user);

  const AppState.unauthenticated() : this._(status: AppStatus.unauthenticated);

  final AppStatus status;
  final Customer user;

  @override
  List<Object> get props => [status, user];
}
