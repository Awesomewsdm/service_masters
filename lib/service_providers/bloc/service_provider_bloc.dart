import "package:service_masters/common/barrels.dart";
import "package:service_masters/data/models/service_provider/service_provider.model.dart";

part "service_provider_state.dart";
part "service_provider_event.dart";
part "service_provider_bloc.freezed.dart";

class ServiceProviderBloc
    extends Bloc<ServiceProviderEvent, ServiceProviderState> {
  ServiceProviderBloc() : super(const ServiceProviderState()) {
    on<_Fetch>(_onFetchServiceProviders);
  }

  final _serviceProverRepositoryImpl = getIt<ServiceProviderRepositoryImpl>();
  FutureOr<void> _onFetchServiceProviders(
    _Fetch event,
    Emitter<ServiceProviderState> emit,
  ) async {
    emit(
      state.copyWith(
        status: ServiceProviderStatus.loading,
      ),
    );
    try {
      final serviceProviders = await _serviceProverRepositoryImpl
          .fetchServiceProviders(event.serviceId);
      if (serviceProviders.isEmpty) {
        emit(
          state.copyWith(
            status: ServiceProviderStatus.empty,
            failureMessage: "No service providers found.",
          ),
        );
      } else {
        emit(
          state.copyWith(
            status: ServiceProviderStatus.success,
            serviceProviders: serviceProviders,
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          status: ServiceProviderStatus.failure,
          failureMessage:
              "Failed to fetch service providers. Please try again.",
        ),
      );
    }
  }
}
