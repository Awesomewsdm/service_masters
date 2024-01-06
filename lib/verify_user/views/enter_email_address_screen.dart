import "package:home_service_app/common/barrels.dart";

@RoutePage()
class EnterEmailScreen extends StatelessWidget {
  EnterEmailScreen({super.key});

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
                  subtitle: tResetViaEMailSubtitle,
                  title: tResetViaEMail,
                ),
                const Spacer(),
                CustomTextFormField(
                  autofillHints: const [AutofillHints.email],
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter a valid email address";
                    } else {
                      return "null";
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: const Icon(Icons.email_outlined),
                  labelText: tEmail,
                  hintText: tEmail,
                ),
                const Spacer(),
                PrimaryButton(
                  onPressed: () {
                    context.router.push(const VerificationRoute());
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
                        context.router.push(SignInRoute());
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
  }
}
