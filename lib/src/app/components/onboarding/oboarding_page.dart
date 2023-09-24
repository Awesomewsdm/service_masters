import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({
    super.key,
    required this.imageString,
    required this.pageColor,
    required this.onboardingTitle,
    required this.onboardingSubtitle,
  });
  final String imageString;
  final Color pageColor;
  final String onboardingTitle;
  final String onboardingSubtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: pageColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          Image.asset(imageString),
          const SizedBox(
            height: 50,
          ),
          Text(
            onboardingTitle,
            style: GoogleFonts.montserrat(
                fontSize: 35, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            textAlign: TextAlign.center,
            style:
                GoogleFonts.georama(fontSize: 18, fontWeight: FontWeight.w500),
            onboardingSubtitle,
          )
        ],
      ),
    );
  }
}
