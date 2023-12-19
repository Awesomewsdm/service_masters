import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/colors.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    super.key,
    required this.image,
    required this.label,
    this.backgroundColor,
    this.width = 30,
  });
  final String image;
  final String label;
  final Color? backgroundColor;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton.icon(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(5.0),
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        icon: Image(image: AssetImage(image), width: width),
        label: Text(
          label,
          style: const TextStyle(color: tPrimaryColor),
        ),
      ),
    );
  }
}
