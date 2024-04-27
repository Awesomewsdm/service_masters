import "package:service_masters/common/barrels.dart";
import "package:service_masters/data/models/form_inputs/service_description_model.dart";

part "book_service_provider_bloc.freezed.dart";
part "book_service_provider_state.dart";
part "book_service_provider_event.dart";

class BookServiceProviderBloc
    extends Bloc<BookServiceProviderEvent, BookServiceProviderState> {
  BookServiceProviderBloc() : super(const BookServiceProviderState()) {
    on<_BookServiceProvider>(_onBookServiceProvider);
  }

  FutureOr<void> _onServiceDecriptionChanged(
    _ServiceDescriptionChanged event,
    Emitter<BookServiceProviderState> emit,
  ) {
    final serviceDescriptionChanged =
        ServiceDescription.dirty(description: event.description);
    // emit(
    //   state.copyWith(
    //     email: emailChanged,
    //     isValid: Formz.validate([
    //       emailChanged,
    //       state.password,
    //       state.confirmedPassword,
    //     ]),
    //     emailErrorMessage: emailChanged.displayError?.message ?? "",
    //   ),
    // );
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
