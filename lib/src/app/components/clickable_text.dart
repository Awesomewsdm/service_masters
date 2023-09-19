import 'package:flutter/material.dart';

class ClickableText extends StatelessWidget {
  const ClickableText({
    super.key,
    required this.text,
    required this.textColor, required this.onTap,
   
  });
  final String text;
  final Color textColor; final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ));
  }
}
