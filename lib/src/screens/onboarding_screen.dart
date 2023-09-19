import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_service_app/src/app/colors.dart';
import 'package:home_service_app/src/app/components/clickable_text.dart';
import 'package:home_service_app/src/app/components/onboarding/oboarding_page.dart';
import 'package:home_service_app/src/app/text.dart';
import 'package:home_service_app/src/utils/constants/image_strings.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});
  final pages = [
    const OnboardingWidget(
        imageString: tCleaningTeam,
        pageColor: tOrangeColor,
        onboardingTitle: tOnBoardingTitle1,
        onboardingSubtitle: tOnBoardingSubTitle1),
    const OnboardingWidget(
        imageString: tCleaningTeam,
        pageColor: tLightBlue,
        onboardingTitle: tOnBoardingTitle2,
        onboardingSubtitle: tOnBoardingSubTitle2),
    const OnboardingWidget(
        imageString: tACRepair,
        pageColor: tWhiteColor,
        onboardingTitle: tOnBoardingTitle3,
        onboardingSubtitle: tOnBoardingSubTitle3)
  ];

  final controller = LiquidController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        LiquidSwipe(
          liquidController: controller,
          pages: pages,
          positionSlideIcon: 0.8,
          fullTransitionValue: 880,
          slideIconWidget: const Icon(Icons.arrow_back_ios),
          waveType: WaveType.liquidReveal,
          preferDragFromRevealedArea: true,
          enableSideReveal: true,
          ignoreUserGestureWhileAnimating: true,
          enableLoop: true,
        ),
        Positioned(
            bottom: 10,
            child: Row(
              children: [
                AnimatedSmoothIndicator(
                  activeIndex: controller.currentPage,
                  count: 3,
                  effect: const WormEffect(dotHeight: 5.0),
                ),
                ClickableText(text: "Skip", textColor: tWhiteColor, onTap:Action)
              ],
            ),),
      ]),
    );
  }
}
