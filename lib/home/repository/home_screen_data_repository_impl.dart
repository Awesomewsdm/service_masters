
import "package:service_masters/common/barrels.dart";

class HomeScreenDataRepositoryImpl implements HomeScreenDataRepository {
  HomeScreenDataRepositoryImpl();
  final FirestoreService firestoreService = FirestoreService();

  @override
  Future<List<Category>> getCategories() async {
    // final prefs = await SharedPreferences.getInstance();

    // final categoriesJson = prefs.getString("categories");
    // if (categoriesJson != null) {
    //   try {
    //     final decoded = jsonDecode(categoriesJson) as List<dynamic>;
    //     final categories = decoded
    //         .map<Category>(
    //           (dynamic data) => Category.fromJson(data as Map<String, dynamic>),
    //         )
    //         .toList();
    //     return categories;
    //   } catch (e) {
    //     return [];
    //   }
    // } else {
    try {
      final snapshot = await firestoreService.servicesCollection.get();
      final categories = snapshot.docs.map((e) {
        final data = e.data()! as Map<String, dynamic>;

        return Category.fromJson(data);
      }).toList();

      // await prefs.remove("categories");

      // await prefs.setString("categories", jsonEncode(categories));

      return categories;
    } catch (e) {
      return [];
    }
    // }
  }

  @override
  Future<List<ServiceProvider>> getServiceProviders() async {
    try {
      final serviceProviders =
          await firestoreService.serviceProvidersCollection.get();
      final serviceProviderList = <ServiceProvider>[];

      for (final serviceProvider in serviceProviders.docs) {
        final serviceProviderData =
            serviceProvider.data()! as Map<String, dynamic>;
        final reviewsSnapshot =
            await serviceProvider.reference.collection("reviews").get();
        final list = reviewsSnapshot.docs.map((e) => e.data()).toList();

        for (final item in list) {
          logger.e("Item: $item");
        }

        final reviews = reviewsSnapshot.docs
            .map((e) => ProviderReview.fromJson(e.data()))
            .toList();

        serviceProviderData["reviews"] = reviews;

        serviceProviderList.add(
          ServiceProvider.fromJson(serviceProviderData),
        );
      }
      return serviceProviderList;
    } catch (e) {
      return [];
    }
  }

  @override
  Future<List<Service>> getServices() async {
    final services = await firestoreService.servicesCollection.get();
    return services.docs
        .map((e) => Service.fromJson(e.data()! as Map<String, dynamic>))
        .toList();
  }
  
  @override
  Future<List<ProviderReview>> getProviderReviews() async{
    
     final reviewsSnapshot =
            await ;
  }
}
