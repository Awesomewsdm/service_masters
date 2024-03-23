import "dart:developer";

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
    final serviceProviders =
        await firestoreService.serviceProvidersCollection.get();
    final serviceProviderList = <ServiceProvider>[];

    for (final serviceProvider in serviceProviders.docs) {
      logger.d(serviceProvider.data());
      final serviceProviderData =
          serviceProvider.data()! as Map<String, dynamic>;
      final reviewsSnapshot =
          await serviceProvider.reference.collection("reviews").get();

      final reviews = reviewsSnapshot.docs
          .map((e) => ProviderReview.fromJson(e.data()))
          .toList();

      logger
        ..e("Reviews")
        ..d(reviews)
        ..e("Service Provider Data")
        ..d(serviceProviderData["reviews"]);

      serviceProviderData["reviews"] = reviews;

      logger
        ..e("Service Provider Data After Reviews")
        ..d(serviceProviderData["reviews"]);

      serviceProviderList.add(ServiceProvider.fromJson(serviceProviderData));
    }

    logger.d(serviceProviderList);

    return serviceProviderList;
  }

  @override
  Future<List<Service>> getServices() async {
    final services = await firestoreService.servicesCollection.get();
    return services.docs
        .map((e) => Service.fromJson(e.data()! as Map<String, dynamic>))
        .toList();
  }
}
