import "package:service_masters/common/barrels.dart";
import "package:service_masters/personal_details/bloc/personal_details_bloc.dart";

@RoutePage()
class PersonalDetailsScreen extends StatelessWidget {
  const PersonalDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey = useMemoized(GlobalKey<FormState>.new);
    final firstname = useTextEditingController();
    final lastname = useTextEditingController();
    final phone = useTextEditingController();

    return LoadingOverlay(
      child: BlocConsumer<PersonalDetailsBloc, PersonalDetailsState>(
        listener: (context, state) {
          // if (state.status.isInProgress) {
          //   LoadingOverlay.of(context).show();
          // } else if (state.status.isSuccess) {
          //   LoadingOverlay.of(context).hide();
          //   context.router.push(const HomeRoute());
          // } else if (state.status.isFailure) {
          //   LoadingOverlay.of(context).hide();

          //   ShowErrorSnackBar.showCustomSnackBar(
          //     context: context,
          //     content: state.errorMessage ?? "Sign Up Failure",
          //   );
          // }
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
                      subtitle: tSignUpSubTitle,
                      title: tSignUpTitle,
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                    CustomTextFormField(
                      key: const Key("signUpForm_firstNameInput_textField"),
                      autofillHints: const [AutofillHints.name],
                      controller: firstname,
                      onChanged: (firstname) => context
                          .read<PersonalDetailsBloc>()
                          .add(
                            PersonalDetailsEvent.firstNameChanged(firstname),
                          ),
                      errorText: state.firstName.displayError != null
                          ? "Please enter a valid name"
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
                          ? "Please enter a valid name"
                          : null,
                      prefixIcon: const Icon(CustomIcons.user),
                      labelText: tLastName,
                      hintText: tLastName,
                    ),
                    CustomTextFormField(
                      key: const Key("signUpForm_emailInput_textField"),
                      autofillHints: const [AutofillHints.email],
                      controller: phone,
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (phone) => context
                          .read<PersonalDetailsBloc>()
                          .add(PersonalDetailsEvent.phoneNumberChanged(phone)),
                      errorText: state.phoneNumber.displayError != null
                          ? state.errorMessage
                          : null,
                      prefixIcon: const Icon(CustomIcons.envelope),
                      labelText: tEmail,
                      hintText: tEmail,
                    ),
                    const Spacer(),
                    PrimaryButton(
                      key: const Key("signUpForm_continue_raisedButton"),
                      onPressed: () {
                        // context.read<PersonalDetailsBloc>().add(
                        //       // SignUpFormSubmitted(
                        //       //   password: phone.text,
                        //       //   firstName: firstname.text,
                        //       //   lastName: lastname.text,
                        //       // ),
                        //     );
                      },
                      label: tSignup,
                      backgroundColor:
                          state.isValid ? tPrimaryColor : Colors.grey,
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                    const Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text("Or"),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(
                      flex: 2,
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
