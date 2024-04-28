part of "book_service_provider_bloc.dart";

@freezed
class BookServiceProviderState with _$BookServiceProviderState {
  const factory BookServiceProviderState({
    @ServiceDescriptionConverter()
    @Default(ServiceDescription.pure())
    ServiceDescription description,
    @ServiceDateConverter() @Default(null) DateTime date,
    @ServiceTimeConverter() @Default(null) String time,
    @Default(BookServiceProviderStatus.initial)
    BookServiceProviderStatus status,
    String? errorMessage,
    @Default(false) bool isFormValid,
  }) = _BookServiceProviderState;
}
