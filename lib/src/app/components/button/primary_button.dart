import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.label,
    super.key,
    this.onPressed,
  });
  final void Function()? onPressed;
  final String label;
  // final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: size.width,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(Color(0xff4caf504)),
          padding: MaterialStatePropertyAll(
            EdgeInsets.symmetric(
              vertical: size.width / 25,
            ),
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: textTheme.titleSmall!.copyWith(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
