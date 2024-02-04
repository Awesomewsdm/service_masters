part of "home_bloc.dart";

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initial() = _Initial;

  const factory HomeEvent.loading() = _Loading;

  const factory HomeEvent.loaded({
    required List<Service> services,
    required List<Category> categories,
    required List<ServiceProvider> serviceProviders,
  }) = _Loaded;

  const factory HomeEvent.failure(String errorMessage) = _Failure;
}
