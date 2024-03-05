import "package:flutter_svg/flutter_svg.dart";
import "package:service_masters/common/barrels.dart";

class StatusWidget extends StatelessWidget {
  const StatusWidget({
    required this.message,
    required this.image,
    super.key,
    this.onTap,
  });
  final String message;
  final String image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: onTap,
          child: SvgPicture.asset(
            image,
            height: 200,
            width: 200,
          ),
        ),
        Center(
          child: Text(message),
        ),
      ],
    );
  }
}
