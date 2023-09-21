import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/colors.dart';
import 'package:home_service_app/src/app/components/button/primary_button.dart';
import 'package:home_service_app/src/app/components/form/form_header.dart';
import 'package:home_service_app/src/app/text.dart';
import 'package:home_service_app/src/screens/auth_screens/sign_up_screen.dart';
import 'package:home_service_app/src/screens/onboarding_screen.dart';
import 'package:home_service_app/src/utils/constants/image_strings.dart';
import 'package:home_service_app/src/utils/extensions.dart';

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
                tArtsanIllustration2,
              )),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: FormHeader(
              subtitle: "",
              title: tWelcomeTitle,
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                PrimaryButton(
                  color: tPrimaryColor,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OnboardingScreen(),
                      ),
                    );
                  },
                  label: tGetStarted,
                ),
                const SizedBox(
                  height: 20,
                ),
                PrimaryButtonWithBorderColor(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ),
                    );
                  },
                  label: tSignup,
                  borderColor: tPrimaryColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
