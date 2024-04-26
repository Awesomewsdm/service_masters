part of "book_service_provider_bloc.dart";

@freezed
class BookServiceProviderState with _$BookServiceProviderState {
  const factory BookServiceProviderState({
    @Default(BookServiceProviderStatus.initial)
    BookServiceProviderStatus status,
    String? errorMessage,
  }) = _BookServiceProviderState;
}
