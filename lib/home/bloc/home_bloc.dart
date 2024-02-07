import "package:logger/logger.dart";
import "package:service_masters/common/barrels.dart";
import "package:service_masters/home/repository/home_screen_data_repository_impl.dart";

part "home_bloc.freezed.dart";
part "home_event.dart";
part "home_state.dart";

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<HomeEvent>(
      _onHomeLoadedEvent,
    );
  }

  final _homeScreenDataRepository = getIt<HomeScreenDataRepositoryImpl>();
  final _authenticationRepository = getIt<AuthenticationRepository>();

  Future<void> _onHomeLoadedEvent(
    HomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    logger.d("Emitting home loading");

    emit(
      state.copyWith(
        status: HomeScreenStatus.loading,
      ),
    );
    logger.d("Emitted home loading");
    try {
      final categories = await _homeScreenDataRepository.getCategories();
      final serviceProviders =
          await _homeScreenDataRepository.getServiceProviders();

      final services = await _homeScreenDataRepository.getServices();
      final customerFirstName = _authenticationRepository.currentCustomer.email;
      logger.d("getting data");
      emit(
        state.copyWith(
          categories: categories,
          serviceProviders: serviceProviders,
          services: services,
          customerName: customerFirstName,
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
