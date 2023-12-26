import 'package:home_service_app/common/barrels.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
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
                  obscureText: false,
                  labelText: "First Name",
                  prefixIcon: const Icon(Icons.person),
                ),
                CustomTextFormField(
                  autofillHints: const [AutofillHints.telephoneNumber],
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter a valid name";
                    } else {
                      return "";
                    }
                  },
                  // controller: signUpController.phoneNo,
                  keyboardType: TextInputType.phone,

                  prefixIcon: const Icon(Icons.person),
                  labelText: tLastName,
                  hintText: tLastName,
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

                  prefixIcon: const Icon(Icons.lock_outline_rounded),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.visibility_off_outlined),
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

                  prefixIcon: const Icon(Icons.lock_outline_rounded),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.visibility_off_outlined),
                    onPressed: () {},
                  ),
                  labelText: tConfirmPassword,
                  hintText: tConfirmPassword,
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
                    label: tSignup),
                const Spacer(
                  flex: 2,
                ),
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
                            builder: (context) => LoginScreen(),
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
                const Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
