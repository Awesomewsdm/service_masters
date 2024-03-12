import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class OnboardingPageWrapperWidget extends StatelessWidget {
  const OnboardingPageWrapperWidget({
    required this.imageString, required this.pageColor, required this.onboardingTitle, required this.onboardingSubtitle, super.key,
  });
  final String imageString;
  final Color pageColor;
  final String onboardingTitle;
  final String onboardingSubtitle;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.all(20),
      color: pageColor,
      child: Column(
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
                fontSize: 35, fontWeight: FontWeight.bold,),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            textAlign: TextAlign.center,
            style:
                GoogleFonts.georama(fontSize: 18, fontWeight: FontWeight.w500),
            onboardingSubtitle,
          ),
        ],
      ),
    );
  }
}
