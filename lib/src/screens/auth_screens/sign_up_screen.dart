import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/colors.dart';
import 'package:home_service_app/src/app/components/form/form_header.dart';
import 'package:home_service_app/src/app/input_decoration.dart';
import 'package:home_service_app/src/app/sizes.dart';
import 'package:home_service_app/src/app/text.dart';
import 'package:home_service_app/src/screens/auth_screens/login/login_screen.dart';
import 'package:home_service_app/src/utils/constants/image_strings.dart';
import 'package:home_service_app/src/utils/extensions.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double screenWidth = context.mediaQueryWidth;
    double screenHeight = context.mediaQueryHeight;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenWidth - 250,
              ),
              const FormHeader(
                subtitle: tSignUpSubTitle,
                title: tSignUpTitle,
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
                      TextFormField(
                        autofillHints: const [AutofillHints.name],
                        validator: (value) {
                          return null;

                          // if (value!.isEmpty || !validator.name(value.trim())) {
                          //   return "Please enter a valid name";
                          // } else {
                          //   return null;
                          // }
                        },
                        // controller: signUpController.fullName,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(8.0),
                          prefixIcon: Icon(Icons.person_outline_outlined),
                          labelText: tFullName,
                          hintText: tFullName,
                          border: kOutlineInputBorder,
                        ),
                      ),
                      const SizedBox(
                        height: tFormHeight - 20,
                      ),
                      TextFormField(
                        autofillHints: const [AutofillHints.telephoneNumber],
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter a valid phone number";
                          } else {
                            return null;
                          }
                        },
                        // controller: signUpController.phoneNo,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(8.0),
                          prefixIcon: Icon(Icons.call),
                          labelText: tPhoneNo,
                          hintText: tPhoneNo,
                          border: kOutlineInputBorder,
                        ),
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
                          labelText: tConfirmPassword,
                          hintText: tConfirmPassword,
                          border: kOutlineInputBorder,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      PrimaryButton(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpScreen(),
                              ),
                            );
                          },
                          color: tPrimaryColor,
                          label: tSignup),
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
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(tAlreadyHaveAnAccount),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      tLogin,
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

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    super.key,
    required this.image,
    required this.label,
    this.backgroundColor,
    required this.width,
  });
  final String image;
  final String label;
  final Color? backgroundColor;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton.icon(
        onPressed: () {},
        icon: Image(image: AssetImage(image), width: width),
        label: Text(label),
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.onTap,
    required this.color,
    required this.label,
  });
  final void Function() onTap;
  final Color color;
  final String label;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
                color: tWhiteColor, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
