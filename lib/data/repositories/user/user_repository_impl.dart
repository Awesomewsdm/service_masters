
import "package:service_masters/common/barrels.dart";
import "package:service_masters/data/models/user/user.dart";

class UserRepositoryImpl implements UserRepository {
  final CollectionReference _usersCollection =
      FirebaseFirestore.instance.collection("users");

  @override
  Future<User> getUserById(int id) async {
    final snapshot = await _usersCollection.doc(id.toString()).get();
    if (snapshot.exists) {
      return User.fromMap(snapshot.data());
    } else {
      throw Exception("User not found");
    }
  }


  @override
  Future<void> addUser(User user) async {
    await _usersCollection.doc(user.id).set(user.());
  }

  @override
  Future<void> updateUser(User user) async {
    await _usersCollection.doc(user.id).update(user.toMap());
  }

  Future<void> delete(int id) async {
    await _usersCollection.doc(id.toString()).delete();
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
