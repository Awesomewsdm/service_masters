class LocationPermissionDeniedException implements Exception {
  const LocationPermissionDeniedException([this.message = ""]);
  final String message;

  @override
  String toString() => message;
}

class LocationPermissionDeniedForeverException implements Exception {
  const LocationPermissionDeniedForeverException([this.message = ""]);
  final String message;

  @override
  String toString() => message;
}
