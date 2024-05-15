import "package:service_masters/common/barrels.dart";

class PasswordFormField extends StatelessWidget {
  const PasswordFormField({
    super.key,
    required this.password,
  });

  final TextEditingController password;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return CustomTextFormField(
          key: const Key("signUpForm_passwordInput_textField"),
          autofillHints: const [AutofillHints.newPassword],
          obscureText: !state.isPasswordVisible,
          controller: password,
          keyboardType: TextInputType.visiblePassword,
          onChanged: (password) => context
              .read<SignUpBloc>()
              .add(SignUpEvent.onPasswordChanged(password: password)),
          errorText: state.password.displayError != null
              ? state.passwordErrorMessage
              : null,
          prefixIcon: const Icon(CustomIcons.lock),
          suffixIcon: IconButton(
            icon: state.isPasswordVisible
                ? const Icon(CustomIcons.eyeCrossed)
                : const Icon(CustomIcons.eye),
            onPressed: () {
              context.read<SignUpBloc>().add(
                    const SignUpEvent.onPasswordVisibilityToggled(),
                  );
            },
          ),
          labelText: tPassword,
          hintText: tPassword,
        );
      },
    );
  }
}
