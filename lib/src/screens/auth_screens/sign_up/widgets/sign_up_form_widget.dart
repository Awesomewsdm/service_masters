import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/input_decoration.dart';
import 'package:home_service_app/src/app/sizes.dart';
import 'package:home_service_app/src/app/text.dart';

class SignUpFormWidget extends StatefulWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpFormWidget> createState() => _SignUpFormWidgetState();
}

class _SignUpFormWidgetState extends State<SignUpFormWidget> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: tFormHeight - 10,
      ),
      child: Form(
        key: _formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              autofillHints: const [AutofillHints.name],
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter a valid name";
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(8.0),
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: tFullName,
                hintText: tFullName,
                border: kOutlineInputBorder,
              ),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter a valid $tStudentID";
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(8.0),
                prefixIcon: Icon(Icons.credit_card_outlined),
                labelText: tStudentID,
                hintText: tStudentID,
                border: kOutlineInputBorder,
              ),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              autofillHints: const [AutofillHints.telephoneNumber],
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter a valid phone number";
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(8.0),
                prefixIcon: Icon(Icons.call),
                labelText: tPhoneNo,
                hintText: tPhoneNo,
                border: kOutlineInputBorder,
              ),
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
              height: tFormHeight - 20,
            ),
            TextFormField(
              autofillHints: const [AutofillHints.newPassword],
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter a valid password";
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(8.0),
                prefixIcon: const Icon(Icons.lock_outline_rounded),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.visibility_off_outlined),
                  onPressed: () {},
                ),
                labelText: tPassword,
                hintText: tPassword,
                border: kOutlineInputBorder,
              ),
            ),

            const SizedBox(
              height: 20.0,
            ), //
            const SizedBox(
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
