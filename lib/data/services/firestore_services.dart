import "package:firebase_storage/firebase_storage.dart";
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

  final CollectionReference providerReviewCollection = FirebaseFirestore
      .instance
      .collection("serviceProviders")
      .doc()
      .collection("reviews");

  final CollectionReference complaints =
      FirebaseFirestore.instance.collection("complaints");

  final CollectionReference servicesCollection =
      FirebaseFirestore.instance.collection("services");

  final FirebaseStorage storage = FirebaseStorage.instance;

  final CollectionReference chatCollection =
      FirebaseFirestore.instance.collection("chats");
}
