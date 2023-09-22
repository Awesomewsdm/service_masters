// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:home_service_app/src/app/colors.dart';
import 'package:home_service_app/src/app/sizes.dart';

class IconWithBg extends StatelessWidget {
  const IconWithBg({
    Key? key,
    required this.icon,
    this.backgroundHeight = iconBgWidth,
    this.backgroundWidth = iconBgHeight,
  }) : super(key: key);
  final IconData icon;
  final double backgroundHeight;
  final double backgroundWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: backgroundHeight,
      width: backgroundWidth,
      decoration: BoxDecoration(
          color: tAshColor, borderRadius: BorderRadius.circular(iconBgRadius)),
      child: Icon(
        icon,
        size: iconSize,
      ),
    );
  }
}
