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
        height: 40,
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

class PrimaryButtonWithBorderColor extends StatelessWidget {
  const PrimaryButtonWithBorderColor({
    super.key,
    required this.onTap,
    this.color,
    required this.label,
    required this.borderColor,
  });
  final void Function() onTap;
  final Color? color;
  final String label;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
                color: tPrimaryColor,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
