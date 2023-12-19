// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:home_service_app/src/app/colors.dart';
import 'package:home_service_app/src/app/sizes.dart';

class IconWithRoundBg extends StatelessWidget {
  const IconWithRoundBg({
    Key? key,
    required this.icon,
    this.backgroundHeight = iconBgWidth,
    this.backgroundWidth = iconBgHeight,
    this.iconSize = 30.0,
    this.iconColor = tBlackColor,
    this.backgroundColor = tAshColor,
  }) : super(key: key);
  final IconData icon;
  final double backgroundHeight, backgroundWidth;

  final Color backgroundColor, iconColor;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: backgroundHeight,
      width: backgroundWidth,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(iconBgRadius)),
      child: Icon(
        icon,
        size: iconSize,
        color: iconColor,
      ),
    );
  }
}
