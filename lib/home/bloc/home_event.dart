part of "home_bloc.dart";

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initial() = _InitialEvent;
  const factory HomeEvent.loading() = _LoadingEvent;
  const factory HomeEvent.loaded({
    required List<Service> services,
    required List<Category> categories,
    required List<ServiceProvider> serviceProviders,
    required List<String> documentNames,
  }) = _LoadedEvent;
  const factory HomeEvent.failure(String errorMessage) = _FailureEvent;
}
