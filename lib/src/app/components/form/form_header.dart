import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class FormHeader extends StatelessWidget {
  const FormHeader({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text(title,
              style: GoogleFonts.montserrat(
                  fontSize: 35, fontWeight: FontWeight.bold)),
          const Gap(10),
          Text(subtitle),
        ],
      ),
    );
  }
}
