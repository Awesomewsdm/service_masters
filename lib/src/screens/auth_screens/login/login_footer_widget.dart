import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/components/form/form_footer.dart';
import 'package:home_service_app/src/app/text.dart';
import 'package:home_service_app/src/screens/auth_screens/sign_up/widgets/sign_up_screen.dart';
import 'package:home_service_app/src/screens/onboarding_screen.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormFooter(
          text: tDontHaveAnAccount,
          onSignUpTap: (() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignUpScreen()));

            // QR.toName(Routes.signUpPage);
          }),
          redirectText: tSignup,
          onForgotPasswordTap: (() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => OnboardingScreen()));

            // QR.toName(Routes.signUpPage);
          }),
        )
      ],
    );
  }
}
