import "package:flutter/material.dart";

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

  // Orientation get orientation => MediaQuery.of(this).orientation;
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
