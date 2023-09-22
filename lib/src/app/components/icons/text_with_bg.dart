import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/sizes.dart';

class IconWithBg extends StatelessWidget {
  const IconWithBg({
    Key? key,
    required this.icon,
    this.backgroundHeight = textBgHeight,
    this.backgroundWidth = textBgWidth,
    required this.bgColor,
    required this.label,
  }) : super(key: key);
  final IconData icon;
  final double backgroundHeight;
  final double backgroundWidth;
  final Color bgColor;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: backgroundHeight,
      width: backgroundWidth,
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(textBgRadius)),
      child: Text(label),
    );
  }
}
