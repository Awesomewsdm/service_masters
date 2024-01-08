import "package:service_masters/common/barrels.dart";

@RoutePage()
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
      onboardingSubtitle: tOnBoardingSubTitle1,
    ),
    const OnboardingPageWrapperWidget(
      imageString: tOnboardingPage2Image,
      pageColor: tOnBoardingPage2Color,
      onboardingTitle: tOnBoardingTitle2,
      onboardingSubtitle: tOnBoardingSubTitle2,
    ),
    const OnboardingPageWrapperWidget(
      imageString: tOnboardingPage3Image,
      pageColor: tOnBoardingPage3Color,
      onboardingTitle: tOnBoardingTitle3,
      onboardingSubtitle: tOnBoardingSubTitle3,
    ),
  ];

  final controller = LiquidController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            liquidController: controller,
            pages: pages,
            fullTransitionValue: 880,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            preferDragFromRevealedArea: true,
            enableSideReveal: true,
            ignoreUserGestureWhileAnimating: true,
            onPageChangeCallback: onPageChangeCallback,
          ),
          Positioned(
            bottom: 10,
            child: Column(
              children: [
                AnimatedSmoothIndicator(
                  activeIndex: controller.currentPage,
                  count: 3,
                  effect: const WormEffect(dotHeight: 5.0),
                ),
                const SizedBox(height: 50),
                PrimaryButton(
                  onPressed: () => context.router.push(SignUpRoute()),
                  label: tSkip,
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onPageChangeCallback(int activePageIndex) {
    setState(() {
      currentPage = activePageIndex;
    });
  }
}
