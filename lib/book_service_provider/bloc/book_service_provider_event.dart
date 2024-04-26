part of "book_service_provider_bloc.dart";

@freezed
class BookServiceProviderEvent with _$BookServiceProviderEvent {
  const factory BookServiceProviderEvent.bookServiceProvider() =
      _BookServiceProvider;
}
