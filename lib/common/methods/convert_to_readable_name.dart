String convertToReadableName(String documentName) {
  final words = documentName.split("_");

  final readableName = words.map((word) => word.capitalize()).join(" ");

  return readableName;
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
