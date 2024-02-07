import "package:service_masters/common/barrels.dart";

part "home_bloc.freezed.dart";
part "home_event.dart";
part "home_state.dart";

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<_LoadedEvent>(
      _onHomeLoadedEvent,
    );
  }

  final _homeScreenDataRepository = getIt<HomeScreenDataRepositoryImpl>();
  final _authenticationRepository = getIt<AuthenticationRepository>();

  Future<void> _onHomeLoadedEvent(
    _LoadedEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        status: HomeScreenStatus.loading,
      ),
    );
    try {
      emit(
        state.copyWith(
          customerName: _authenticationRepository.currentCustomer.firstName,
          // categories: await _homeScreenDataRepository.getCategories(),
        ),
      );
    } on Exception {
      emit(state.copyWith(status: HomeScreenStatus.failure));
    }
    emit(
      state.copyWith(
        status: HomeScreenStatus.loaded,
      ),
    );
  }
}
