import "package:service_masters/change_password/view/change_password_screen.dart";
import "package:service_masters/common/barrels.dart";
import "package:service_masters/common/components/snackbar/show_success_snackbar.dart";
import "package:service_masters/edit_profile/bloc/edit_profile_bloc.dart";

@RoutePage()
class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditProfileBloc, EditProfileState>(
      listener: (context, state) {
        if (state.status == FormzSubmissionStatus.inProgress) {
          ShowSuccessSnackBar.showCustomSnackBar(
            context: context,
            message: "Updating profile",
          );
        } else if (state.status == FormzSubmissionStatus.success) {
          ShowSuccessSnackBar.showCustomSnackBar(
            context: context,
            message: state.errorMessage ?? "Profile updated successfully",
          );
        } else if (state.status == FormzSubmissionStatus.failure) {
          ShowErrorSnackBar.showCustomSnackBar(
            context: context,
            content: state.errorMessage ?? "Profile update failed",
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "Edit Profile",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                const Spacer(),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const EditProfileScreen(),
                    ),
                  ),
                  child: Stack(
                    children: [
                      ProfileImageWidget(
                        height: context.screenHeight / 6,
                        width: context.screenHeight / 6,
                        imageString: tPic,
                        border: Border.all(color: tPrimaryColor, width: 5),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: tPrimaryColor,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Icon(
                            CustomIcons.camera,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                CustomTextFormField(
                  autofillHints: const [AutofillHints.telephoneNumber],
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter a valid name";
                    } else {
                      return "";
                    }
                  },
                  // controller: signUpController.phoneNo,
                  keyboardType: TextInputType.name,

                  prefixIcon: const Icon(CustomIcons.user),
                  labelText: tFirstName,
                  hintText: tFirstName,
                ),
                CustomTextFormField(
                  autofillHints: const [AutofillHints.telephoneNumber],
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter a valid name";
                    } else {
                      return "";
                    }
                  },
                  // controller: signUpController.phoneNo,
                  keyboardType: TextInputType.name,

                  prefixIcon: const Icon(CustomIcons.user),
                  labelText: tLastName,
                  hintText: tLastName,
                ),
                CustomTextFormField(
                  autofillHints: const [AutofillHints.email],
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter a valid name";
                    } else {
                      return "";
                    }
                  },
                  // controller: signUpController.phoneNo,
                  keyboardType: TextInputType.emailAddress,

                  prefixIcon: const Icon(CustomIcons.envelope),
                  labelText: tEmail,
                  hintText: tEmail,
                ),
                CustomTextFormField(
                  autofillHints: const [AutofillHints.telephoneNumber],
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter a valid name";
                    } else {
                      return "";
                    }
                  },
                  // controller: signUpController.phoneNo,
                  keyboardType: TextInputType.phone,

                  prefixIcon: const Icon(CustomIcons.callOutgoing),
                  labelText: tPhoneNo,
                  hintText: tPhoneNo,
                ),
                const Spacer(),
                const PrimaryButton(
                  label: "Save",
                ),
                const Spacer(
                  flex: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(tForgetPassword),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (context) => ChangePasswordScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        " Reset it",
                        style: TextStyle(color: tPrimaryColor),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        );
      },
    );
  }
}
