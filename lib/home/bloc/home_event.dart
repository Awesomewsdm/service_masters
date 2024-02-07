part of "home_bloc.dart";

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initial() = _InitialEvent;
  const factory HomeEvent.loading() = _LoadingEvent;
  const factory HomeEvent.loaded({
    List<Service>? services,
    List<Category>? categories,
    List<ServiceProvider>? serviceProviders,
    List<String>? documentNames,
  }) = _LoadedEvent;
  const factory HomeEvent.failure(String errorMessage) = _FailureEvent;
}
