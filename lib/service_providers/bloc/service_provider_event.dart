part of "service_provider_bloc.dart";

@freezed
class ServiceProviderEvent with _$ServiceProviderEvent {
  const factory ServiceProviderEvent.fetch(String serviceId) = _Fetch;
  factory ServiceProviderEvent.refresh(String serviceId) = _Refresh;
}
