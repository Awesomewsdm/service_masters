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

// class UserRepository {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   final FirebaseAuth _auth = FirebaseAuth.instance;


//   Future<UsersModel?> getUserById(String id) async {
//     final DocumentSnapshot doc =
//         await _firestore.collection("users").doc(id).get();
//     if (doc.exists) {
//       return UsersModel(
//         username: doc[""] as String,
//         password: doc[""] as String,
//         fullName: doc[""] as String,
//         email: doc[""] as String,
//         userID: doc[""] as String,
//       );
//     }
//     return null;
//   }

//   Future<void> addUser(UsersModel user) async {
//     await _firestore.collection("users").doc(user.userID).set({
//       "name": user.username,
//       "id": user.userID,
//     });
//   }

//   Future<void> updateUser(UsersModel user) async {
//     await _firestore.collection("users").doc(user.userID).update({
//       "name": user.username,
//       "age": user.userID,
//     });
//   }

//   Future<void> deleteUser(String id) async {
//     await _firestore.collection("users").doc(id).delete();
//   }

//   Future<UsersModel?> getCurrentUser() async {
//     final user = _auth.currentUser;
//     if (user != null) {
//       final userDocument =
//           await _firestore.collection("users").doc(user.uid).get();
//       if (userDocument.exists) {
//         return UsersModel(
//           username: userDocument["name"] as String,
//           password: userDocument["password"] as String,
//           fullName: userDocument["fullName"] as String,
//           email: userDocument["email"] as String,
//           userID: userDocument["userID"] as String,
//         );
//       }
//     }
//     return null;
//   }

//   Future<bool> isUserSignedIn() async {
//     final user = _auth.currentUser;
//     return user != null;
//   }

//   Future<void> signOut() async {
//     final user = _auth.currentUser;
//     await user!.delete();
//   }
// }
