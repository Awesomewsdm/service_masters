import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/colors.dart';
import 'package:home_service_app/src/app/components/button/primary_button.dart';
import 'package:home_service_app/src/app/components/onboarding/oboarding_page_wrapper.dart';
import 'package:home_service_app/src/app/text.dart';
import 'package:home_service_app/sign_up/view/sign_up_screen.dart';
import 'package:home_service_app/src/utils/constants/image_strings.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;

  final pages = [
    const OnboardingPageWidget(
        imageString: tOnboardingPage1Image,
        pageColor: tOnBoardingPage1Color,
        onboardingTitle: tOnBoardingTitle1,
        onboardingSubtitle: tOnBoardingSubTitle1),
    const OnboardingPageWidget(
        imageString: tOnboardingPage2Image,
        pageColor: tOnBoardingPage2Color,
        onboardingTitle: tOnBoardingTitle2,
        onboardingSubtitle: tOnBoardingSubTitle2),
    const OnboardingPageWidget(
        imageString: tOnboardingPage3Image,
        pageColor: tOnBoardingPage3Color,
        onboardingTitle: tOnBoardingTitle3,
        onboardingSubtitle: tOnBoardingSubTitle3)
  ];

  final controller = LiquidController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
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
          onPageChangeCallback: onPageChangeCallback,
        ),
        Positioned(
          bottom: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedSmoothIndicator(
                activeIndex: controller.currentPage,
                count: 3,
                effect: const WormEffect(dotHeight: 5.0),
              ),
              const SizedBox(height: 50),
              PrimaryButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpScreen(),
                    ),
                  );
                },
                label: tSkip,
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ]),
    );
  }

  onPageChangeCallback(int activePageIndex) {
    setState(() {
      currentPage = activePageIndex;
    });
  }
}
