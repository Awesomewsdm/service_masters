import "package:service_masters/common/barrels.dart";

part "book_service_provider_bloc.freezed.dart";
part "book_service_provider_state.dart";
part "book_service_provider_event.dart";

class BookServiceProviderBloc
    extends Bloc<BookServiceProviderEvent, BookServiceProviderState> {
  BookServiceProviderBloc() : super(const BookServiceProviderState()) {
    on<_BookServiceProvider>(_onBookServiceProvider);
  }

  Future<void> _onBookServiceProvider(
    _BookServiceProvider event,
    Emitter<BookServiceProviderState> emit,
  ) async {
    try {
      emit(const BookServiceProviderState(
          status: BookServiceProviderStatus.bookingInProgress));
      //  final response = await BookServiceProviderService().bookServiceProvider();
      //  if (response != null) {
      //    emit(const BookServiceProviderState(status: BookServiceProviderStatus.bookingSuccess));
      // } else {
      //    emit(const BookServiceProviderState(status: BookServiceProviderStatus.bookingFailure));
      // }
    } catch (e) {
      emit(const BookServiceProviderState(
          status: BookServiceProviderStatus.bookingFailure));
    }
  }
}
