import "package:service_masters/common/barrels.dart";

class HomeScreenDataRepositoryImpl implements HomeScreenDataRepository {
  HomeScreenDataRepositoryImpl();
  final FirestoreService firestoreService = FirestoreService();

  @override
  Future<List<Category>> getCategories() async {
    try {
      final snapshot = await firestoreService.servicesCollection.get();
      final categories = snapshot.docs.map((e) {
        final data = e.data()! as Map<String, dynamic>;
        data["id"] = e.id;

        return Category.fromJson(data);
      }).toList();
      return categories;
    } catch (e) {
      logger.d("Failed to fetch categories: $e");
      return [];
    }
  }

  @override
  Future<List<Customer>> getCustomers() async {
    final customers = await firestoreService.customersCollection.get();
    return customers.docs
        .map(
          (e) => Customer.fromJson(e.data()! as Map<String, dynamic>),
        )
        .toList();
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
