import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryTextWidget extends StatelessWidget {
  const PrimaryTextWidget({
    super.key,
    required this.text,
    required this.fontWeight,
    required this.fontSize,
    this.fontColor,
  });

  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final Color? fontColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.georama(
          fontSize: fontSize, fontWeight: fontWeight, color: fontColor),
    );
  }
}
