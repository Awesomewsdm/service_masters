import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.onTap,
    this.backgroundColor = tPrimaryColor,
    required this.label,
    this.borderColor = tWhiteColor,
    this.fontColor = tWhiteColor,
  });
  final void Function() onTap;
  final Color? backgroundColor;
  final String label;
  final Color borderColor;
  final Color? fontColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 45,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
                color: fontColor, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
