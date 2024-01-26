import "package:service_masters/common/barrels.dart";

part "app_event.dart";
part "app_state.dart";

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({required AuthenticationRepository authenticationRepository})
      : _authenticationRepository = authenticationRepository,
        super(
          authenticationRepository.currentCustomer.isNotEmpty
              ? AppState.authenticated(authenticationRepository.currentCustomer)
              : const AppState.unauthenticated(),
        ) {
    on<_AppUserChanged>(_onUserChanged);
    on<AppLogoutRequested>(_onLogoutRequested);
    _userSubscription = _authenticationRepository.customer.listen(
      (cutomer) => add(_AppUserChanged(cutomer)),
    );
  }

  final AuthenticationRepository _authenticationRepository;
  late final StreamSubscription<Customer> _userSubscription;

  void _onUserChanged(_AppUserChanged event, Emitter<AppState> emit) {
    emit(
      event.user.isNotEmpty
          ? AppState.authenticated(event.user)
          : const AppState.unauthenticated(),
    );
  }

  void _onLogoutRequested(AppLogoutRequested event, Emitter<AppState> emit) {
    logger.d("Current customer: ${_authenticationRepository.currentCustomer}");
    unawaited(_authenticationRepository.logOut());
    emit(const AppState.unauthenticated());
    logger.d("Current customer: ${_authenticationRepository.currentCustomer}");
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
