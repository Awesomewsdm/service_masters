import "dart:convert";

import "package:service_masters/common/barrels.dart";
import "package:shared_preferences/shared_preferences.dart";

class HomeScreenDataRepositoryImpl implements HomeScreenDataRepository {
  HomeScreenDataRepositoryImpl();
  final FirestoreService firestoreService = FirestoreService();

  @override
  Future<List<Category>> getCategories() async {
    final prefs = await SharedPreferences.getInstance();

    final categoriesJson = prefs.getString("categories");
    if (categoriesJson != null) {
      try {
        final decoded = jsonDecode(categoriesJson) as List<dynamic>;
        final categories = decoded
            .map<Category>(
              (dynamic data) => Category.fromJson(data as Map<String, dynamic>),
            )
            .toList();
        return categories;
      } catch (e) {
        return [];
      }
    } else {
      try {
        final snapshot = await firestoreService.servicesCollection.get();
        final categories = snapshot.docs.map((e) {
          final data = e.data()! as Map<String, dynamic>;

          return Category.fromJson(data);
        }).toList();

        await prefs.remove("categories");

        await prefs.setString("categories", jsonEncode(categories));

        return categories;
      } catch (e) {
        return [];
      }
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
}
