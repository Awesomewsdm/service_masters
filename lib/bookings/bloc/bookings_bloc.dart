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

  FutureOr<void> _onGetBookings(
    _GetBookings event,
    Emitter<BookingsState> emit,
  ) async {
    emit(const BookingsState.loading());
// 102.176.75.174/32
    try {
      await _bookingsSubscription!.cancel();
      _bookingsSubscription =
          bookingsRepository.getBookings(event.customerId).listen(
        (bookings) {
          emit(BookingsState.loaded(bookings: bookings));
        },
        onError: (e) {
          emit(BookingsState.failure(errorMessage: e.toString()));
          logger.e(e.toString());
        },
      );
    } catch (e) {
      emit(BookingsState.failure(errorMessage: e.toString()));
    }
  }

  @override
  Future<void> close() {
    _bookingsSubscription!.cancel();
    return super.close();
  }
}
