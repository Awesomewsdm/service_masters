import "package:service_masters/common/barrels.dart";

@RoutePage()
class EditProfileScreen extends HookWidget {
  const EditProfileScreen({
    super.key,
    this.customer,
  });
  final Customer? customer;
  @override
  Widget build(BuildContext context) {
    final firstName = useTextEditingController(text: customer!.firstName);
    final lastName = useTextEditingController(text: customer!.lastName);
    final phoneNumber = useTextEditingController(text: customer!.phoneNumber);
    final email = useTextEditingController(text: customer!.email);

    return BlocConsumer<EditProfileBloc, EditProfileState>(
      listener: (context, state) {
        if (state.status == FormzSubmissionStatus.inProgress) {
          Utils.showCustomSuccessSnackBar(
            context: context,
            message: "Updating profile",
          );
        } else if (state.status == FormzSubmissionStatus.success) {
          Utils.showCustomSuccessSnackBar(
            context: context,
            message: state.errorMessage ?? "Profile updated successfully",
          );
        } else if (state.status == FormzSubmissionStatus.failure) {
          Utils.showCustomErrorSnackBar(
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
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(15),
              height: context.screenHeight,
              child: Column(
                children: [
                  const Spacer(),
                  // BlocBuilder<ImagePickerBloc, ImageUploadState>(
                  //   builder: (context, state) {
                  //     return GestureDetector(
                  //       onTap: () => showCustomBottomsheet(
                  //         context,
                  //         const ImageUploadBottomsheet(),
                  //       ),
                  //       child: Stack(
                  //         children: [
                  //           ProfileImageWidget(
                  //             height: context.screenHeight / 6,
                  //             width: context.screenHeight / 6,
                  //             imageString: customer!.profilePicture.toString(),
                  //             border:
                  //                 Border.all(color: tPrimaryColor, width: 5),
                  //           ),
                  //           Positioned(
                  //             bottom: 0,
                  //             right: 0,
                  //             child: Container(
                  //               height: 35,
                  //               width: 35,
                  //               decoration: BoxDecoration(
                  //                 color: tPrimaryColor,
                  //                 borderRadius: BorderRadius.circular(100),
                  //               ),
                  //               child: const Icon(
                  //                 CustomIcons.camera,
                  //                 size: 20,
                  //                 color: Colors.white,
                  //               ),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     );
                  //   },
                  // ),
                  const Spacer(),
                  CustomTextFormField(
                    autofillHints: const [AutofillHints.name],
                    controller: firstName,
                    keyboardType: TextInputType.name,
                    onChanged: (firstName) {
                      context.read<EditProfileBloc>().add(
                            EditProfileEvent.firstNameChanged(
                              firstName,
                            ),
                          );
                    },
                    errorText: state.firstname.displayError != null
                        ? state.errorMessage
                        : null,
                    prefixIcon: const Icon(CustomIcons.user),
                    labelText: tFirstName,
                    hintText: tFirstName,
                  ),
                  CustomTextFormField(
                    autofillHints: const [AutofillHints.name],
                    onChanged: (lastName) {
                      context.read<EditProfileBloc>().add(
                            EditProfileEvent.lastNameChanged(
                              lastName,
                            ),
                          );
                    },
                    errorText: state.lastname.displayError != null
                        ? state.errorMessage
                        : null,
                    controller: lastName,
                    keyboardType: TextInputType.name,
                    prefixIcon: const Icon(CustomIcons.user),
                    labelText: tLastName,
                    hintText: tLastName,
                  ),
                  CustomTextFormField(
                    autofillHints: const [AutofillHints.email],
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (email) {
                      context.read<EditProfileBloc>().add(
                            EditProfileEvent.emailChangedChanged(
                              email,
                            ),
                          );
                    },
                    errorText: state.email.displayError != null
                        ? state.errorMessage
                        : null,
                    prefixIcon: const Icon(CustomIcons.envelope),
                    labelText: tEmail,
                    hintText: tEmail,
                  ),
                  CustomTextFormField(
                    autofillHints: const [AutofillHints.telephoneNumber],
                    onChanged: (phoneNo) {
                      context.read<EditProfileBloc>().add(
                            EditProfileEvent.phoneNumberChanged(
                              phoneNo,
                            ),
                          );
                    },
                    errorText: state.phoneNumber.displayError != null
                        ? state.errorMessage
                        : null,
                    controller: phoneNumber,
                    keyboardType: TextInputType.phone,
                    prefixIcon: const Icon(CustomIcons.call),
                    labelText: tPhoneNo,
                    hintText: tPhoneNo,
                  ),
                  const Spacer(),
                  PrimaryButton(
                    onPressed: () {
                      if (state.isValid) {
                        context.read<EditProfileBloc>().add(
                              EditProfileEvent.formSubmitted(
                                firstname: firstName.text,
                                lastname: lastName.text,
                                phoneNumber: phoneNumber.text
                                    .generateFormattedPhoneNumber(),
                                email: email.text,
                              ),
                            );
                      } else {
                        Utils.showCustomErrorSnackBar(
                          context: context,
                          content: "Please fill all fields",
                        );
                      }
                    },
                    label: "Save",
                  ),
                  const Spacer(
                    flex: 2,
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
          ),
        );
      },
    );
  }
}
