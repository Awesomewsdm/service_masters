import "package:service_masters/bookings/repository/bookings_repository.dart";
import "package:service_masters/common/barrels.dart";

part "bookings_state.dart";
part "bookings_event.dart";
part "bookings_bloc.freezed.dart";

class BookingsBloc extends Bloc<BookingsEvent, BookingsState> {
  BookingsBloc() : super(const BookingsState.initial()) {
    on<_GetBookings>(_onGetBookings);
  }

  final bookingsRepository = getIt<BookingsRepository>();
  StreamSubscription<List<BookServiceProvider>>? _bookingsSubscription;
  Future<void> _onGetBookings(
    _GetBookings event,
    Emitter<BookingsState> emit,
  ) async {
    emit(const BookingsState.loading());
    logger.i("Starting _onGetBookings");
    if (emit.isDone) {
      logger.i("Bloc is closed, not starting new operation");
      return;
    }
    try {
      await _bookingsSubscription?.cancel();
      logger.e("Cancelled previous subscription");

      _bookingsSubscription =
          bookingsRepository.getBookings(event.customerId).listen(
        (bookings) {
          logger.d("Received bookings: $bookings");
          if (!emit.isDone) {
            emit(BookingsState.loaded(bookings: bookings));
            logger.d("Emitted loaded state");
          } else {
            logger.d("Bloc is closed");
          }
        },
        onError: (Object e) {
          logger.e("Error while listening to bookings: $e");
          if (!emit.isDone) {
            emit(BookingsState.failure(errorMessage: e.toString()));
            logger
              ..e("Emitted failure state")
              ..e(e.toString());
          } else {}
        },
      );
    } catch (e) {
      logger.e("Error during setup: $e");
      if (!emit.isDone) {
        emit(BookingsState.failure(errorMessage: e.toString()));
        logger
          ..e("Emitted failure state")
          ..e(e.toString());
      }
    }
  }

  @override
  Future<void> close() {
    _bookingsSubscription!.cancel();
    return super.close();
  }
}
