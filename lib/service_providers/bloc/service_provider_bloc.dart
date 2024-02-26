import "package:service_masters/common/barrels.dart";

part "service_provider_state.dart";
part "service_provider_event.dart";
part "service_provider_bloc.freezed.dart";

class ServiceProviderBloc
    extends Bloc<ServiceProviderEvent, ServiceProviderState> {
  ServiceProviderBloc() : super(const ServiceProviderState()) {
    // on<ServiceProviderEvent>(_onFetchServiceProviders);
  }

  // final _serviceProverRepositoryImpl = getIt<ServiceProviderRepositoryImpl>();
  // FutureOr<void> _onFetchServiceProviders(
  //   ServiceProviderEvent event,
  //   Emitter<ServiceProviderState> emit,
  // ) async {
  //   emit(ServiceProviderState.loading());
  //   try {
  //     final serviceProviders = await _serviceProverRepositoryImpl
  //         .fetchServiceProviders(event.serviceType);
  //     emit(ServiceProviderState.loaded(serviceProviders));
  //   } catch (e) {
  //     emit(ServiceProviderState.error(e.toString()));
  //   }
  // }
}
