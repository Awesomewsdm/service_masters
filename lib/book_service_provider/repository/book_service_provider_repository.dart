import "dart:io";

import "package:service_masters/common/barrels.dart";
import "package:service_masters/data/services/firebase_storage_service.dart";

class BookServiceProviderRepository {
  final FirestoreService firestoreService = FirestoreService();
  final firebaseStorageService = getIt<FirebaseStorageService>();

  Future<void> bookServiceProvider(
    BookServiceProvider bookServiceProvider,
  ) async {
    await firestoreService.bookingsCollection.add(bookServiceProvider.toJson());
  }

  Future<List<String>> uploadBookingImages({
    required List<String> imageFiles,
    required String bookingId,
  }) async {
    final downloadUrls = <String>[];
    if (imageFiles.isEmpty) {
      return <String>[];
    }
    for (final imageFile in imageFiles) {
      try {
        final imageUrl = await firebaseStorageService.uploadFile(
          file: File(imageFile),
          path: "bookings/$bookingId/${imageFile.split("/").last}",
          onProgress: (double value) {},
        );
        downloadUrls.add(imageUrl);
      } on FirebaseException catch (e) {
        logger.d("Failed with error '${e.code}': ${e.message}");
      } catch (e) {
        logger.d(e);
      }
    }
    return downloadUrls;
  }

  Future<void> updateBooking(
    BookServiceProvider bookServiceProvider,
  ) async {
    await firestoreService.bookingsCollection
        .doc(bookServiceProvider.id)
        .update(bookServiceProvider.toJson());
  }

  Future<void> deleteBooking(String id) async {
    await firestoreService.bookingsCollection.doc(id).delete();
  }

  Stream<List<BookServiceProvider>> getBookingsByCustomerId(String customerId) {
    return firestoreService.bookingsCollection
        .where("customerId", isEqualTo: customerId)
        .snapshots()
        .map(
      (snapshot) {
        return snapshot.docs
            .map(
              (doc) => BookServiceProvider.fromJson(
                doc.data()! as Map<String, dynamic>,
              ),
            )
            .toList();
      },
    );
  }
}
