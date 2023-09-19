import 'package:flutter/material.dart';

extension SizedBoxValues on double {
  SizedBox get paddingHeight => SizedBox(
        height: toDouble(),
      );
  SizedBox get paddingWidth => SizedBox(
        width: toDouble(),
      );
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
  double get mediaQueryWidth => MediaQuery.of(this).size.width;
  double get mediaQueryHeight => MediaQuery.of(this).size.height;
}

extension StringExtension on String {
  String capitalize() {
    return substring(0, 1).toUpperCase() + substring(1);
  }
}
