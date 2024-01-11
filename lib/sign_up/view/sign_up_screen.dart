import "package:service_masters/common/barrels.dart";

@RoutePage()
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static Page<void> page() => const MaterialPage<void>(child: SignUpScreen());

  // final _formkey = GlobalKey<FormState>();
  // final TextEditingController _email = TextEditingController();
  // final TextEditingController _password = TextEditingController();
  // final TextEditingController _firstname = TextEditingController();
  // final TextEditingController _lastname = TextEditingController();
  // final TextEditingController _confirmedPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container();
    // LoadingOverlay(
    //   child: BlocListener<SignUpBloc, SignUpState>(
    //     listener: (context, state) {
    //       if (state.status.isInProgress) {
    //         LoadingOverlay.of(context).show();
    //       } else if (state.status.isSuccess) {
    //         LoadingOverlay.of(context).hide();
    //         context.router.push(const HomeRoute());
    //       } else if (state.status.isFailure) {
    //         LoadingOverlay.of(context).hide();

    //         ShowErrorSnackBar.showCustomSnackBar(
    //           context: context,
    //           content: state.errorMessage ?? "Sign Up Failure",
    //         );
    //       }
    //     },
    //     child: Scaffold(
    //       body: SingleChildScrollView(
    //         child: Container(
    //           padding: const EdgeInsets.all(15),
    //           height: context.screenHeight,
    //           child: BlocBuilder<SignUpBloc, SignUpState>(
    //             builder: (context, state) => Form(
    //               key: _formkey,
    //               child: Column(
    //                 children: [
    //                   const FormHeader(
    //                     subtitle: tSignUpSubTitle,
    //                     title: tSignUpTitle,
    //                   ),
    //                   const Spacer(
    //                     flex: 3,
    //                   ),
    //                   CustomTextFormField(
    //                     key: const Key("signUpForm_firstNameInput_textField"),
    //                     autofillHints: const [AutofillHints.name],
    //                     controller: _firstname,
    //                     onChanged: (firstname) => context
    //                         .read<SignUpBloc>()
    //                         .add(SignUpFirstnameChanged(firstname)),
    //                     errorText: state.firstName.displayError != null
    //                         ? "Please enter a valid name"
    //                         : null,
    //                     keyboardType: TextInputType.name,
    //                     hintText: "First Name",
    //                     labelText: "First Name",
    //                     prefixIcon: const Icon(CustomIcons.user),
    //                   ),
    //                   CustomTextFormField(
    //                     key: const Key("signUpForm_lastNameInput_textField"),
    //                     autofillHints: const [AutofillHints.name],
    //                     controller: _lastname,
    //                     keyboardType: TextInputType.name,
    //                     onChanged: (lastname) => context
    //                         .read<SignUpBloc>()
    //                         .add(SignUpLastnameChanged(lastname)),
    //                     errorText: state.lastName.displayError != null
    //                         ? "Please enter a valid name"
    //                         : null,
    //                     prefixIcon: const Icon(CustomIcons.user),
    //                     labelText: tLastName,
    //                     hintText: tLastName,
    //                   ),
    //                   CustomTextFormField(
    //                     key: const Key("signUpForm_emailInput_textField"),
    //                     autofillHints: const [AutofillHints.email],
    //                     controller: _email,
    //                     keyboardType: TextInputType.emailAddress,
    //                     onChanged: (email) => context
    //                         .read<SignUpBloc>()
    //                         .add(SignUpEmailChanged(email)),
    //                     errorText: state.email.displayError != null
    //                         ? state.emailErrorMessage
    //                         : null,
    //                     prefixIcon: const Icon(CustomIcons.envelope),
    //                     labelText: tEmail,
    //                     hintText: tEmail,
    //                   ),
    //                   CustomTextFormField(
    //                     key: const Key("signUpForm_passwordInput_textField"),
    //                     autofillHints: const [AutofillHints.newPassword],
    //                     obscureText: !state.isPasswordVisible,
    //                     controller: _password,
    //                     keyboardType: TextInputType.visiblePassword,
    //                     onChanged: (email) => context
    //                         .read<SignUpBloc>()
    //                         .add(SignUpPasswordChanged(email)),
    //                     errorText: state.password.displayError != null
    //                         ? state.passwordErrorMessage
    //                         : null,
    //                     prefixIcon: const Icon(CustomIcons.lock),
    //                     suffixIcon: IconButton(
    //                       icon: state.isPasswordVisible
    //                           ? const Icon(CustomIcons.eyeCrossed)
    //                           : const Icon(CustomIcons.eye),
    //                       onPressed: () {
    //                         context
    //                             .read<SignUpBloc>()
    //                             .add(TogglePasswordVisibility());
    //                       },
    //                     ),
    //                     labelText: tPassword,
    //                     hintText: tPassword,
    //                   ),
    //                   CustomTextFormField(
    //                     key: const Key(
    //                       "signUpForm_confirmedPasswordInput_textField",
    //                     ),
    //                     autofillHints: const [AutofillHints.newPassword],
    //                     obscureText: !state.isConfirmPasswordVisible,
    //                     controller: _confirmedPassword,
    //                     keyboardType: TextInputType.visiblePassword,
    //                     onChanged: (email) => context
    //                         .read<SignUpBloc>()
    //                         .add(ConfirmedPasswordChanged(email)),
    //                     errorText: state.confirmedPassword.displayError != null
    //                         ? "Passwords do not match"
    //                         : null,
    //                     prefixIcon: const Icon(CustomIcons.lock),
    //                     suffixIcon: IconButton(
    //                       icon: state.isConfirmPasswordVisible
    //                           ? const Icon(CustomIcons.eyeCrossed)
    //                           : const Icon(CustomIcons.eye),
    //                       onPressed: () {
    //                         context
    //                             .read<SignUpBloc>()
    //                             .add(ToggleConfirmPasswordVisibility());
    //                       },
    //                     ),
    //                     labelText: "Confirm Password",
    //                     hintText: "Confirm Password",
    //                   ),
    //                   const Spacer(),
    //                   PrimaryButton(
    //                     key: const Key("signUpForm_continue_raisedButton"),
    //                     onPressed: () {
    //                       context.read<SignUpBloc>().add(
    //                             SignUpFormSubmitted(
    //                               email: _email.text,
    //                               password: _password.text,
    //                             ),
    //                           );
    //                     },
    //                     label: tSignup,
    //                     backgroundColor: state.isValid
    //                         ? tPrimaryColor
    //                         : tPrimaryColor.withOpacity(0.5),
    //                   ),
    //                   const Spacer(
    //                     flex: 2,
    //                   ),
    //                   const Row(
    //                     children: [
    //                       Expanded(
    //                         child: Divider(
    //                           thickness: 2,
    //                         ),
    //                       ),
    //                       Padding(
    //                         padding: EdgeInsets.symmetric(horizontal: 8.0),
    //                         child: Text("Or"),
    //                       ),
    //                       Expanded(
    //                         child: Divider(
    //                           thickness: 2,
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                   const Spacer(
    //                     flex: 2,
    //                   ),
    //                   SocialLoginButton(
    //                     image: tGoogleLogo,
    //                     label: tGoogleLoginLabel,
    //                     width: 20.0,
    //                     onPressed: () {
    //                       context.read<SignUpBloc>().add(
    //                             SignUpWithGoogle(),
    //                           );
    //                     },
    //                   ),
    //                   const Spacer(
    //                     flex: 4,
    //                   ),
    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.center,
    //                     children: [
    //                       const Text(tAlreadyHaveAnAccount),
    //                       InkWell(
    //                         onTap: () {
    //                           context.router.push(const SignInRoute());
    //                         },
    //                         child: const Text(
    //                           tLogin,
    //                           style: TextStyle(color: tPrimaryColor),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                   const Spacer(),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
