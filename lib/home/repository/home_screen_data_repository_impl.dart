import "package:service_masters/common/barrels.dart";

class HomeScreenDataRepositoryImpl implements HomeScreenDataRepository {
  HomeScreenDataRepositoryImpl({required this.firestoreService});
  final FirestoreService firestoreService;

  @override
  Future<List<Category>> getCategories() async {
    final categories = await firestoreService.servicesCollection.get();
    return categories.docs
        .map((e) => Category.fromJson(e.data()! as Map<String, dynamic>))
        .toList();
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
    return services.docs
        .map((e) => Service.fromJson(e.data()! as Map<String, dynamic>))
        .toList();
  }
}
