import "package:service_masters/common/barrels.dart";

abstract class HomeScreenDataRepository {
  HomeScreenDataRepository();

  Future<List<Category>> getCategories();
  Future<List<ServiceProvider>> getServiceProviders();
  Future<List<Service>> getServices();
  Future<List<ServiceProviderReview>> getProviderReviews(String id);
}
