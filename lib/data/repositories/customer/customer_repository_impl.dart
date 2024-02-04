import "package:service_masters/common/barrels.dart";
import "package:service_masters/data/repositories/customer/customer_repository.dart";

class CustomerRepositoryImpl implements CustomerRepository {
  final CollectionReference _usersCollection =
      FirebaseFirestore.instance.collection("customers");

  @override
  Future<void> addCustomer(Customer customer) async {
    await _usersCollection.doc().set({
      "id": customer.id,
      "firstName": customer.firstName,
      "lastName": customer.lastName,
      "email": customer.email,
      "phoneNumber": customer.phoneNumber,
    });
  }

  @override
  Future<void> deleteCustomer(int id) async {
    await _usersCollection.doc(id.toString()).delete();
  }

  @override
  Future<Customer> getCustomerById(int id) async {
    final doc = await _usersCollection.doc(id.toString()).get();
    if (doc.exists) {
      return Customer(
        id: id.toString(),
        lastName: doc["lastName"] as String,
        firstName: doc["firstName"] as String,
        phoneNumber: doc["phoneNumber"] as String,
        email: doc["email"] as String,
        profilePicture: doc[""] as String,
      );
    }
    throw Exception("Customer not found");
  }

  @override
  Future<void> updateCustomer(Customer customer) async {
    await _usersCollection.doc(customer.id).update({
      "firstName": customer.firstName,
      "lastName": customer.lastName,
      "email": customer.email,
      "profilePicture": customer.profilePicture,
      "phoneNumber": customer.phoneNumber,
    });
  }
}
