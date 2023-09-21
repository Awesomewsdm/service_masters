import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/colors.dart';
import 'package:home_service_app/src/app/components/button/primary_button.dart';
import 'package:home_service_app/src/app/components/clickable_text.dart';
import 'package:home_service_app/src/app/components/form/form_header.dart';
import 'package:home_service_app/src/app/input_decoration.dart';
import 'package:home_service_app/src/app/sizes.dart';
import 'package:home_service_app/src/app/text.dart';
import 'package:home_service_app/src/screens/auth_screens/password_reset/enter_phone_number_screen.dart';
import 'package:home_service_app/src/screens/auth_screens/sign_up_screen.dart';
import 'package:home_service_app/src/utils/constants/image_strings.dart';
import 'package:home_service_app/src/app/components/button/social_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              SafeArea(
                  child: Image.asset(
                tAuth1,
                height: 140,
                width: 150,
                fit: BoxFit.fitHeight,
              )),
              const FormHeader(
                subtitle: tLoginSubTitle,
                title: tLoginTitle,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: tFormHeight - 10,
                ),
                child: Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: tFormHeight - 20,
                      ),
                      const SizedBox(
                        height: tFormHeight - 20,
                      ),
                      TextFormField(
                        autofillHints: const [AutofillHints.email],
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter a valid email address";
                          } else {
                            return null;
                          }
                        },
                        // controller: signUpController.email,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(8.0),
                          prefixIcon: Icon(Icons.email_outlined),
                          labelText: tEmail,
                          hintText: tEmail,
                          border: kOutlineInputBorder,
                        ),
                      ),
                      const SizedBox(
                        height: tFormHeight - 20,
                      ),
                      TextFormField(
                        autofillHints: const [AutofillHints.newPassword],
                        // obscureText: signUpController.passwordVisible.value,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter a valid password";
                          } else {
                            return null;
                          }
                        },
                        // controller: signUpController.password,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(8.0),
                          prefixIcon: const Icon(Icons.lock_outline_rounded),
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.visibility_off_outlined),
                            onPressed: () {},
                          ),
                          labelText: tPassword,
                          hintText: tPassword,
                          border: kOutlineInputBorder,
                        ),
                      ),
                      const SizedBox(
                        height: tFormHeight - 20,
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          ClickableText(
                              onTap: () {},
                              text: tForgetPassword,
                              textColor: tPrimaryColor)
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ), //
                      PrimaryButton(
                        color: tPrimaryColor,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EnterPhoneScreen(),
                            ),
                          );
                        },
                        label: tLogin,
                      ),
                      const Row(
                        children: [
                          Expanded(
                              child: Divider(
                            thickness: 2,
                          )),
                          SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text("Or"),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 2,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SocialLoginButton(
                        image: tGoogleLogo,
                        label: tGoogleLoginLabel,
                        width: 20.0,
                      ),
                      const SocialLoginButton(
                        image: tFacebookLogo,
                        label: tFacebookLoginLabel,
                        width: 28.0,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(tDontHaveAnAccount),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      tSignup,
                      style: TextStyle(color: tPrimaryColor),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

 // void _showBottomSheet(BuildContext context) {
  //   showBottomSheet(
  //       context: context,
  //       builder: (context) => Container(
  //             color: Colors.amber,
  //             height: 50,
  //             width: double.infinity,
  //           ));
  // }