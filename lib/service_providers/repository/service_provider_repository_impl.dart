import "package:service_masters/common/barrels.dart";
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
  Future<List<ServiceProvider>> filterServiceProviders({
    List<String>? languagesSpoken,
    List<String>? locations,
    double? minPrice,
    double? maxPrice,
  }) {
    Query query = firestoreService.serviceProvidersCollection;

    if (languagesSpoken != null && languagesSpoken.isNotEmpty) {
      query = query.where("languages_spoken", whereIn: languagesSpoken);
    }

    if (locations != null && locations.isNotEmpty) {
      query = query.where("location", whereIn: locations);
    }

    if (minPrice != null) {
      query = query.where("price", isGreaterThanOrEqualTo: minPrice);
    }

    if (maxPrice != null) {
      query = query.where("price", isLessThanOrEqualTo: maxPrice);
    }

    return query.get().then(
          (snapshot) => snapshot.docs
              .map(
                (doc) => ServiceProvider.fromJson(
                  doc.data()! as Map<String, dynamic>,
                ),
              )
              .toList(),
        );
  }
}
