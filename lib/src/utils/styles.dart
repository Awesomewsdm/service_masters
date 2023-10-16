import 'package:flutter/material.dart';
import 'package:home_service_app/src/utils/exports.dart';

class Fonts {
  static const sfCompact = 'SF-Compact-Display';
  static const sfPro = 'SF-Pro-Display';
}

class Styles {
  /// fontSize: 10.0
  static TextStyle labelSmall = _copy(
    fontSize: 10,
    height: 12,
    fontWeight: FontWeight.w400,
    color: Palette.black.withOpacity(0.4),
  );

  /// fontSize: 12.0
  static TextStyle bodySmall = _copy(
    fontSize: 12,
    height: 14,
    color: Palette.black,
    fontWeight: FontWeight.w400,
  );

  /// fontSize: 14.0
  static TextStyle body = _copy(
    fontSize: 14,
    height: 17,
    color: Palette.black,
    fontWeight: FontWeight.w400,
  );

  /// fontSize: 16.0
  static TextStyle bodyLarge = _copy(
    fontSize: 16,
    height: 19,
    color: Palette.black,
    fontWeight: FontWeight.w500,
  );

  /// fontSize: 18.0
  static TextStyle title = _copy(
    fontSize: 18,
    height: 21,
    color: Palette.black,
    fontWeight: FontWeight.w500,
  );

  /// fontSize: 20.0
  static TextStyle titleMedium = _copy(
    fontSize: 20,
    height: 24,
    color: Palette.black,
    fontWeight: FontWeight.w500,
  );

  /// fontSize: 22.0
  static TextStyle titleLarge = _copy(
    fontSize: 22,
    height: 26,
    color: Palette.black,
    fontWeight: FontWeight.w500,
  );

  /// fontSize: 24.0
  static TextStyle headlineSmall = _copy(
    fontSize: 24,
    height: 28,
    color: Palette.black,
    fontWeight: FontWeight.w500,
  );

  /// fontSize: 28.0
  static TextStyle headlineMedium = _copy(
    fontSize: 28,
    height: 33,
    color: Palette.black,
    fontWeight: FontWeight.w500,
  );

  /// fontSize: 40.0
  static TextStyle headlineLarge = _copy(
    fontSize: 40,
    height: 47,
    color: Colors.white,
    fontWeight: FontWeight.w400,
  );

  static TextStyle _copy({
    required double fontSize,
    double? height,
    double? letterSpace,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color ?? Palette.black,
      height: height != null ? (height / fontSize) : 1.0,
      letterSpacing: letterSpace != null ? fontSize * letterSpace * 0.01 : null,
    );
  }
}
