part of "location_bloc.dart";

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.initial() = _Initial;
  const factory LocationEvent.getLocation() = _GetLocation;
  const factory LocationEvent.onLocationUpdate({
    required Position position,
  }) = _OnLocationUpdate;
}
