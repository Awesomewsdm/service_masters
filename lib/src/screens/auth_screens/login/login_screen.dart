import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/components/form/form_header.dart';
import 'package:home_service_app/src/app/sizes.dart';
import 'package:home_service_app/src/app/text.dart';
import 'login_footer_widget.dart';
import 'login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormHeader(
                title: tLoginTitle,
                subtitle: tLoginSubTitle,
              ),
              LoginFormWidget(),
              SizedBox(
                height: 20.0,
              ),
              LoginFooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
