import "package:service_masters/data/models/customer/customer.dart";

abstract class CustomerRepository {
  Future<Customer> getCustomerById(int id);
  Future<void> addCustomer(Customer customer);
  Future<void> updateCustomer(Customer customer);
  Future<void> deleteCustomer(int id);
}
