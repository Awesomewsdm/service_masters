import "package:flutter_bloc/flutter_bloc.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:geocoding/geocoding.dart";
import "package:geolocator/geolocator.dart";
import "package:service_masters/app/service_locator.dart";
import "package:service_masters/common/barrels.dart";
import "package:service_masters/location/repository/location_repository.dart";

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
    // try {
    //   location.when((success) => emit(LocationState.loadSuccess(position: success))
    //   ,
    //    (error) => null)
    // } catch (e) {
    //   event.onError(e.toString());
    //   emit(const LocationState.loadFailure());
    // }
  }
}
