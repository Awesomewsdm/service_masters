import "package:service_masters/common/barrels.dart";

class IconWithRoundBg extends StatelessWidget {
  const IconWithRoundBg({
    required this.icon,
    super.key,
    this.backgroundHeight = iconBgWidth,
    this.backgroundWidth = iconBgHeight,
    this.iconSize = 30.0,
    this.iconColor = tBlackColor,
    this.backgroundColor = tAshColor,
  });
  final IconData icon;
  final double backgroundHeight;
  final double backgroundWidth;

  final Color backgroundColor;
  final Color iconColor;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: backgroundHeight,
      width: backgroundWidth,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(iconBgRadius),
      ),
      child: Icon(
        icon,
        size: iconSize,
        color: iconColor,
      ),
    );
  }
}
