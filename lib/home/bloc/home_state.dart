part of "home_bloc.dart";

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<Service> services,
    @Default([]) List<Category> categories,
    @Default([]) List<ServiceProvider> serviceProviders,
    @Default(HomeScreenStatus.initial) HomeScreenStatus status,
    String? errorMessage,
  }) = _Loaded;
}

enum HomeScreenStatus {
  initial,
  loading,
  loaded,
  failure,
}
