import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPageWidget extends StatelessWidget {
  const OnboardingPageWidget({
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
    var size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.all(20),
      color: pageColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imageString,
            height: size.height * 0.5,
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Text(
            textAlign: TextAlign.center,
            onboardingTitle,
            style: GoogleFonts.montserrat(
                fontSize: 35, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
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
