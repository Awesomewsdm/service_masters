part of "service_provider_bloc.dart";

@freezed
class ServiceProviderState with _$ServiceProviderState {
  const factory ServiceProviderState({
    @Default(ServiceProviderStatus.initial) ServiceProviderStatus status,
    @Default([]) List<ServiceProvider> serviceProviders,
    String? failureMessage,
  }) = _ServiceProviderState;
}
