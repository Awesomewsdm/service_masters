part of "book_service_provider_bloc.dart";

@freezed
class BookServiceProviderState with _$BookServiceProviderState {
  const factory BookServiceProviderState.initial() = _Initial;
  const factory BookServiceProviderState.loadInProgress() = _LoadInProgress;
}
