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

  final servicesCollection = FirebaseFirestore.instance
      .collection("services")
      .doc("services")
      .collection("services");
}
