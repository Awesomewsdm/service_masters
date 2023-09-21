import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/colors.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    super.key,
    required this.image,
    required this.label,
    this.backgroundColor,
    required this.width,
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
        icon: Image(image: AssetImage(image), width: width),
        label: Text(
          label,
          style: const TextStyle(color: tPrimaryColor),
        ),
      ),
    );
  }
}
