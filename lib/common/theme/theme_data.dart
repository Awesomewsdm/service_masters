import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:pinput/pinput.dart";

class AppThemeData {
  AppThemeData._();

  static const _lightFillColor = Colors.black;
  static const _darkFillColor = Colors.white;

  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);

  static ThemeData lightThemeData =
      themeData(lightColorScheme, _lightFocusColor);
  static ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: _textTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.primary,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(color: colorScheme.onPrimary),
      ),
      iconTheme: const IconThemeData(color: Colors.black),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.alphaBlend(
          _lightFillColor.withOpacity(0.80),
          _darkFillColor,
        ),
        contentTextStyle: _textTheme.titleMedium!.apply(color: _darkFillColor),
      ),
    );
  }

  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF14AA52),
    onPrimary: Color(0xffffffff),
    primaryContainer: Color(0xffd7e2ff),
    onPrimaryContainer: Color(0xff001a40),
    secondary: Color(0xff785a00),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFD7E2FF),
    onSecondaryContainer: Color(0xFF001A40),
    tertiary: Color(0xFF235FA6),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFD5E3FF),
    onTertiaryContainer: Color(0xFF001B3B),
    error: Color(0xffba1a1a),
    errorContainer: Color(0xFFFFDAD6),
    onError: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFF410002),
    background: Color(0xffffffff),
    onBackground: Color(0xFF1A1C1E),
    outline: Color(0xFF7F7667),
    onInverseSurface: Color(0xFFF1F0F4),
    inverseSurface: Color(0xFF2F3033),
    inversePrimary: Color(0xFFF6BE28),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF785A00),
    outlineVariant: Color(0xFFD0C5B4),
    scrim: Color(0xFF000000),
    surface: Color(0xFFF9F9FC),
    onSurface: Color(0xFF1A1C1E),
    surfaceVariant: Color(0xFFEDE1CF),
    onSurfaceVariant: Color(0xFF4D4639),
  );

  static const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF785A00),
    onPrimary: Color(0xffffffff),
    primaryContainer: Color(0xFF5B4300),
    onPrimaryContainer: Color(0xFFFFDF9B),
    secondary: Color(0xFFACC7FF),
    onSecondary: Color(0xFF002F67),
    secondaryContainer: Color(0xFF08458E),
    onSecondaryContainer: Color(0xFFD7E2FF),
    tertiary: Color(0xFFA7C8FF),
    onTertiary: Color(0xFF003060),
    tertiaryContainer: Color(0xFF004788),
    onTertiaryContainer: Color(0xFFD5E3FF),
    error: Color(0xFFFFB4AB),
    errorContainer: Color(0xFF93000A),
    onError: Color(0xFF690005),
    onErrorContainer: Color(0xFFFFDAD6),
    background: Color.fromARGB(255, 9, 10, 11),
    onBackground: Color(0xFFC6C6CA),
    outline: Color(0xFF999080),
    onInverseSurface: Color(0xFF1A1C1E),
    inverseSurface: Color(0xFFE2E2E6),
    inversePrimary: Color(0xFF785A00),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFFF6BE28),
    outlineVariant: Color(0xFF4D4639),
    scrim: Color(0xFF000000),
    surface: Color(0xFF121316),
    onSurface: Color(0xFFC6C6CA),
    surfaceVariant: Color(0xFF4D4639),
    onSurfaceVariant: Color(0xFFD0C5B4),
  );

  static final TextTheme _textTheme = TextTheme(
    displayLarge: GoogleFonts.roboto(
      fontSize: 57,
      fontWeight: FontWeight.w400,
      color: Colors.white,
      letterSpacing: -1.5,
    ),
    displayMedium: GoogleFonts.roboto(
      fontSize: 45,
      fontWeight: FontWeight.w400,
      color: Colors.white,
      letterSpacing: -0.5,
    ),
    displaySmall: GoogleFonts.roboto(
      fontSize: 36,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    headlineMedium: GoogleFonts.roboto(
      fontSize: 32,
      fontWeight: FontWeight.w400,
      color: Colors.white,
      letterSpacing: 0.25,
    ),
    headlineSmall: GoogleFonts.roboto(
      fontSize: 28,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    titleLarge: GoogleFonts.roboto(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      color: Colors.black,
      letterSpacing: 0.15,
    ),
    titleMedium: GoogleFonts.roboto(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.15,
      color: Colors.black,
    ),
    titleSmall: GoogleFonts.roboto(
      fontSize: 16,
      color: Colors.black,
      letterSpacing: 0.1,
    ),
    bodyLarge: GoogleFonts.roboto(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      color: Colors.black,
    ),
    bodyMedium: GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: Colors.black,
    ),
    labelLarge: GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.black,
      letterSpacing: 1.25,
    ),
    bodySmall: GoogleFonts.roboto(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.black,
      letterSpacing: 0.4,
    ),
    labelSmall: GoogleFonts.roboto(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      color: Colors.black,
      letterSpacing: 1.5,
    ),
  );

  static const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
  static const fillColor = Color.fromRGBO(243, 246, 249, 0);
  static const borderColor = Color.fromRGBO(23, 171, 144, 0.4);

  static final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
      fontSize: 22,
      color: Color.fromRGBO(30, 60, 87, 1),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(19),
      border: Border.all(color: borderColor),
    ),
  );
}
