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
  final String icon;
  final MaterialStateProperty<Color?> backgroundColor;
  final void Function()? onPressed;
  final Color labelColor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: backgroundColor,
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
          Image.asset(
            icon,
            color: tPrimaryColor,
          ),
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
