import "package:service_masters/common/barrels.dart";
import "package:service_masters/sign_in/components/sign_in_bottomsheet.dart";

@RoutePage()
class SignInScreen extends HookWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new);

    return BlocConsumer<SignInBloc, SignInState>(
      listener: (context, state) {
        if (state.status.isInProgress) {
          Utils.showAlertDialog(
            icon: const Center(child: CircularProgressIndicator()),
            context: context,
            info: "Signing in...",
          );
        } else if (state.status.isFailure) {
          Navigator.pop(context);
          Utils.showCustomErrorSnackBar(
            context: context,
            content: state.errorMessage ?? "Authentication Failure",
          );
        } else if (state.status.isSuccess) {
          context.router.push(EnterPhoneRoute());
        }
      },
      builder: (context, state) => Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: context.screenHeight,
            padding: const EdgeInsets.all(tDefaultSize),
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
                    subtitle: "Sign-in to start booking an artisan!",
                  ),
                  const Spacer(),
                  CustomTextFormField(
                    autofillHints: const [AutofillHints.email],
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (email) => context.read<SignInBloc>().add(
                          SignInEvent.onEmailChanged(email: email),
                        ),
                    errorText: state.email.displayError != null
                        ? state.emailErrorMessage
                        : null,
                    prefixIcon: const Icon(CustomIcons.envelope),
                    labelText: tEmail,
                    hintText: tEmail,
                  ),
                  CustomTextFormField(
                    autofillHints: const [AutofillHints.newPassword],
                    obscureText: !state.isPasswordVisible,
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    onChanged: (password) => context.read<SignInBloc>().add(
                          SignInEvent.onPasswordChanged(password: password),
                        ),
                    errorText: state.password.displayError != null
                        ? state.passwordErrorMessage
                        : null,
                    prefixIcon: const Icon(CustomIcons.lock),
                    suffixIcon: IconButton(
                      icon: state.isPasswordVisible == true
                          ? const Icon(CustomIcons.eyeCrossed)
                          : const Icon(CustomIcons.eye),
                      onPressed: () {
                        // context
                        //     .read<SignInBloc>()
                        //     .add(ToggleSignInPasswordVisibility());
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
                          Utils.showCustomBottomsheet(
                            context: context,
                            widget: const SignInScreenBottomsheet(),
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
                            context.read<SignInBloc>().add(
                                  SignInEvent.onCredentialsSubmit(
                                    onSuccess: (customer) {},
                                    onError: (error) {},
                                  ),
                                );
                            FocusScope.of(context).unfocus();
                          }
                        : null,
                    label: tLogin,
                    backgroundColor:
                        state.isValid ? tPrimaryColor : Colors.grey,
                  ),
                  const Spacer(),
                  const DividerWidget(),
                  const Spacer(),
                  SocialLoginButton(
                    image: tGoogleLogo,
                    label: "Continue with Google",
                    onPressed: () {
                      context
                          .read<SignInBloc>()
                          .add(const SignInEvent.signInWithGoogle());
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
    );
  }
}
