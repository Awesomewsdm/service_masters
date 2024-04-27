import "package:service_masters/common/barrels.dart";

class BookServiceProviderRepository {
  final FirestoreService firestoreService = FirestoreService();

  Future<void> bookServiceProvider(
    BookServiceProvider bookServiceProvider,
  ) async {
    await firestoreService.bookingsCollection.add(bookServiceProvider.toJson());
  }
}
