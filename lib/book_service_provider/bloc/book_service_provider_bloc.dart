import "package:service_masters/common/barrels.dart";

part "book_service_provider_bloc.freezed.dart";
part "book_service_provider_state.dart";
part "book_service_provider_event.dart";

class BookServiceProviderBloc
    extends Bloc<BookServiceProviderEvent, BookServiceProviderState> {
  BookServiceProviderBloc() : super(const BookServiceProviderState()) {
    on<_BookServiceProvider>(_onBookServiceProvider);
    on<_ServiceDescriptionChanged>(
      _onServiceDecriptionChanged,
    );
  }

  FutureOr<void> _onServiceDecriptionChanged(
    _ServiceDescriptionChanged event,
    Emitter<BookServiceProviderState> emit,
  ) {
    final serviceDescriptionChanged =
        ServiceDescription.dirty(event.description);
    emit(
      state.copyWith(
        description: serviceDescriptionChanged,
        isFormValid: Formz.validate([
          serviceDescriptionChanged,
        ]),
        errorMessage: serviceDescriptionChanged.displayError?.message ?? "",
      ),
    );
  }

  Future<void> _onBookServiceProvider(
    _BookServiceProvider event,
    Emitter<BookServiceProviderState> emit,
  ) async {
    try {
      emit(
        const BookServiceProviderState(
          status: BookServiceProviderStatus.bookingInProgress,
        ),
      );
      await BookServiceProviderService(
        BookServiceProviderRepository(),
      ).bookServiceProvider(event.bookServiceProvider);
    } catch (e) {
      emit(
        const BookServiceProviderState(
          status: BookServiceProviderStatus.bookingFailure,
        ),
      );
    }
  }
}
