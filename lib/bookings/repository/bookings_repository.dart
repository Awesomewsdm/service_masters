import "package:service_masters/bookings/data_source/bookings_data_source.dart";
import "package:service_masters/common/barrels.dart";

class BookingsRepository implements BookingsDataSource {
  BookingsRepository();

  final firestoreService = getIt<FirestoreService>();
  final customerId = getIt<AuthenticationRepository>().currentCustomer.id;

  @override
  Stream<List<BookServiceProvider>> getBookings(String customerId) {
    try {
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
    } catch (e) {
      logger.d("Error fetching bookings: $e");
      rethrow;
    }
  }

  @override
  Future<void> addBooking(BookServiceProvider booking) async {
    // return _bookingsDataSource.addBooking(booking);
  }

  @override
  Future<void> updateBooking(
    BookServiceProvider bookServiceProvider,
  ) async {
    // await firestoreService.bookingsCollection
    //     .doc(bookServiceProvider.id)
    //     .update(bookServiceProvider.toJson());
  }

  @override
  Future<void> deleteBooking(BookServiceProvider booking) async {
    await firestoreService.bookingsCollection.doc().delete();
  }
}
