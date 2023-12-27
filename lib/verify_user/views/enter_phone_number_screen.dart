import 'package:home_service_app/common/barrels.dart';
import 'package:home_service_app/common/components/button/circle_arrow_back_button.dart';

class EnterPhoneScreen extends StatelessWidget {
  EnterPhoneScreen({Key? key}) : super(key: key);

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
                subtitle: tResetViaPhoneSubtitle,
                title: tResetViaPhone,
              ),
              const Spacer(),
              CustomTextFormField(
                autofillHints: const [AutofillHints.email],
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter a valid phone number";
                  } else {
                    return "null";
                  }
                },
                keyboardType: TextInputType.phone,
                prefixIcon: const Icon(Icons.phone),
                labelText: tPhoneNo,
                hintText: tPhoneNo,
              ),
              const Spacer(),
              PrimaryButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EnterEmailScreen(),
                      ),
                    );
                  },
                  label: tSendPasswordResetLink),
              const Spacer(
                flex: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(tRememberPassword),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      tLogin,
                      style: TextStyle(color: tPrimaryColor),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
