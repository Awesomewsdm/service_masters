import "package:service_masters/common/barrels.dart";

abstract class HomeScreenDataRepository {
  HomeScreenDataRepository();

  Future<List<Category>> getCategories();
  Future<List<Customer>> getCustomers();
  Future<List<ServiceProvider>> getServiceProviders();
  Future<List<Service>> getServices();
}
