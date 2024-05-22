import "package:service_masters/common/barrels.dart";

typedef BookingsRecord = ({
  BookServiceProvider bookServiceProvider,
  ServiceProvider serviceProvider
});

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

class BookingsService {
  final bookingsRepository = getIt<BookingsRepository>();

  Stream<List<dynamic>> getBookings(String customerId) {
    final bookingsStream =
        bookingsRepository.getBookings(customerId).asBroadcastStream();

    return bookingsStream.switchMap((bookings) {
      // Get the serviceIds from the bookings
      final List<String> serviceIds =
          bookings.map((booking) => booking.serviceId).toList();

      // Use the serviceIds to get the service providers
      final List<Stream<List<ServiceProvider>>> serviceProviderStreams =
          serviceIds
              .map(
                serviceProviderRepositoryImpl.getServiceProviders,
              )
              .toList();

      // Merge the service provider streams into one
      final Stream<List<ServiceProvider>> mergedServiceProviderStream =
          StreamGroup.merge(serviceProviderStreams);

      return Rx.combineLatest2(
        Stream.value(bookings),
        mergedServiceProviderStream,
        (
          List<BookServiceProvider> bookings,
          List<ServiceProvider> serviceProviders,
        ) {
          return [bookings, serviceProviders];
        },
      );
    });
  }
}
