import "package:service_masters/common/barrels.dart";

part "location_state.dart";
part "location_event.dart";
part "location_bloc.freezed.dart";

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(const LocationState.initial()) {
    on<_GetLocation>(_onCurrentGetLocation);
  }
  final locationRepository = getIt<LocationRepository>();

  FutureOr<void> _onCurrentGetLocation(
    _GetLocation event,
    Emitter<LocationState> emit,
  ) async {
    emit(const LocationState.loadInProgress());
    final location = await locationRepository.getCurrentLocation();
    try {
      location.when(
        (success) => emit(LocationState.loadSuccess(locationRecord: success)),
        (error) => emit(
          LocationState.loadFailure(message: error),
        ),
      );
    } catch (e) {
      event.onError(e.toString());
      emit(const LocationState.loadFailure(message: ""));
    }
  }
}
