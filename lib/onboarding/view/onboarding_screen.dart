import 'package:home_service_app/common/barrels.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;

  final pages = [
    const OnboardingPageWrapperWidget(
        imageString: tOnboardingPage1Image,
        pageColor: tOnBoardingPage1Color,
        onboardingTitle: tOnBoardingTitle1,
        onboardingSubtitle: tOnBoardingSubTitle1),
    const OnboardingPageWrapperWidget(
        imageString: tOnboardingPage2Image,
        pageColor: tOnBoardingPage2Color,
        onboardingTitle: tOnBoardingTitle2,
        onboardingSubtitle: tOnBoardingSubTitle2),
    const OnboardingPageWrapperWidget(
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