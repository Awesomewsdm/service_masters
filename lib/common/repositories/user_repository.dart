import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:home_service_app/common/blocs/models/user_model.dart';

class UserRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<List<UserModel>> getAllUsers() async {
    final QuerySnapshot snapshot = await _firestore.collection('users').get();
    return snapshot.docs
        .map(
          (doc) => UserModel(
            username: doc[''] as String,
            password: doc[''] as String,
            fullName: doc[''] as String,
            email: doc[''] as String,
            userID: doc[''] as String,
          ),
        )
        .toList();
  }

  Future<UserModel?> getUserById(String id) async {
    final DocumentSnapshot doc =
        await _firestore.collection('users').doc(id).get();
    if (doc.exists) {
      return UserModel(
        username: doc[''] as String,
        password: doc[''] as String,
        fullName: doc[''] as String,
        email: doc[''] as String,
        userID: doc[''] as String,
      );
    }
    return null;
  }

  Future<void> addUser(UserModel user) async {
    await _firestore.collection('users').doc(user.userID).set({
      'name': user.username,
      'id': user.userID,
    });
  }

  Future<void> updateUser(UserModel user) async {
    await _firestore.collection('users').doc(user.userID).update({
      'name': user.username,
      'age': user.userID,
    });
  }

  Future<void> deleteUser(String id) async {
    await _firestore.collection('users').doc(id).delete();
  }

  Future<UserModel?> getCurrentUser() async {
    final user = _auth.currentUser;
    if (user != null) {
      final userDocument =
          await _firestore.collection('users').doc(user.uid).get();
      if (userDocument.exists) {
        return UserModel(
          username: userDocument['name'] as String,
          password: userDocument['password'] as String,
          fullName: userDocument['fullName'] as String,
          email: userDocument['email'] as String,
          userID: userDocument['userID'] as String,
        );
      }
    }
    return null;
  }

  Future<bool> isUserSignedIn() async {
    final user = _auth.currentUser;
    return user != null;
  }

  Future<void> signOut() async {
    final user = _auth.currentUser;
    await user!.delete();
  }
}
