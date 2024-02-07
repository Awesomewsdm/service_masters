import "package:service_masters/common/barrels.dart";

class HomeScreenDataRepositoryImpl implements HomeScreenDataRepository {
  HomeScreenDataRepositoryImpl();
  final FirestoreService firestoreService = FirestoreService();

  @override
  Future<List<Category>> getCategories() async {
    try {
      final snapshot = await firestoreService.servicesCollection.get();
      final categories = snapshot.docs.map((e) async {
        final data = e.data()! as Map<String, dynamic>;

        final services = (data["services"] as List).map((serviceData) {
          return Service.fromJson(serviceData as Map<String, dynamic>);
        }).toList();

        data["services"] = services;

        return Category.fromJson(data);
      }).toList();
      return await Future.wait(categories);
    } catch (e) {
      logger.d("Failed to fetch categories: $e");
      return [];
    }
  }

  @override
  Future<List<ServiceProvider>> getServiceProviders() async {
    final serviceProviders =
        await firestoreService.serviceProvidersCollection.get();
    return serviceProviders.docs
        .map(
          (e) => ServiceProvider.fromJson(e.data()! as Map<String, dynamic>),
        )
        .toList();
  }

  @override
  Future<List<Service>> getServices() async {
    final services = await firestoreService.servicesCollection.get();
    return services.docs
        .map((e) => Service.fromJson(e.data()! as Map<String, dynamic>))
        .toList();
  }

  Future<List<String>> getDocumentNames() async {
    final querySnapshot = await firestoreService.servicesCollection.get();

    final documentNames = querySnapshot.docs.map((doc) => doc.id).toList();

    return documentNames;
  }
}
