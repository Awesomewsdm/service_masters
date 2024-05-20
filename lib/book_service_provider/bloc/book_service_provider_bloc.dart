import "dart:io";

import "package:service_masters/common/barrels.dart";
import "package:service_masters/common/models/form_inputs/customer_address_model.dart";
part "book_service_provider_bloc.freezed.dart";
part "book_service_provider_state.dart";
part "book_service_provider_event.dart";

class BookServiceProviderBloc
    extends Bloc<BookServiceProviderEvent, BookServiceProviderState> {
  BookServiceProviderBloc() : super(const BookServiceProviderState()) {
    on<_BookServiceProvider>(_onBookServiceProvider);
    on<_ServiceDescriptionChanged>(_onServiceDescriptionChanged);
    on<_ServiceDateChanged>(_onServiceDateChanged);
    on<_ServiceTimeChanged>(_onServiceTimeChanged);
    on<_CustomerAddressChanged>(_onCustomerAddressChanged);
  }
  final bookServiceProviderRepository = getIt<BookServiceProviderRepository>();
  FutureOr<void> _onServiceDescriptionChanged(
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
          state.description,
          // state.date,
          // state.time,
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
          // state.date,
          // state.time,
        ]),
        errorMessage: serviceTimeChanged.displayError?.message ?? "",
      ),
    );
  }

  FutureOr<void> _onServiceDateChanged(
    _ServiceDateChanged event,
    Emitter<BookServiceProviderState> emit,
  ) {
    final serviceDateChanged = ServiceDescription.dirty(event.date);

    emit(
      state.copyWith(
        description: serviceDateChanged,
        isFormValid: Formz.validate([
          serviceDateChanged,
          state.description,
          // state.time,
          // state.date,
        ]),
        errorMessage: serviceDateChanged.displayError?.message ?? "",
      ),
    );
  }

  FutureOr<void> _onCustomerAddressChanged(
    _CustomerAddressChanged event,
    Emitter<BookServiceProviderState> emit,
  ) {
    final customerAddressChanged = CustomerAddress.dirty(event.customerAddress);
    emit(
      state.copyWith(
        address: customerAddressChanged,
        isFormValid: Formz.validate([
          customerAddressChanged,
          state.description,
          // state.time,
          // state.date,
        ]),
        errorMessage: customerAddressChanged.displayError?.message ?? "",
      ),
    );
  }

  FutureOr<void> _onBookServiceProvider(
    _BookServiceProvider event,
    Emitter<BookServiceProviderState> emit,
  ) async {
    try {
      emit(
        const BookServiceProviderState(
          status: BookServiceProviderStatus.bookingInProgress,
        ),
      );
      final imageUrls = await bookServiceProviderRepository.uploadBookingImages(
        imageFiles: event.imageFiles ?? [],
        bookingId: event.orderId ?? event.bookServiceProvider.copyWith().id,
      );
      final bookServiceProvider = event.bookServiceProvider.copyWith(
        mediaFilesUrl: imageUrls,
      );
      await bookServiceProviderRepository
          .bookServiceProvider(bookServiceProvider);

      emit(
        const BookServiceProviderState(
          status: BookServiceProviderStatus.bookingSuccess,
        ),
      );
    } catch (e) {
      emit(
        const BookServiceProviderState(
          status: BookServiceProviderStatus.bookingFailure,
        ),
      );
    }
  }
}
