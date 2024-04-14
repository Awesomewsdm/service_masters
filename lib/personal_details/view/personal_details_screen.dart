import "package:service_masters/common/barrels.dart";

@RoutePage()
class PersonalDetailsScreen extends HookWidget {
  const PersonalDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey = useMemoized(GlobalKey<FormState>.new);
    final firstname = useTextEditingController();
    final lastname = useTextEditingController();
    final phone = useTextEditingController();

    return BlocConsumer<PersonalDetailsBloc, PersonalDetailsState>(
      listener: (context, state) {
        if (state.status.isInProgress) {
          showLoadingDialog(context);
        } else if (state.status.isSuccess) {
          Navigator.pop(context);
          context.router.push(const HomeRoute());
        } else if (state.status.isFailure) {
          Navigator.pop(context);

          ShowErrorSnackBar.showCustomSnackBar(
            context: context,
            content: state.errorMessage ?? "Sign Up Failure",
          );
        }
      },
      builder: (context, state) => Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(15),
            height: context.screenHeight,
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  const FormHeader(
                    subtitle: "Please enter your details to continue",
                    title: "Personal Details",
                  ),
                  const Spacer(),
                  CustomTextFormField(
                    key: const Key("signUpForm_firstNameInput_textField"),
                    autofillHints: const [AutofillHints.name],
                    controller: firstname,
                    onChanged: (firstname) =>
                        context.read<PersonalDetailsBloc>().add(
                              PersonalDetailsEvent.firstNameChanged(firstname),
                            ),
                    errorText: state.firstName.displayError != null
                        ? state.errorMessage
                        : null,
                    keyboardType: TextInputType.name,
                    hintText: "First Name",
                    labelText: "First Name",
                    prefixIcon: const Icon(CustomIcons.user),
                  ),
                  CustomTextFormField(
                    key: const Key("signUpForm_lastNameInput_textField"),
                    autofillHints: const [AutofillHints.name],
                    controller: lastname,
                    keyboardType: TextInputType.name,
                    onChanged: (lastname) => context
                        .read<PersonalDetailsBloc>()
                        .add(PersonalDetailsEvent.lastNameChanged(lastname)),
                    errorText: state.lastName.displayError != null
                        ? state.errorMessage
                        : null,
                    prefixIcon: const Icon(CustomIcons.user),
                    labelText: tLastName,
                    hintText: tLastName,
                  ),
                  CustomTextFormField(
                    key: const Key("signUpForm_phoneInput_textField"),
                    controller: phone,
                    keyboardType: TextInputType.phone,
                    onChanged: (phone) => context
                        .read<PersonalDetailsBloc>()
                        .add(PersonalDetailsEvent.phoneNumberChanged(phone)),
                    errorText: state.phoneNumber.displayError != null
                        ? state.errorMessage
                        : null,
                    prefixIcon: const Icon(CustomIcons.call),
                    labelText: tPhoneNo,
                    hintText: tPhoneNo,
                  ),
                  const Spacer(),
                  PrimaryButton(
                    key: const Key("signUpForm_continue_raisedButton"),
                    onPressed: () {
                      context.read<PersonalDetailsBloc>().add(
                            PersonalDetailsEvent.formSubmitted(
                              firstname: firstname.text,
                              lastname: lastname.text,
                              phoneNumber: phone.text,
                            ),
                          );
                    },
                    label: "Continue",
                    backgroundColor:
                        state.isValid ? tPrimaryColor : Colors.grey,
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
