import "package:service_masters/data/models/service_provider/service_provider.model.dart";
import "package:service_masters/data/services/firestore_services.dart";
import "package:service_masters/service_providers/repository/service_provider_repository.dart";

class ServiceProviderRepositoryImpl extends ServiceProviderRepository {
  final FirestoreService firestoreService = FirestoreService();

  @override
  Future<List<ServiceProvider>> fetchServiceProviders(
    String serviceId,
  ) async {
    final serviceProviders = await firestoreService.serviceProvidersCollection
        .where(serviceId)
        .get();
    return serviceProviders.docs
        .map(
          (e) => ServiceProvider.fromJson(e.data()! as Map<String, dynamic>),
        )
        .toList();
  }
}
