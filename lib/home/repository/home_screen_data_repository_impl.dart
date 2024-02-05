import "package:service_masters/common/barrels.dart";

class HomeScreenDataRepositoryImpl implements HomeScreenDataRepository {
  HomeScreenDataRepositoryImpl();
  final FirestoreService firestoreService = FirestoreService();

  @override
  Future<List<Category>> getCategories() async {
    final snapshot = await firestoreService.servicesCollection.get();
    final categories =
        snapshot.docs.map((e) => Category.fromJson(e.data())).toList();
    return categories;
  }

  @override
  Future<List<Customer>> getCustomers() async {
    final customers = await firestoreService.customersCollection.get();
    return customers.docs
        .map((e) => Customer.fromJson(e.data()! as Map<String, dynamic>))
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
    return services.docs.map((e) => Service.fromJson(e.data())).toList();
  }
}