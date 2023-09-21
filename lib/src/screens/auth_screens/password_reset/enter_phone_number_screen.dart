import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/colors.dart';
import 'package:home_service_app/src/app/components/button/circle_arrow_back_button.dart';
import 'package:home_service_app/src/app/components/button/primary_button.dart';
import 'package:home_service_app/src/app/components/form/form_header.dart';
import 'package:home_service_app/src/app/input_decoration.dart';
import 'package:home_service_app/src/app/sizes.dart';
import 'package:home_service_app/src/app/text.dart';
import 'package:home_service_app/src/screens/auth_screens/login_screen.dart';

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
              const SizedBox(
                height: tFormHeight - 20,
              ),
              TextFormField(
                autofillHints: const [AutofillHints.email],
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter a valid email address";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(8.0),
                  prefixIcon: Icon(Icons.email_outlined),
                  labelText: tEmail,
                  hintText: tEmail,
                  border: kOutlineInputBorder,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              PrimaryButton(
                  onTap: () {},
                  color: tPrimaryColor,
                  label: tSendPasswordResetLink),
              const Spacer(),
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
