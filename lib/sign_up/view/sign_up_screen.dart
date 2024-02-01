import "package:service_masters/common/barrels.dart";

@RoutePage()
class SignUpScreen extends HookWidget {
  const SignUpScreen({super.key});
  static Page<void> page() => const MaterialPage<void>(child: SignUpScreen());

  @override
  Widget build(BuildContext context) {
    final formkey = useMemoized(GlobalKey<FormState>.new);
    final email = useTextEditingController();
    final password = useTextEditingController();
    final confirmedPassword = useTextEditingController();

    return LoadingOverlay(
      child: BlocConsumer<SignUpBloc, SignUpState>(
        listener: (context, state) {
          if (state.status.isInProgress) {
            LoadingOverlay.of(context).show();
          } else if (state.status.isSuccess) {
            LoadingOverlay.of(context).hide();
            context.router.push(EnterPhoneRoute());
          } else if (state.status.isFailure) {
            LoadingOverlay.of(context).hide();

            ShowErrorSnackBar.showCustomSnackBar(
              context: context,
              content: state.errorMessage ?? "Sign Up Failure",
            );
          }
        },
        builder: (context, state) => Scaffold(
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(15),
              height: context.screenHeight,
              child: Form(
                key: formkey,
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
                      key: const Key("signUpForm_emailInput_textField"),
                      autofillHints: const [AutofillHints.email],
                      controller: email,
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (email) => context
                          .read<SignUpBloc>()
                          .add(SignUpEmailChanged(email)),
                      errorText: state.email.displayError != null
                          ? state.emailErrorMessage
                          : null,
                      prefixIcon: const Icon(CustomIcons.envelope),
                      labelText: tEmail,
                      hintText: tEmail,
                    ),
                    CustomTextFormField(
                      key: const Key("signUpForm_passwordInput_textField"),
                      autofillHints: const [AutofillHints.newPassword],
                      obscureText: !state.isPasswordVisible,
                      controller: password,
                      keyboardType: TextInputType.visiblePassword,
                      onChanged: (email) => context
                          .read<SignUpBloc>()
                          .add(SignUpPasswordChanged(email)),
                      errorText: state.password.displayError != null
                          ? state.passwordErrorMessage
                          : null,
                      prefixIcon: const Icon(CustomIcons.lock),
                      suffixIcon: IconButton(
                        icon: state.isPasswordVisible
                            ? const Icon(CustomIcons.eyeCrossed)
                            : const Icon(CustomIcons.eye),
                        onPressed: () {
                          context
                              .read<SignUpBloc>()
                              .add(TogglePasswordVisibility());
                        },
                      ),
                      labelText: tPassword,
                      hintText: tPassword,
                    ),
                    CustomTextFormField(
                      key: const Key(
                        "signUpForm_confirmedPasswordInput_textField",
                      ),
                      autofillHints: const [AutofillHints.newPassword],
                      obscureText: !state.isConfirmPasswordVisible,
                      controller: confirmedPassword,
                      keyboardType: TextInputType.visiblePassword,
                      onChanged: (email) => context
                          .read<SignUpBloc>()
                          .add(ConfirmedPasswordChanged(email)),
                      errorText: state.confirmedPassword.displayError != null
                          ? "Passwords do not match"
                          : null,
                      prefixIcon: const Icon(CustomIcons.lock),
                      suffixIcon: IconButton(
                        icon: state.isConfirmPasswordVisible
                            ? const Icon(CustomIcons.eyeCrossed)
                            : const Icon(CustomIcons.eye),
                        onPressed: () {
                          context
                              .read<SignUpBloc>()
                              .add(ToggleConfirmPasswordVisibility());
                        },
                      ),
                      labelText: "Confirm Password",
                      hintText: "Confirm Password",
                    ),
                    const Spacer(),
                    PrimaryButton(
                      key: const Key("signUpForm_continue_raisedButton"),
                      onPressed: () {
                        context.read<SignUpBloc>().add(
                              SignUpFormSubmitted(
                                email: email.text,
                                password: password.text,
                              ),
                            );
                      },
                      label: tSignup,
                      backgroundColor:
                          state.isValid ? tPrimaryColor : Colors.grey,
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
                    SocialLoginButton(
                      image: tGoogleLogo,
                      label: tGoogleLoginLabel,
                      width: 20.0,
                      onPressed: () {
                        context.read<SignUpBloc>().add(
                              SignUpWithGoogle(),
                            );
                      },
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
                            context.router.push(const SignInRoute());
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
      ),
    );
  }
}
