import "package:service_masters/common/barrels.dart";

class HomeScreenDataRepositoryImpl implements HomeScreenDataRepository {
  HomeScreenDataRepositoryImpl();
  final FirestoreService firestoreService = FirestoreService();
  final _authenticationRepository = getIt<AuthenticationRepository>();

  @override
  Future<List<Category>> getCategories() async {
    final snapshot = await firestoreService.servicesCollection.get();
    final categories = snapshot.docs
        .map((e) => Category.fromJson(e.data()! as Map<String, dynamic>))
        .toList();
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
