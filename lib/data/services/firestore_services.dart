import "package:service_masters/common/barrels.dart";

class FirestoreService {
  factory FirestoreService() {
    return _singleton;
  }

  FirestoreService._internal();
  static final FirestoreService _singleton = FirestoreService._internal();

  final CollectionReference customersCollection =
      FirebaseFirestore.instance.collection("customers");

  final CollectionReference serviceProvidersCollection =
      FirebaseFirestore.instance.collection("serviceProviders");

  final CollectionReference complaints =
      FirebaseFirestore.instance.collection("complaints");

  final CollectionReference servicesCollection =
      FirebaseFirestore.instance.collection("services");

  final CollectionReference chatCollection =
      FirebaseFirestore.instance.collection("chats");

  final CollectionReference messagesCollection = FirebaseFirestore.instance
      .collection("chats")
      .doc()
      .collection("messages");

  final CollectionReference bookingsCollection =
      FirebaseFirestore.instance.collection("bookings");
}
