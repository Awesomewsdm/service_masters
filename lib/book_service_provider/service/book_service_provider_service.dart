import "package:service_masters/common/barrels.dart";

class BookServiceProviderService {
  BookServiceProviderService(this._bookServiceProviderRepository);
  final BookServiceProviderRepository _bookServiceProviderRepository;

  Future<void> bookServiceProvider(
    BookServiceProvider bookServiceProvider,
  ) async {
    await _bookServiceProviderRepository
        .bookServiceProvider(bookServiceProvider);
  }
}
