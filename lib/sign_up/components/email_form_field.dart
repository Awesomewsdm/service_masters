import "package:service_masters/common/barrels.dart";

class EmailFormField extends StatelessWidget {
  const EmailFormField({
    required this.emailController,
    super.key,
  });

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return CustomTextFormField(
          key: const Key("signUpForm_emailInput_textField"),
          autofillHints: const [AutofillHints.email],
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          onChanged: (email) => context
              .read<SignUpBloc>()
              .add(SignUpEvent.onEmailChanged(email: email)),
          errorText:
              state.email.displayError != null ? state.emailErrorMessage : null,
          prefixIcon: const Icon(CustomIcons.envelope),
          labelText: tEmail,
          hintText: tEmail,
        );
      },
    );
  }
}
