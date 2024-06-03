import "package:service_masters/common/barrels.dart";

class ConfirmPasswordFormField extends StatelessWidget {
  const ConfirmPasswordFormField({
    required this.confirmedPassword,
    super.key,
  });

  final TextEditingController confirmedPassword;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return CustomTextFormField(
          key: const Key(
            "signUpForm_confirmedPasswordInput_textField",
          ),
          autofillHints: const [AutofillHints.newPassword],
          obscureText: !state.isConfirmPasswordVisible,
          controller: confirmedPassword,
          keyboardType: TextInputType.visiblePassword,
          onChanged: (password) => context.read<SignUpBloc>().add(
                SignUpEvent.onConfirmedPasswordChanged(
                  value: password,
                ),
              ),
          errorText: state.confirmedPassword.displayError != null
              ? "Passwords do not match"
              : null,
          prefixIcon: const Icon(CustomIcons.lock),
          suffixIcon: IconButton(
            icon: state.isConfirmPasswordVisible
                ? const Icon(CustomIcons.eyeCrossed)
                : const Icon(CustomIcons.eye),
            onPressed: () {
              context.read<SignUpBloc>().add(
                    const SignUpEvent.onConfirmedPasswordVisibilityToggled(),
                  );
            },
          ),
          labelText: "Confirm Password",
          hintText: "Confirm Password",
        );
      },
    );
  }
}
