part of "location_bloc.dart";

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.getLocation({
    required void Function(LocationRecord locationRecord) onSuccess,
    required void Function(String message) onError,
  }) = _GetLocation;
}
