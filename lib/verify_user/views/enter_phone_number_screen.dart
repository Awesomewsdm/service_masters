import "package:service_masters/common/barrels.dart";
import "package:service_masters/verify_user/cubit/verify_user_cubit.dart";

@RoutePage()
class EnterPhoneScreen extends StatelessWidget {
  EnterPhoneScreen({super.key});

  final _formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VerifyUserCubit, VerifyUserState>(
      listener: (context, state) {
        if (state.isLoading) {
          LoadingOverlay.of(context).show();
        } else if (state.isCodeSent == true) {
          context.router.push(const VerificationRoute());
        } else if (state.errorMessage != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage!),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
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
                    PrimaryButton(
                      onPressed: () {
                        // final phoneNumber = emailController.text;
                        // context.read<VerifyUserCubit>().sendOTP(phoneNumber);
                        context.router.push(const PersonalDetailsRoute());
                      },
                      label: tSendPasswordResetLink,
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
        );
      },
    );
  }
}
