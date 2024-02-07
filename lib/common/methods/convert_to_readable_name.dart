import "package:service_masters/common/barrels.dart";

String convertToReadableName(String documentName) {
  final words = documentName.split("_");

  final readableName = words.map((word) => word.capitalize()).join(" ");

  return readableName;
}
