part of "service_provider_bloc.dart";

@freezed
class ServiceProviderEvent with _$ServiceProviderEvent {
  factory ServiceProviderEvent.fetch() = _Fetch;
  factory ServiceProviderEvent.refresh() = _Refresh;
}
