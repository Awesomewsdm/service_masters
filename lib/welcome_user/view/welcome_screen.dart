import "package:home_service_app/common/barrels.dart";

@RoutePage()
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tWhiteColor,
      body: Column(
        children: [
          Container(
            width: context.screenWidth,
            height: context.screenWidth / 1.5,
            decoration: const BoxDecoration(
              color: tWhiteColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Image.asset(
              tOnboardingPage1Image,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: RichText(
              text: TextSpan(
                text: "Connect with",
                style: GoogleFonts.montserrat(
                  fontSize: context.screenWidth / 10,
                  color: tBlackColor,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: " Artisans ",
                    style: GoogleFonts.montserrat(
                      fontSize: context.screenWidth / 10,
                      color: tPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const TextSpan(text: "\nand \n"),
                  const TextSpan(
                    text: "Home Service Providers",
                    style: TextStyle(color: tPrimaryColor),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                PrimaryButton(
                  onPressed: () {
                    context.router.push(const OnboardingRoute());
                  },
                  label: tGetStarted,
                ),
                const Gap(10),
                PrimaryButton(
                  onPressed: () {
                    context.router.push(SignInRoute());
                  },
                  // fontColor: tPrimaryColor,
                  label: tSignup,
                  // backgroundColor: tWhiteColor,
                  // borderColor: tPrimaryColor
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
