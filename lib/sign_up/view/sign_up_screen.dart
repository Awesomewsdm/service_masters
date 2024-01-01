import "package:home_service_app/common/barrels.dart";

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          height: context.screenHeight,
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                const FormHeader(
                  subtitle: tSignUpSubTitle,
                  title: tSignUpTitle,
                ),
                const Spacer(
                  flex: 3,
                ),
                CustomTextFormField(
                  autofillHints: const [AutofillHints.name],
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter a valid name";
                    } else {
                      return "null";
                    }
                  },
                  // controller: signUpController.fullName,
                  keyboardType: TextInputType.name,
                  hintText: "First Name",
                  labelText: "First Name",
                  prefixIcon: const Icon(CustomIcons.user),
                ),
                CustomTextFormField(
                  autofillHints: const [AutofillHints.name],
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter a valid name";
                    } else {
                      return "";
                    }
                  },
                  // controller: signUpController.phoneNo,
                  keyboardType: TextInputType.name,

                  prefixIcon: const Icon(CustomIcons.user),
                  labelText: tLastName,
                  hintText: tLastName,
                ),
                CustomTextFormField(
                  autofillHints: const [AutofillHints.email],
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter a valid name";
                    } else {
                      return "";
                    }
                  },
                  // controller: signUpController.phoneNo,
                  keyboardType: TextInputType.emailAddress,

                  prefixIcon: const Icon(CustomIcons.envelope),
                  labelText: tEmail,
                  hintText: tEmail,
                ),
                CustomTextFormField(
                  autofillHints: const [AutofillHints.newPassword],
                  // obscureText: signUpController.passwordVisible.value,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter a valid password";
                    } else {
                      return "";
                    }
                  },
                  // controller: signUpController.password,
                  keyboardType: TextInputType.visiblePassword,

                  prefixIcon: const Icon(CustomIcons.lock),
                  suffixIcon: IconButton(
                    icon: const Icon(CustomIcons.eye),
                    onPressed: () {},
                  ),
                  labelText: tPassword,
                  hintText: tPassword,
                ),
                CustomTextFormField(
                  autofillHints: const [AutofillHints.newPassword],
                  // obscureText: signUpController.passwordVisible.value,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter a valid password";
                    } else {
                      return "null";
                    }
                  },
                  // controller: signUpController.password,
                  keyboardType: TextInputType.visiblePassword,

                  prefixIcon: const Icon(CustomIcons.lock),
                  suffixIcon: IconButton(
                    icon: const Icon(CustomIcons.eye),
                    onPressed: () {},
                  ),
                  labelText: "Confirm Password",
                  hintText: "Confirm Password",
                ),
                const Spacer(),
                PrimaryButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VerificationScreen(),
                      ),
                    );
                  },
                  label: tSignup,
                ),
                const Spacer(
                  flex: 2,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text("Or"),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                  ],
                ),
                const Spacer(
                  flex: 2,
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
                const Spacer(
                  flex: 4,
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
                            builder: (context) => SignInScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        tLogin,
                        style: TextStyle(color: tPrimaryColor),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
