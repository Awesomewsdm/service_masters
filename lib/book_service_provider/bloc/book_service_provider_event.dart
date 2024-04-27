part of "book_service_provider_bloc.dart";

@freezed
class BookServiceProviderEvent with _$BookServiceProviderEvent {
  const factory BookServiceProviderEvent.bookServiceProvider(
    BookServiceProvider bookServiceProvider,
  ) = _BookServiceProvider;
  const factory BookServiceProviderEvent.serviceDescription(
    String description,
  ) = _ServiceDescriptionChanged;
  const factory BookServiceProviderEvent.serviceDate(
    DateTime date,
  ) = _ServiceDateChanged;
  const factory BookServiceProviderEvent.serviceTime(
    String time,
  ) = _ServiceTimeChanged;
}
