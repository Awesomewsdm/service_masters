import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/components/form/form_header.dart';
import 'package:home_service_app/src/app/sizes.dart';
import 'package:home_service_app/src/app/text.dart';
import 'package:home_service_app/src/screens/auth_screens/sign_up/widgets/sign_up_footer.dart';

import 'sign_up_form_widget.dart';
import '../../login/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FormHeader(
                subtitle: tSignUpSubTitle,
                title: tSignUpTitle,
              ),
              const SignUpFormWidget(),
              SignUpFormFooter(
                  text: tAlreadyHaveAnAccount,
                  redirectText: tLogin,
                  onSignUpTap: () {
                    // QR.toName(Routes.loginPage);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
