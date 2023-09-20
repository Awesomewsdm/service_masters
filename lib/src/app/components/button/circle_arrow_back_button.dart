
import 'package:flutter/material.dart';

class CircledArrowBackIcon extends StatelessWidget {
  const CircledArrowBackIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(100),
        ),
        child: const Icon(Icons.arrow_back_ios_outlined),
      ),
    );
  }
}