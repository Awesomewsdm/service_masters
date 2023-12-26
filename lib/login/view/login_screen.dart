import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:home_service_app/src/app/components/bottomsheet/show_custom_bottom_sheet.dart';
import 'package:home_service_app/src/app/components/button/secondary_button.dart';
import 'package:home_service_app/src/app/components/clickable_text.dart';
import 'package:home_service_app/src/app/components/form/custom_text_form_field.dart';
import 'package:home_service_app/src/app/components/form/form_header.dart';
import 'package:home_service_app/src/app/sizes.dart';
import 'package:home_service_app/src/screens/auth_screens/password_reset/enter_email_address_screen.dart';
import 'package:home_service_app/src/screens/auth_screens/password_reset/enter_phone_number_screen.dart';
import 'package:home_service_app/src/app/components/button/social_button.dart';
import 'package:home_service_app/src/screens/bottom_nav.dart';
import 'package:home_service_app/src/utils/exports.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: context.screenHeight,
          padding: const EdgeInsets.all(tDefaultSize),
          child: Form(
            key: _formkey,
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
                  title: "Welcome back,",
                  subtitle: "Login to start booking an artisan!",
                ),
                const Spacer(),
                CustomTextFormField(
                  autofillHints: const [AutofillHints.email],
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter a valid email address";
                    } else {
                      return "null";
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: const Icon(Icons.email_outlined),
                  labelText: tEmail,
                  hintText: tEmail,
                ),
                CustomTextFormField(
                  autofillHints: const [AutofillHints.newPassword],
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter a valid password";
                    } else {
                      return "null";
                    }
                  },
                  keyboardType: TextInputType.visiblePassword,
                  prefixIcon: const Icon(Icons.lock_outline_rounded),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.visibility_off_outlined),
                    onPressed: () {},
                  ),
                  labelText: tPassword,
                  hintText: tPassword,
                ),
                const Spacer(),
                Row(
                  children: [
                    const Spacer(),
                    ClickableText(
                        onTap: () {
                          showCustomBottomsheet(
                            context,
                            DraggableScrollableSheet(
                              initialChildSize: 0.35,
                              minChildSize: 0.2,
                              maxChildSize: 0.8,
                              expand: false,
                              builder: (BuildContext context,
                                  ScrollController scrollController) {
                                return Container(
                                  height: context.screenHeight / 3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: context.screenWidth / 10,
                                          child: const Divider(
                                            thickness: 5,
                                          ),
                                        ),
                                        const Gap(10),
                                        SecondaryButtonWithIcon(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    EnterEmailScreen(),
                                              ),
                                            );
                                          },
                                          label: "Email Verification",
                                          icon: tCamera2,
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                            tPrimaryColor,
                                          ),
                                        ),
                                        SecondaryButtonWithIcon(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    EnterPhoneScreen(),
                                              ),
                                            );
                                          },
                                          label: "Phone Verification",
                                          icon: tGalleryImport,
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                            tPrimaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          );
                        },
                        text: tForgetPassword,
                        textColor: tPrimaryColor)
                  ],
                ),
                const Spacer(),
                PrimaryButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNav(),
                      ),
                    );
                  },
                  label: tLogin,
                ),
                const Spacer(),
                const Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 2,
                    )),
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
                const Spacer(),
                const SocialLoginButton(
                  image: tGoogleLogo,
                  label: tGoogleLoginLabel,
                  // width: 20.0,
                ),
                const SocialLoginButton(
                  image: tFacebookLogo,
                  label: tFacebookLoginLabel,
                  // width: 28.0,
                ),
                const Spacer(
                  flex: 5,
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
      ),
    );
  }
}
