import "package:intl/intl.dart";
import "package:service_masters/common/barrels.dart";

extension PaddingValues on Widget {
  Widget horizontalPadding(double padding) => Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: this,
      );

  Widget center() => Center(
        child: this,
      );
}

extension BuildContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  double get screenWidth => MediaQuery.of(this).size.width;

  double get screenHeight => MediaQuery.of(this).size.height;
}

extension StringExtension on String {
  String capitalize() {
    return substring(0, 1).toUpperCase() + substring(1);
  }

  String capitalizeFirstOfEach() {
    return split(" ")
        .map((str) => str.substring(0, 1).toUpperCase() + str.substring(1))
        .join(" ");
  }

  String generateFormattedPhoneNumber() {
    if (startsWith("0")) {
      return "+233${substring(1)}";
    }
    return this;
  }
}

extension BrightnessX on Brightness {
  bool get isDark => this == Brightness.dark;
  bool get isLight => this == Brightness.light;
}

extension DateFormatting on DateTime {
  String formatBookingDate() {
    return DateFormat("EEE, d MMM, yyyy").format(this);
  }

  String formatShortDate() {
    return DateFormat("d MMM, yyyy").format(this);
  }

  String formatLongDate() {
    return DateFormat("EEEE, d MMMM, yyyy").format(this);
  }

  String formatTime() {
    return DateFormat("h:mm a").format(this);
  }

  String formatNumericDate() {
    return DateFormat("yyyy-MM-dd").format(this);
  }
}

extension TextStyleExtension on String {
  Text get text {
    return Text(this);
  }

  Text get bold {
    return Text(
      this,
      style: const TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
