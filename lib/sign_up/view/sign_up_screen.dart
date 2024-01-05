import "package:home_service_app/common/barrels.dart";

@RoutePage()
class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  static Page<void> page() => MaterialPage<void>(child: SignUpScreen());

  final _formkey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _firstname = TextEditingController();
  final TextEditingController _lastname = TextEditingController();
  final TextEditingController _confirmedPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          height: context.screenHeight,
          child: BlocBuilder<SignUpBloc, SignUpState>(
            builder: (context, state) => Form(
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
                    onChanged: (firstname) => context
                        .read<SignUpBloc>()
                        .add(SignUpFirstnameChanged(firstname)),
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
                    onChanged: (lastname) => context
                        .read<SignUpBloc>()
                        .add(SignUpLastnameChanged(lastname)),
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
                    onChanged: (email) => context
                        .read<SignUpBloc>()
                        .add(SignUpEmailChanged(email)),
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
                    onChanged: (email) => context
                        .read<SignUpBloc>()
                        .add(SignUpPasswordChanged(email)),

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
                    onChanged: (email) => context
                        .read<SignUpBloc>()
                        .add(ConfirmedPasswordChanged(email)),
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
                      final email = _email.text;
                      final password = _password.text;
                      if (_formkey.currentState!.validate()) {
                        context.read<SignUpBloc>().add(
                              SignUpFormSubmitted(),
                            );
                      }
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
      ),
    );
  }
}
