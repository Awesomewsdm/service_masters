part of "service_provider_bloc.dart";

@freezed
class ServiceProviderEvent with _$ServiceProviderEvent {
  const factory ServiceProviderEvent.fetch(String serviceId) = _Fetch;
  const factory ServiceProviderEvent.filterServiceProviders(
    String ratingNumber,
    double price,
    String location,
    @JsonKey(name: "languages_spoken") List<String>? languagesSpoken,
  ) = _FilterServiceProviders;
}
