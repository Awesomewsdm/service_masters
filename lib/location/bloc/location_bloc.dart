import "package:flutter_bloc/flutter_bloc.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:geolocator/geolocator.dart";

part "location_state.dart";
part "location_event.dart";
part "location_bloc.freezed.dart";

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(const LocationState.initial()) {}
}
