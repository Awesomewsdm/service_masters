import "package:service_masters/common/barrels.dart";
import "package:service_masters/location/exceptions/location_exceptions.dart";

typedef LocationRecord = ({String address, double latitude, double longitude});

class LocationRepository {
  Future<Result<LocationRecord, String>> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw const LocationServiceDisabledException();
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw const LocationPermissionDeniedException(
          "Location permissions are denied",
        );
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw const LocationPermissionDeniedForeverException(
        "Location permissions are permanently denied, we cannot request permissions.",
      );
    }
    try {
      final position = await Geolocator.getCurrentPosition();
      final placemarks =
          await placemarkFromCoordinates(position.latitude, position.longitude);
      final place = placemarks.first;
      final address =
          "${place.locality}, ${place.postalCode}, ${place.country}";
      return Result.success(
        (
          address: address,
          latitude: position.latitude,
          longitude: position.longitude,
        ),
      );
    } catch (e) {
      return const Result.error("An error occurred while fetching location");
    }
  }
}
