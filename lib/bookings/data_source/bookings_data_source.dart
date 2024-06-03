import "package:service_masters/book_service_provider/model/book_service_provider.dart";

abstract class BookingsDataSource {
  Stream<List<BookServiceProvider>> getBookings(String customerId);
  Future<void> addBooking(BookServiceProvider booking);
  Future<void> deleteBooking(BookServiceProvider booking);
  Future<void> updateBooking(BookServiceProvider booking);
}
