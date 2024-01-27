import "package:service_masters/common/barrels.dart";
import "package:service_masters/sign_in/bloc/sign_in_state.dart";

@RoutePage()
class SignInScreen extends HookWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    final formKey = useMemoized(GlobalKey<FormState>.new);

    return LoadingOverlay(
      child: BlocConsumer<SignInBloc, SignInState>(
        listener: (context, state) {
          if (state.status.isFailure) {
            ShowErrorSnackBar.showCustomSnackBar(
              context: context,
              content: state.errorMessage ?? "Authentication Failure",
            );
          } else if (state.status.isInProgress) {
            LoadingOverlay.of(context).show();
          } else if (state.status.isSuccess) {
            LoadingOverlay.of(context).hide();
            context.router.push(const HomeRoute());
          }
        },
        builder: (context, state) => Scaffold(
          body: SingleChildScrollView(
            child: Container(
              height: context.screenHeight,
              padding: const EdgeInsets.all(tDefaultSize),

              // buildWhen: (previous, current) => previous.email != current.email,

              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    SafeArea(
                      child: Image.asset(
                        tAuth1,
                        height: 100,
                        width: 100,
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
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (email) => context
                          .read<SignInBloc>()
                          .add(SignInEmailChanged(email)),
                      errorText: state.email.displayError != null
                          ? state.emailErrorMessage
                          : null,
                      prefixIcon: const Icon(CustomIcons.envelope),
                      labelText: tEmail,
                      hintText: tEmail,
                    ),
                    CustomTextFormField(
                      autofillHints: const [AutofillHints.newPassword],
                      obscureText: state.isPasswordVisible == true,
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      onChanged: (email) => context
                          .read<SignInBloc>()
                          .add(SignInPasswordChanged(email)),
                      errorText: state.password.displayError != null
                          ? state.passwordErrorMessage
                          : null,
                      prefixIcon: const Icon(CustomIcons.lock),
                      suffixIcon: IconButton(
                        icon: state.isPasswordVisible == true
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
                              final email = emailController.text;
                              final password = passwordController.text;
                              context.read<SignInBloc>().add(
                                    SignInFormSubmitted(
                                      email: email,
                                      password: password,
                                    ),
                                  );
                              FocusScope.of(context).unfocus();
                              emailController.clear();
                              passwordController.clear();
                              formKey.currentState!.reset();
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
                    SocialLoginButton(
                      image: tGoogleLogo,
                      label: tGoogleLoginLabel,
                      onPressed: () {
                        context.read<SignInBloc>().add(
                              SignInWithGoogle(),
                            );
                      },
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
                            context.router.push(const SignUpRoute());
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
        ),
      ),
    );
  }
}
