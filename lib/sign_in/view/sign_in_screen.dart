import "package:home_service_app/common/barrels.dart";

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  static Page<void> page() => const MaterialPage<void>(child: HomeScreen());

  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                  ),
                ),
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
                  prefixIcon: const Icon(CustomIcons.envelope),
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
                  prefixIcon: const Icon(CustomIcons.lock),
                  suffixIcon: IconButton(
                    icon: const Icon(CustomIcons.eye),
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
                            builder: (
                              BuildContext context,
                              ScrollController scrollController,
                            ) {
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
                      textColor: tPrimaryColor,
                    ),
                  ],
                ),
                const Spacer(),
                PrimaryButton(
                  onPressed: () {
                    final email = emailController.text;
                    final password = passwordController.text;

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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
