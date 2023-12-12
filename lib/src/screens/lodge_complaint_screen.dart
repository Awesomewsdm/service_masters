import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:home_service_app/src/utils/exports.dart';

class LodgeComplaintScreen extends StatelessWidget {
  const LodgeComplaintScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: tPrimaryColor,
        centerTitle: true,
        title: const PrimaryTextWidget(
          text: "Lodge Complaint",
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: const [
                  Text(
                    "Name",
                  ),
                  CustomTextField(
                    hintText: "Input name",
                  ),
                  Text("Email Address"),
                  CustomTextField(
                    hintText: "Input email address",
                  ),
                  Text("Subject"),
                  CustomTextField(
                    hintText: "Input subject",
                  ),
                  Text("Description"),
                  CustomTextField(
                    hintText: "Input description",
                    verticalContentPadding: 60,
                  ),
                ],
              ),
            ),
            PrimaryButton(
              label: "Submit compliant",
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, this.verticalContentPadding = 8.0});
  final String hintText;
  final double verticalContentPadding;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: null,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: tPrimaryColor),
        ),
        contentPadding: EdgeInsets.symmetric(
            vertical: verticalContentPadding, horizontal: 16.0),
      ),
    );
  }
}
