part of "book_service_provider_bloc.dart";

@freezed
class BookServiceProviderState with _$BookServiceProviderState {
  const factory BookServiceProviderState({
    @ServiceDescriptionConverter()
    @Default(ServiceDescription.pure())
    ServiceDescription description,
    @ServiceDateConverter() @Default(ServiceDate.pure()) ServiceDate date,
    @ServiceTimeConverter() @Default(ServiceTime.pure()) ServiceTime time,
    @CustomerAddressConverter()
    @Default(CustomerAddress.pure())
    CustomerAddress address,
    @Default(BookServiceProviderStatus.initial)
    BookServiceProviderStatus status,
    String? errorMessage,
    @Default(false) bool isFormValid,
  }) = _BookServiceProviderState;
}
