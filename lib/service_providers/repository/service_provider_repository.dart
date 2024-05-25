import "package:service_masters/common/models/service_provider/service_provider.model.dart";

abstract class ServiceProviderRepository {
  ServiceProviderRepository();
  Future<List<ServiceProvider>> fetchServiceProviders(
    String serviceId,
  );

  Stream<List<ServiceProvider>> filterServiceProviders({
    List<String>? languagesSpoken,
    List<String>? locations,
    double? minPrice,
    double? maxPrice,
  });
}
