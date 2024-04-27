part of "book_service_provider_bloc.dart";

@freezed
class BookServiceProviderState with _$BookServiceProviderState {
  const factory BookServiceProviderState({
    @ServiceDescriptionConverter()
    @Default(ServiceDescription.pure())
    ServiceDescription description,
    @Default(BookServiceProviderStatus.initial)
    BookServiceProviderStatus status,
    String? errorMessage,
    @Default(false) bool isFormValid,
  }) = _BookServiceProviderState;
}
