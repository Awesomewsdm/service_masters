import "package:service_masters/common/barrels.dart";
import "package:service_masters/data/models/form_inputs/service_date_model.dart";
import "package:service_masters/data/models/form_inputs/service_time_model.dart";

part "book_service_provider_bloc.freezed.dart";
part "book_service_provider_state.dart";
part "book_service_provider_event.dart";

class BookServiceProviderBloc
    extends Bloc<BookServiceProviderEvent, BookServiceProviderState> {
  BookServiceProviderBloc() : super(const BookServiceProviderState()) {
    on<_BookServiceProvider>(_onBookServiceProvider);
    on<_ServiceDescriptionChanged>(_onServiceDecriptionChanged);
    // on<_ServiceDateChanged>(_onServiceDateChanged);
    on<_ServiceTimeChanged>(_onServiceTimeChanged);
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

  FutureOr<void> _onServiceTimeChanged(
    _ServiceTimeChanged event,
    Emitter<BookServiceProviderState> emit,
  ) {
    final serviceTimeChanged = ServiceDescription.dirty(event.time);
    emit(
      state.copyWith(
        description: serviceTimeChanged,
        isFormValid: Formz.validate([
          serviceTimeChanged,
          state.description,
        ]),
        errorMessage: serviceTimeChanged.displayError?.message ?? "",
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
