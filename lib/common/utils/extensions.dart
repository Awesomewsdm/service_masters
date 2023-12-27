import 'package:flutter/material.dart';

extension on double {
  SizedBox get paddingHeight => SizedBox(
        height: toDouble(),
      );
  SizedBox get paddingWidth => SizedBox(
        width: toDouble(),
      );
}

extension on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
}

extension PaddingValues on Widget {
  Widget horizontalPadding(double padding) => Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: this,
      );

  Widget center() => Center(
        child: this,
      );
}

extension MediaQueryValues on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
}

extension StringExtension on String {
  String capitalize() {
    return substring(0, 1).toUpperCase() + substring(1);
  }
}
