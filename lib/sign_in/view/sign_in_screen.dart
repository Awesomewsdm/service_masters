import "package:formz/formz.dart";
import "package:home_service_app/common/barrels.dart";
import "package:home_service_app/common/components/snackbar/show_error_snackbar.dart";

@RoutePage()
class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  static Page<void> page() => MaterialPage<void>(child: SignInScreen());

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInBloc, SignInState>(
      listener: (context, state) {
        if (state.status.isFailure) {
          ShowErrorSnackBar.showCustomSnackBar(
            context: context,
            content: state.errorMessage ?? "Authentication Failure",
          );
        } else if (state.status.isInProgress) {
          showCustomBottomsheet(
            context,
            const Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (state.status.isSuccess) {
          context.router.push(const HomeRoute());
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: context.screenHeight,
            padding: const EdgeInsets.all(tDefaultSize),
            child: BlocBuilder<SignInBloc, SignInState>(
              // buildWhen: (previous, current) => previous.email != current.email,
              builder: (context, state) {
                return Form(
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
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (email) => context
                            .read<SignInBloc>()
                            .add(SignInEmailChanged(email)),
                        errorText: state.email.displayError != null
                            ? "Please enter a valid email"
                            : null,
                        prefixIcon: const Icon(CustomIcons.envelope),
                        labelText: tEmail,
                        hintText: tEmail,
                      ),
                      CustomTextFormField(
                        autofillHints: const [AutofillHints.newPassword],
                        obscureText: !state.isPasswordVisible,
                        controller: _passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        onChanged: (email) => context
                            .read<SignInBloc>()
                            .add(SignInPasswordChanged(email)),
                        errorText: state.password.displayError != null
                            ? "Password must be at least 8 characters long and include a combination of uppercase letters, lowercase letters, and digits."
                            : null,
                        prefixIcon: const Icon(CustomIcons.lock),
                        suffixIcon: IconButton(
                          icon: state.isPasswordVisible
                              ? const Icon(CustomIcons.eyeCrossed)
                              : const Icon(CustomIcons.eye),
                          onPressed: () {
                            context
                                .read<SignInBloc>()
                                .add(ToggleSignInPasswordVisibility());
                          },
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
                                                context.router
                                                    .push(EnterEmailRoute());
                                              },
                                              label: "Email Verification",
                                              icon: tCamera2,
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(
                                                tPrimaryColor,
                                              ),
                                            ),
                                            SecondaryButtonWithIcon(
                                              onPressed: () {
                                                context.router
                                                    .push(EnterPhoneRoute());
                                              },
                                              label: "Phone Verification",
                                              icon: tGalleryImport,
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(
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
                        onPressed: state.isValid
                            ? () {
                                final email = _emailController.text;
                                final password = _passwordController.text;
                                context.read<SignInBloc>().add(
                                      SignInFormSubmitted(
                                        email: email,
                                        password: password,
                                      ),
                                    );
                              }
                            : null,
                        label: tLogin,
                        backgroundColor:
                            state.isValid ? tPrimaryColor : Colors.grey,
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
                              context.router.push(SignUpRoute());
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
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
