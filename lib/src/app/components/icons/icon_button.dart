import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/colors.dart';
import 'package:home_service_app/src/app/sizes.dart';

class IconWithBg extends StatelessWidget {
  const IconWithBg({
    super.key,
    required this.icon,
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: iconBgHeight,
      width: iconBgWidth,
      decoration: BoxDecoration(
          color: tAshColor, borderRadius: BorderRadius.circular(iconBgRadius)),
      child: Icon(
        icon,
        size: iconSize,
      ),
    );
  }
}
