import "package:service_masters/common/barrels.dart";
import "package:service_masters/sign_in/components/sign_in_bottomsheet.dart";

@RoutePage()
class SignInScreen extends HookWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
    //   final emailController = useTextEditingController();
    //   final passwordController = useTextEditingController();
    //   final formKey = useMemoized(GlobalKey<FormState>.new);

    //   return BlocConsumer<SignInBloc, SignInState>(
    //     listener: (context, state) {
    //       if (state.status.isInProgress) {
    //         showCustomDialog(context);
    //       } else if (state.status.isFailure) {
    //         Navigator.pop(context);
    //         ShowErrorSnackBar.showCustomSnackBar(
    //           context: context,
    //           content: state.errorMessage ?? "Authentication Failure",
    //         );
    //       } else if (state.status.isSuccess) {
    //         context.router.push(EnterPhoneRoute());
    //       }
    //     },
    //     builder: (context, state) => Scaffold(
    //       body: SingleChildScrollView(
    //         child: Container(
    //           height: context.screenHeight,
    //           padding: const EdgeInsets.all(tDefaultSize),
    //           child: Form(
    //             key: formKey,
    //             child: Column(
    //               children: [
    //                 SafeArea(
    //                   child: Image.asset(
    //                     tAuth1,
    //                     height: 100,
    //                     width: 100,
    //                     fit: BoxFit.fitHeight,
    //                   ),
    //                 ),
    //                 const FormHeader(
    //                   title: "Welcome back,",
    //                   subtitle: "Sign-in to start booking an artisan!",
    //                 ),
    //                 const Spacer(),
    //                 CustomTextFormField(
    //                   autofillHints: const [AutofillHints.email],
    //                   controller: emailController,
    //                   keyboardType: TextInputType.emailAddress,
    //                   // onChanged: (email) => context
    //                   //     .read<SignInBloc>()
    //                   //     .add(SignInEmailChanged(email)),
    //                   errorText: state.email.displayError != null
    //                       ? state.emailErrorMessage
    //                       : null,
    //                   prefixIcon: const Icon(CustomIcons.envelope),
    //                   labelText: tEmail,
    //                   hintText: tEmail,
    //                 ),
    //                 CustomTextFormField(
    //                   autofillHints: const [AutofillHints.newPassword],
    //                   obscureText: !state.isPasswordVisible,
    //                   controller: passwordController,
    //                   keyboardType: TextInputType.visiblePassword,
    //                   // onChanged: (email) => context
    //                   //     .read<SignInBloc>()
    //                   //     .add(SignInPasswordChanged(email)),
    //                   errorText: state.password.displayError != null
    //                       ? state.passwordErrorMessage
    //                       : null,
    //                   prefixIcon: const Icon(CustomIcons.lock),
    //                   suffixIcon: IconButton(
    //                     icon: state.isPasswordVisible == true
    //                         ? const Icon(CustomIcons.eyeCrossed)
    //                         : const Icon(CustomIcons.eye),
    //                     onPressed: () {
    //                       // context
    //                       //     .read<SignInBloc>()
    //                       //     .add(ToggleSignInPasswordVisibility());
    //                     },
    //                   ),
    //                   labelText: tPassword,
    //                   hintText: tPassword,
    //                 ),
    //                 const Spacer(),
    //                 Row(
    //                   children: [
    //                     const Spacer(),
    //                     ClickableText(
    //                       onTap: () {
    //                         showCustomBottomsheet(
    //                           context,
    //                           DraggableScrollableSheet(
    //                             initialChildSize: 0.35,
    //                             minChildSize: 0.2,
    //                             maxChildSize: 0.8,
    //                             expand: false,
    //                             builder: (
    //                               BuildContext context,
    //                               ScrollController scrollController,
    //                             ) {
    //                               return const SignInScreenBottomsheet();
    //                             },
    //                           ),
    //                         );
    //                       },
    //                       text: tForgetPassword,
    //                       textColor: tPrimaryColor,
    //                     ),
    //                   ],
    //                 ),
    //                 const Spacer(),
    //                 PrimaryButton(
    //                   onPressed: state.isValid
    //                       ? () {
    //                           final email = emailController.text;
    //                           final password = passwordController.text;
    //                           // context.read<SignInBloc>().add(
    //                           //       SignInFormSubmitted(
    //                           //         email: email,
    //                           //         password: password,
    //                           //       ),
    //                           //     );
    //                           FocusScope.of(context).unfocus();
    //                           emailController.clear();
    //                           passwordController.clear();
    //                           formKey.currentState!.reset();
    //                         }
    //                       : null,
    //                   label: tLogin,
    //                   backgroundColor:
    //                       state.isValid ? tPrimaryColor : Colors.grey,
    //                 ),
    //                 const Spacer(),
    //                 const Row(
    //                   children: [
    //                     Expanded(
    //                       child: Divider(
    //                         thickness: 2,
    //                       ),
    //                     ),
    //                     Padding(
    //                       padding: EdgeInsets.symmetric(horizontal: 8.0),
    //                       child: Text("Or"),
    //                     ),
    //                     Expanded(
    //                       child: Divider(
    //                         thickness: 2,
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //                 const Spacer(),
    //                 SocialLoginButton(
    //                   image: tGoogleLogo,
    //                   label: tGoogleLoginLabel,
    //                   onPressed: () {
    //                     // context.read<SignInBloc>().add(
    //                     //       SignInWithGoogle(),
    //                     //     );
    //                   },
    //                 ),
    //                 const Spacer(
    //                   flex: 5,
    //                 ),
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   children: [
    //                     const Text(tDontHaveAnAccount),
    //                     InkWell(
    //                       onTap: () {
    //                         context.router.push(const SignUpRoute());
    //                       },
    //                       child: const Text(
    //                         tSignup,
    //                         style: TextStyle(color: tPrimaryColor),
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   );
  }
}
