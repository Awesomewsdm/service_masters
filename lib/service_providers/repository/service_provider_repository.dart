import "package:service_masters/data/models/service_provider/service_provider.model.dart";

abstract class ServiceProviderRepository {
  ServiceProviderRepository();
  Future<List<ServiceProvider>> fetchServiceProviders(
    String serviceId,
  );
}
