import "package:service_masters/common/barrels.dart";
import "package:service_masters/home/repository/home_screen_data_repository_impl.dart";

part "home_bloc.freezed.dart";
part "home_event.dart";
part "home_state.dart";

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<HomeEvent>(
      _onHomeEvent,
    );
  }

  final _homeScreenDataRepository = getIt<HomeScreenDataRepositoryImpl>();
  Future<void> _onHomeEvent(
    HomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        status: HomeScreenStatus.loading,
      ),
    );
    try {
      final categories = await _homeScreenDataRepository.getCategories();
      final serviceProviders =
          await _homeScreenDataRepository.getServiceProviders();

      final services = await _homeScreenDataRepository.getServices();
      emit(
        state.copyWith(
          status: HomeScreenStatus.loaded,
          categories: categories,
          serviceProviders: serviceProviders,
          services: services,
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
