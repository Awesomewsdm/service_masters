import "package:service_masters/common/barrels.dart";
import "package:service_masters/verify_user/cubit/verify_user_cubit.dart";

@RoutePage()
class EnterPhoneScreen extends StatelessWidget {
  EnterPhoneScreen({super.key});

  final _formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          VerifyUserStateCubit(), // Create an instance of VerifyUserStateCubit
      child: BlocListener<VerifyUserStateCubit, VerifyUserState>(
        listener: (context, state) {
          // Handle state changes here
          if (state.errorMessage != null) {
            // Show an error message to the user
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorMessage!),
                backgroundColor: Colors.red,
              ),
            );
          } else if (state.user != null) {
            // User is authenticated, navigate to the next screen
            context.router.push(const VerificationRoute());
          }
        },
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(tDefaultSize),
              height: MediaQuery.sizeOf(context).height,
              child: Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SafeArea(child: CircledArrowBackIcon()),
                    const FormHeader(
                      subtitle: tResetViaPhoneSubtitle,
                      title: tResetViaPhone,
                    ),
                    const Spacer(),
                    CustomTextFormField(
                      autofillHints: const [AutofillHints.email],
                      onChanged: (p0) {},
                      controller: emailController,
                      keyboardType: TextInputType.phone,
                      prefixIcon: const Icon(Icons.phone),
                      labelText: tPhoneNo,
                      hintText: tPhoneNo,
                    ),
                    const Spacer(),
                    BlocBuilder<VerifyUserStateCubit, VerifyUserState>(
                      builder: (context, state) {
                        return PrimaryButton(
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              final phoneNumber = emailController.text;
                              context
                                  .read<VerifyUserStateCubit>()
                                  .sendOTP(phoneNumber);
                            }
                          },
                          label: tSendPasswordResetLink,
                        );
                      },
                    ),
                    const Spacer(
                      flex: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(tRememberPassword),
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
