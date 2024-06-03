import "package:service_masters/common/barrels.dart";

@RoutePage()
class SignUpScreen extends HookWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey = useMemoized(GlobalKey<FormState>.new);
    final emailController = useTextEditingController();
    final password = useTextEditingController();
    final confirmedPassword = useTextEditingController();

    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) {
        if (state.status.isInProgress) {
          Utils.showLoadingDialog(context: context);
        } else if (state.status.isSuccess) {
          Navigator.of(context).pop();
          context.router.push(EnterPhoneRoute());
        } else if (state.status.isFailure) {
          Navigator.of(context).pop();
          Utils.showCustomErrorSnackBar(
            context: context,
            content: state.errorMessage ?? "",
          );
        }
      },
      child: Scaffold(
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
                  EmailFormField(emailController: emailController),
                  PasswordFormField(password: password),
                  ConfirmPasswordFormField(
                    confirmedPassword: confirmedPassword,
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  SignUpButton(
                    emailController: emailController,
                    password: password,
                  ),
                  const Spacer(),
                  const DividerWidget(),
                  const Spacer(),
                  SocialLoginButton(
                    image: tGoogleLogo,
                    label: "Continue with Google",
                    onPressed: () {
                      context.read<SignUpBloc>().add(
                            const SignUpEvent.signUpWithGoogle(),
                          );
                    },
                  ),
                  const Spacer(
                    flex: 4,
                  ),
                  const AlreadyHaveAnAccountWidget(),
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
