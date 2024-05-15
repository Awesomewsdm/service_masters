import "package:service_masters/common/barrels.dart";

class Utils {
  static String getGreeting() {
    final now = DateTime.now();
    final hour = now.hour;

    if (hour >= 5 && hour < 12) {
      return "Good Morning";
    } else if (hour >= 12 && hour < 17) {
      return "Good Afternoon";
    } else {
      return "Good Evening";
    }
  }

  String convertToReadableName(String documentName) {
    final words = documentName.split("_");

    final readableName = words.map((word) => word.capitalize()).join(" ");

    return readableName;
  }
}
