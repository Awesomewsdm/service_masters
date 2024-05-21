part of "bookings_bloc.dart";

@freezed
class BookingsState with _$BookingsState {
  const factory BookingsState.initial() = _Initial;
  const factory BookingsState.loading() = _Loading;
  const factory BookingsState.loaded({
    required List<BookServiceProvider> bookings,
  }) = _Loaded;
  const factory BookingsState.empty() = _Empty;
  const factory BookingsState.failure({
    required String errorMessage,
  }) = _Failure;
}
