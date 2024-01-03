
// class DatabaseService {
//   final FirebaseFirestore _db = FirebaseFirestore.instance;

//   Future<void> addUserData(User userData) async {
//     await _db.collection("customer").doc(userData.uid).set(userData.toMap());
//   }

//   Future<List<User>> retrieveUserData() async {
//     final snapshot = await _db.collection("customer").get();
//     return snapshot.docs.map(User.fromDocumentSnapshot).toList();
//   }

//   Future<String> retrieveUserName(User user) async {
//     final snapshot = await _db.collection("cutomer").doc(user.uid).get();
//     return snapshot.data()!["customer"].toString();
//   }
// }
