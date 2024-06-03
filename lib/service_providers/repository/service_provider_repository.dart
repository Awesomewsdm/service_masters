import "package:service_masters/common/models/service_provider/service_provider.model.dart";

abstract class ServiceProviderRepository {
  Future<List<ServiceProvider>> fetchServiceProviders(
    String serviceId,
  );

  Future<List<ServiceProvider>> filterServiceProviders({
    List<String>? languagesSpoken,
    List<String>? locations,
    double? minPrice,
    double? maxPrice,
  });
}
