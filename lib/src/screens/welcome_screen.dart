import 'package:flutter/material.dart';
import 'package:home_service_app/src/utils/exports.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = context.mediaQueryWidth;

    return Scaffold(
      backgroundColor: tWhiteColor,
      body: Column(
        children: [
          Container(
              width: screenWidth,
              height: 320,
              decoration: const BoxDecoration(
                  color: tWhiteColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Image.asset(
                tOnboardingPage1Image,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: RichText(
              text: TextSpan(
                text: "Connect with",
                style: GoogleFonts.montserrat(
                    fontSize: 35,
                    color: tBlackColor,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: " Artisans ",
                    style: GoogleFonts.montserrat(
                        fontSize: 35,
                        color: tPrimaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(text: "\nand \n"),
                  const TextSpan(
                      text: "Home Service Providers",
                      style: TextStyle(color: tPrimaryColor))
                ],
              ),
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                PrimaryButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OnboardingScreen(),
                      ),
                    );
                  },
                  label: tGetStarted,
                ),
                const SizedBox(
                  height: 20,
                ),
                PrimaryButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    fontColor: tPrimaryColor,
                    label: tSignup,
                    backgroundColor: tWhiteColor,
                    borderColor: tPrimaryColor),
              ],
            ),
          ),
        ],
      ),
    );
  }

  onPageChangeCallback() {}
}
