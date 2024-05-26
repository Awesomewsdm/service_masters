import "package:service_masters/common/barrels.dart";

part "bookings_state.dart";
part "bookings_event.dart";
part "bookings_bloc.freezed.dart";

class BookingsBloc extends Bloc<BookingsEvent, BookingsState> {
  BookingsBloc() : super(const BookingsState.initial()) {
    on<_GetBookings>(_onGetBookings);
  }

  final _bookingsRepository = getIt<BookingsRepository>();
  late StreamSubscription<List<BookServiceProvider>> _bookingsSubscription;

  Future<void> _onGetBookings(
    _GetBookings event,
    Emitter<BookingsState> emit,
  ) async {
    emit(const BookingsState.loading());
    return emit.forEach(
      _bookingsRepository.getBookings(event.customerId),
      onData: (bookings) {
        if (bookings.isEmpty) {
          return const BookingsState.empty();
        } else {
          return BookingsState.loaded(bookings: bookings);
        }
      },
      onError: (error, stackTrace) => BookingsState.failure(
        errorMessage: error.toString(),
      ),
    );
  }

  @override
  Future<void> close() {
    _bookingsSubscription.cancel();
    return super.close();
  }
}
