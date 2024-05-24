import "package:service_masters/common/barrels.dart";
part "service_provider_state.dart";
part "service_provider_event.dart";
part "service_provider_bloc.freezed.dart";

class ServiceProviderBloc
    extends Bloc<ServiceProviderEvent, ServiceProviderState> {
  ServiceProviderBloc() : super(const ServiceProviderState.initial()) {
    on<_Fetch>(_onFetchServiceProviders);
  }

  final _serviceProverRepositoryImpl = getIt<ServiceProviderRepositoryImpl>();
  FutureOr<void> _onFetchServiceProviders(
    _Fetch event,
    Emitter<ServiceProviderState> emit,
  ) async {
    emit(
      const ServiceProviderState.loading(),
    );
    try {
      final serviceProviders = await _serviceProverRepositoryImpl
          .fetchServiceProviders(event.serviceId);
      if (serviceProviders.isEmpty) {
        emit(
          const ServiceProviderState.empty(),
        );
      } else {
        emit(
          ServiceProviderState.success(
            serviceProviders: serviceProviders,
          ),
        );
      }
    } catch (e) {
      emit(
        const ServiceProviderState.failure(
          message: "Failed to fetch service providers",
        ),
      );
    }
  }
}
