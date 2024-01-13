import "package:service_masters/common/barrels.dart";

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.label,
    this.labelColor = tWhiteColor,
    this.borderColor = Colors.white,
    super.key,
    this.onPressed,
    this.backgroundColor = tPrimaryColor,
  });
  final void Function()? onPressed;
  final String label;
  final Color labelColor;
  final Color backgroundColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            backgroundColor,
          ),
          padding: const MaterialStatePropertyAll(
            EdgeInsets.symmetric(
              vertical: 12,
            ),
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              side: BorderSide(color: borderColor),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: context.textTheme.titleSmall!.copyWith(
            color: labelColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
