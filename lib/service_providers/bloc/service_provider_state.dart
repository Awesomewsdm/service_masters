part of "service_provider_bloc.dart";

@freezed
class ServiceProviderState with _$ServiceProviderState {
  const factory ServiceProviderState.initial() = _Initial;

  const factory ServiceProviderState.loading() = _Loading;
  const factory ServiceProviderState.success({
    @Default([]) List<ServiceProvider> serviceProviders,
  }) = _Success;
  const factory ServiceProviderState.failure() = _Failure;
  const factory ServiceProviderState.empty() = _Empty;
}
