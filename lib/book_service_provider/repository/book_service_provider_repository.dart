import "dart:io";
import "package:service_masters/common/barrels.dart";

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
}
