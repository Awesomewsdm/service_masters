import "package:flutter/material.dart";

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({
    required this.imageString,
    required this.height,
    required this.width,
    super.key,
    this.border,
  });
  final String imageString;
  final double height;
  final double width;
  final Border? border;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: border,
      ),
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(imageString, fit: BoxFit.cover),
      ),
    );
  }
}
