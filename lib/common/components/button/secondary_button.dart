import "package:service_masters/common/barrels.dart";

class SecondaryButtonWithIcon extends StatelessWidget {
  const SecondaryButtonWithIcon({
    required this.label,
    required this.backgroundColor,
    required this.icon,
    this.labelColor = Colors.white,
    super.key,
    this.onPressed,
  });
  final String label;
  final Widget icon;
  final WidgetStateProperty<Color?> backgroundColor;
  final void Function()? onPressed;
  final Color labelColor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: backgroundColor,
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(vertical: 16.0),
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(
              color: tPrimaryColor,
            ),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              label,
              style: context.textTheme.bodyLarge!.copyWith(color: labelColor),
            ),
          ),
        ],
      ),
    );
  }
}
