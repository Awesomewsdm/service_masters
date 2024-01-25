import "package:service_masters/data/models/customer/customer.dart";

abstract class CustomerRepository {
  Customer? _user;

  void addUser(Customer user) {
    _user = user;
  }

  Customer? getUser() {
    return _user;
  }

  void updateUser(Customer updatedUser) {
    _user = updatedUser;
  }

  void deleteUser(int id) {
    _user = null;
  }
}
