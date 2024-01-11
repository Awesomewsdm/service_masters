import "package:service_masters/common/barrels.dart";

@RoutePage()
class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({super.key});

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: context.screenHeight,
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                const SafeArea(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: CircledArrowBackIcon(),
                  ),
                ),
                const FormHeader(
                  subtitle: "Reset your password to continue",
                  title: "Change Password",
                ),
                const Spacer(
                  flex: 3,
                ),
                CustomTextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter a valid name";
                    } else {
                      return "";
                    }
                  },
                  // controller: signUpController.phoneNo,
                  keyboardType: TextInputType.visiblePassword,

                  prefixIcon: const Icon(CustomIcons.lock),
                  suffixIcon: const Icon(CustomIcons.eyeCrossed),
                  labelText: "Old Password",
                  hintText: "Old Password",
                ),
                CustomTextFormField(
                  autofillHints: const [AutofillHints.newPassword],
                  // obscureText: signUpController.passwordVisible.value,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter a valid password";
                    } else {
                      return "";
                    }
                  },
                  // controller: signUpController.password,
                  keyboardType: TextInputType.visiblePassword,

                  prefixIcon: const Icon(CustomIcons.lock),
                  suffixIcon: IconButton(
                    icon: const Icon(CustomIcons.eye),
                    onPressed: () {},
                  ),
                  labelText: "New Password",
                  hintText: tPassword,
                ),
                CustomTextFormField(
                  autofillHints: const [AutofillHints.newPassword],
                  // obscureText: signUpController.passwordVisible.value,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter a valid password";
                    } else {
                      return "null";
                    }
                  },
                  // controller: signUpController.password,
                  keyboardType: TextInputType.visiblePassword,

                  prefixIcon: const Icon(CustomIcons.lock),
                  suffixIcon: IconButton(
                    icon: const Icon(CustomIcons.eye),
                    onPressed: () {},
                  ),
                  labelText: "Confirm Password",
                  hintText: "Confirm Password",
                ),
                const Spacer(),
                PrimaryButton(
                  onPressed: () {
                    context.router.push(ChangePasswordRoute());
                  },
                  label: "Change Password",
                ),
                const Spacer(
                  flex: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(tAlreadyHaveAnAccount),
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
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
