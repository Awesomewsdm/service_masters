import "package:service_masters/common/models/service_provider/service_provider.model.dart";
import "package:service_masters/data/services/firestore_services.dart";
import "package:service_masters/service_providers/repository/service_provider_repository.dart";

class ServiceProviderRepositoryImpl extends ServiceProviderRepository {
  final FirestoreService firestoreService = FirestoreService();

  @override
  Future<List<ServiceProvider>> fetchServiceProviders(
    String serviceId,
  ) async {
    final serviceProviders = await firestoreService.serviceProvidersCollection
        .where("service_id", isEqualTo: serviceId)
        .get();
    return serviceProviders.docs
        .map(
          (e) => ServiceProvider.fromJson(e.data()! as Map<String, dynamic>),
        )
        .toList();
  }

  @override
  Stream<List<ServiceProvider>> getFilteredServiceProviders(
      String? category, String? location, double? minPrice, double? maxPrice) {
    Query query = _firestore.collection('serviceProviders');

    if (category != null) {
      query = query.where('category', isEqualTo: category);
    }

    if (location != null) {
      query = query.where('location', isEqualTo: location);
    }

    if (minPrice != null) {
      query = query.where('price', isGreaterThanOrEqualTo: minPrice);
    }

    if (maxPrice != null) {
      query = query.where('price', isLessThanOrEqualTo: maxPrice);
    }

    return query.snapshots().map((snapshot) => snapshot.docs
        .map((doc) => ServiceProvider.fromFirestore(doc.data()))
        .toList());
  }
}
