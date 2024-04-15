import "package:service_masters/common/barrels.dart";

part "home_bloc.freezed.dart";
part "home_event.dart";
part "home_state.dart";

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<_FetchHomeDataEvent>(
      _onHomeLoadedEvent,
    );
    on<_ServiceProviderBookmarkedEvent>(_onServiceProviderBookmarkedEvent);
  }

  final _homeScreenDataRepository = getIt<HomeScreenDataRepositoryImpl>();
  final _authenticationRepository = getIt<AuthenticationRepository>();

  FutureOr<void> _onHomeLoadedEvent(
    _FetchHomeDataEvent event,
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
          categories: await _homeScreenDataRepository.getCategories(),
          serviceProviders:
              await _homeScreenDataRepository.getServiceProviders(),
          serviceProviderReviews:
              await _homeScreenDataRepository.getProviderReviews(
            "Pw3LPntOl76yGK1bSVl5",
          ),
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

  FutureOr<void> _onServiceProviderBookmarkedEvent(
    _ServiceProviderBookmarkedEvent event,
    Emitter<HomeState> state,
  ) async {}

// FutureOr<void> _onServiceProviderBookmarkedEvent(
//     _ServiceProviderBookmarkedEvent event,
//     Emitter<HomeState> emit,
//   ) async {
//     emit(
//       state.copyWith(
//         status: HomeScreenStatus.loading,
//       ),
//     );
//     try {
//       await _homeScreenDataRepository.getProviderReviews(

//       );
//       emit(
//         state.copyWith(
//           status: HomeScreenStatus.loaded,
//         ),
//       );
//     } on Exception {
//       emit(
//         state.copyWith(
//           status: HomeScreenStatus.failure,
//         ),
//       );
//     }
//   }
}
