import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/colors.dart';
import 'package:home_service_app/src/app/components/text/primary_text_widget.dart';

class NofificationScreen extends StatelessWidget {
  const NofificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBar(
        actions: const [Icon(Icons.search)],
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: tPrimaryColor,
        title: const PrimaryTextWidget(
          text: "My Bookings",
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
