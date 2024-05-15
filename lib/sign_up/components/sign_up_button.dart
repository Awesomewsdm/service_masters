import "package:service_masters/common/barrels.dart";

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
    required this.emailController,
    required this.password,
  });

  final TextEditingController emailController;
  final TextEditingController password;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<SignUpBloc, SignUpState, bool>(
      selector: (state) {
        return state.isValid;
      },
      builder: (context, isValid) {
        return PrimaryButton(
          key: const Key("signUpForm_continue_raisedButton"),
          onPressed: () {
            context.read<SignUpBloc>().add(
                  SignUpEvent.onCredentialsSubmit(
                    email: emailController.text,
                    password: password.text,
                  ),
                );
          },
          label: tSignup,
          backgroundColor: isValid ? tPrimaryColor : Colors.grey,
        );
      },
    );
  }
}
