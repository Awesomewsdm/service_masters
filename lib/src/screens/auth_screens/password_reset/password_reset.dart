import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/colors.dart';
import 'package:home_service_app/src/app/components/form/form_header.dart';
import 'package:home_service_app/src/app/input_decoration.dart';
import 'package:home_service_app/src/app/sizes.dart';
import 'package:home_service_app/src/app/text.dart';
import 'package:home_service_app/src/screens/auth_screens/sign_up_screen.dart';

class PasswordResetScreen extends StatelessWidget {
  PasswordResetScreen({Key? key}) : super(key: key);

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        height: double.infinity,
        width: double.infinity,
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: tFormHeight - 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Icon(Icons.arrow_back_ios_outlined),
              ),
              const FormHeader(
                subtitle: tForgetMailSubTitle,
                title: tForgetPasswordTitle,
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
              PrimaryButton(
                  onTap: () {},
                  color: tPrimaryColor,
                  label: tSendPasswordResetLink)
            ],
          ),
        ),
      ),
    ));
  }
}
