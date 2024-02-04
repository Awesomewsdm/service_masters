import "package:service_masters/common/barrels.dart";
import "package:service_masters/data/models/service/service.model.dart";

class ServicesRepository {
  final FirestoreService _firestoreService = FirestoreService();

  Future<List<Service>> getAllServices() async {
    try {
      final snapshot = await _firestoreService.servicesCollection.get();

      final services = snapshot.docs
          .map<Service>(
            (QueryDocumentSnapshot<Object?> doc) =>
                Service.fromJson(doc.data()! as Map<String, dynamic>),
          )
          .toList();

      return services;
    } catch (error) {
      // Handle errors, log them, or rethrow as needed
      logger.d("Error fetching services: $error");
      // Rethrow the error or return an empty list, depending on your use case
      rethrow;
      // return []; // Uncomment this line if you want to return an empty list on error
    }
  }
}
