import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryTextWidget extends StatelessWidget {
  const PrimaryTextWidget({
    super.key,
    required this.text,
    required this.fontWeight,
    required this.fontSize,
  });

  final String text;
  final FontWeight fontWeight;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
