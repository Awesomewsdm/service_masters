import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/colors.dart';
import 'package:line_icons/line_icons.dart';

class IconWithBg extends StatelessWidget {
  const IconWithBg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: tAshColor, borderRadius: BorderRadius.circular(100)),
      child: const Icon(
        LineIcons.bell,
        size: 30,
      ),
    );
  }
}
